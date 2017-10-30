#csmith-stuff
The script executes csmith with no structs, no pointers, no math64 (64bit operations), no unions, and a max of 4 functions (this makes it easier to generate the c programs of a certain size). The execution of csmith produces a random c file of pretty small size that are then compiled with its runtime files. The output of the executable is then compared to the output of the verilog simulation, which has been the same in every case that make v and the execution have been completed successfully. 
Csmith's files have been changed so that the generated programs return their checksum rather than 0 (their original form) as well (changing the platform_generic.h file in runtime (For the generated program), and OutputMgr.cpp in csmith's src files).

filepaths:

Analysis.cpp lib/Analysis/Analysis.cpp

Passes.h include/llvm/Analysis/Passes.h

GlobalVarPass.cpp lib/Analysis/GlobalVarPass.cpp
