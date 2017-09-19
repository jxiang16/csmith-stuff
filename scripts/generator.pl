#!/usr/bin/perl -w
use File::stat;
use strict;
use Tie::File;
$ENV{"CSMITH_HOME"} = "/home/legup/legup-4.0/examples/csmith-2.2.0";
my $CSMITH_HOME = $ENV{"CSMITH_HOME"}; 
#my $CSMITH_USER_OPTIONS = " --no-structs --no-math64 --max-funcs 1 --no-arrays --no-pointers"; 
my $CSMITH_USER_OPTIONS = " --no-structs --no-pointers --no-math64 --max-funcs 4 --no-unions";
my $MAKE_TIMEOUT = 300; 
my $PROG_TIMEOUT = 10;
my $csmith_bug = 0;
my $MAX_SIZE = 8500;
my $MIN_SIZE = 3000;
my $sumString = "checksum = ";
my $len = length($sumString);
sub test_one ($) {
    (my $n) = @_;
    $n += 3014;
    chdir "$CSMITH_HOME/scripts";
    my $folder = "$n";
    my $cfile = "$folder.c";
    my $seed;
    my $filesize;
    my @outputLines;
    #my $tempoFile;
	
    my $cmd = "$CSMITH_HOME/scripts/csmith $CSMITH_USER_OPTIONS --output $cfile";
    # run Csmith until generate a big enough program
    while (1) {
	system "$cmd";

	$filesize = -s "$CSMITH_HOME/scripts/$cfile";
        last if ($filesize >= $MIN_SIZE && $filesize <= $MAX_SIZE);
    }		
	open (my $STDOLD, '>&', STDOUT);
	system "mkdir $folder";
	system "cp -r skeleton/* $folder";
	system "mv $cfile $folder";
	do {
	my $file = "$folder/Makefile";
	open (FILE, "<$file") or die "Can't open $file: $!\n";
	my @lines = <FILE>;
	close FILE;
	open (STDOUT, ">$file") or die "Can't open $file: $!\n";
	for (@lines) {
	s/hi0/$folder/;
	print;
	}	
	open (STDOUT, '>&', $STDOLD);
	};
	chdir $folder;
	system "make $folder > warnings.txt";

	#check for timeout
	eval {
		local $SIG{ALRM} = sub {die "alarm\n" };
		alarm $PROG_TIMEOUT;
		system "timeout 10s ./$folder > execOutput.txt";
		
		alarm 0;
	};
	if ($@) {
		die unless $@ eq "alarm\n";
		system "touch ExecTimeOut.txt";
		chdir "..";
		system "mv $folder ../fails";
		return
	} else {
		
		system "make > makeOutput.txt";
		#check if taking too long for simulation
		eval {
			local $SIG{ALRM} = sub{die "alarm\n"};
			alarm $MAKE_TIMEOUT;
			system "timeout 300s make v > makevOutput.txt";
			alarm 0;
		};
		if ($@) {
			die unless $@ eq "alarm\n";
			system "touch SimTimeOut.txt";
			chdir "..";
			system "mv $folder ../fails";
			return
		} else {

		#read the output of execution
		open (my $tempFile, '<', "execOutput.txt");
		my $firstLine = <$tempFile>;
		close $tempFile;
		chomp $firstLine;
		my $softOutput = substr($firstLine, $len);
		print "softOutput $softOutput\n";


		
		tie @outputLines, 'Tie::File', "makevOutput.txt";
		my $line = $outputLines[-6];
		my $subs = "_val=";
		my $ind = index($line, $subs);
		my $output = substr($line, $ind + 5);
		chomp $output;
		print "output $output\n";
		my $correct = $output == $softOutput;
		print "hello $correct\n";
		my $destination;
		system "touch output.txt";
		open (my $tempoFile, '>', "output.txt");
		print $tempoFile "$softOutput";
		close $tempoFile;
		if ($correct == 1) {
			$destination = "$CSMITH_HOME/files";
			system "scp $cfile qijing.huang\@jaketown.millennium.berkeley.edu:/scratch/qijing.huang/hls_files/dataset/skeleton";
		} else {
			$destination = "../../fails";
		}
		#chdir "..";
		
		system "mv $cfile $destination";
	#	chdir "..";
	#	system "rm -r $folder";
	

		return;
		}
	}
}


my $cnt = $ARGV[0];

my $i = 0;
while ($i < $cnt) {
    test_one ($i);
    $i++;
} 

