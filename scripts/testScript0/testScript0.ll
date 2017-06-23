; ModuleID = 'testScript0.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@g_3 = internal global i32 1831765384, align 4
@.str = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_4 = internal global i32 9, align 4
@.str1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_5 = internal global [5 x [3 x [6 x i32]]] [[3 x [6 x i32]] [[6 x i32] [i32 103435029, i32 803739424, i32 -1, i32 377235658, i32 303236908, i32 -1], [6 x i32] [i32 103435029, i32 -1, i32 377235658, i32 -84905465, i32 1220821995, i32 104686240], [6 x i32] [i32 1, i32 0, i32 103435029, i32 1, i32 238974513, i32 103435029]], [3 x [6 x i32]] [[6 x i32] [i32 377235658, i32 0, i32 -1377410565, i32 1, i32 1220821995, i32 1], [6 x i32] [i32 -1, i32 -1, i32 -84905465, i32 -1377410565, i32 303236908, i32 -1377410565], [6 x i32] [i32 -84905465, i32 803739424, i32 -84905465, i32 104686240, i32 0, i32 1]], [3 x [6 x i32]] [[6 x i32] [i32 3, i32 1203468982, i32 -1377410565, i32 1, i32 8, i32 103435029], [6 x i32] [i32 1, i32 8, i32 103435029, i32 1, i32 -1, i32 1], [6 x i32] [i32 0, i32 103435029, i32 1362911687, i32 1, i32 1, i32 -1214585609]], [3 x [6 x i32]] [[6 x i32] [i32 -10, i32 -1, i32 164513122, i32 -1, i32 1, i32 -1], [6 x i32] [i32 -1214585609, i32 103435029, i32 1721791843, i32 1, i32 -1, i32 1362911687], [6 x i32] [i32 1362911687, i32 1, i32 1791725355, i32 1791725355, i32 1, i32 1362911687]], [3 x [6 x i32]] [[6 x i32] [i32 1, i32 -674517365, i32 1721791843, i32 -10, i32 -1377410565, i32 -1], [6 x i32] [i32 367536809, i32 1, i32 164513122, i32 1362911687, i32 3, i32 -1214585609], [6 x i32] [i32 367536809, i32 1770444507, i32 1362911687, i32 -10, i32 -1, i32 1]]], align 4
@.str2 = private unnamed_addr constant [13 x i8] c"g_5[i][j][k]\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@crc32_context = internal global i32 -1, align 4
@.str4 = private unnamed_addr constant [15 x i8] c"checksum = %u\0A\00", align 1
@.str5 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@crc32_tab = internal global [256 x i32] zeroinitializer, align 4
@func_1.l_2 = private unnamed_addr constant [3 x [2 x [5 x i32]]] [[2 x [5 x i32]] [[5 x i32] [i32 -7, i32 1899644734, i32 950756765, i32 950756765, i32 1899644734], [5 x i32] [i32 2, i32 -6, i32 1, i32 1, i32 -6]], [2 x [5 x i32]] [[5 x i32] [i32 -7, i32 1899644734, i32 950756765, i32 950756765, i32 1899644734], [5 x i32] [i32 2, i32 -6, i32 1, i32 1, i32 -6]], [2 x [5 x i32]] [[5 x i32] [i32 -7, i32 1899644734, i32 950756765, i32 950756765, i32 1899644734], [5 x i32] [i32 2, i32 -6, i32 1, i32 1, i32 -6]]], align 4

; Function Attrs: noinline nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @platform_main_begin() #3
  call void @crc32_gentab() #3
  %1 = call i32 @func_1() #3
  %2 = load i32* @g_3, align 4
  %3 = sext i32 %2 to i64
  call void @transparent_crc(i64 %3, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 0) #3
  %4 = load i32* @g_4, align 4
  %5 = sext i32 %4 to i64
  call void @transparent_crc(i64 %5, i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 0) #3
  br label %6

; <label>:6                                       ; preds = %25, %0
  %7 = phi i32 [ 0, %0 ], [ %26, %25 ]
  %exitcond3 = icmp eq i32 %7, 5
  br i1 %exitcond3, label %27, label %8

; <label>:8                                       ; preds = %6
  br label %9

; <label>:9                                       ; preds = %22, %8
  %10 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %exitcond1 = icmp eq i32 %10, 3
  br i1 %exitcond1, label %24, label %11

; <label>:11                                      ; preds = %9
  br label %12

; <label>:12                                      ; preds = %19, %11
  %13 = phi i32 [ 0, %11 ], [ %20, %19 ]
  %exitcond = icmp eq i32 %13, 6
  br i1 %exitcond, label %21, label %14

; <label>:14                                      ; preds = %12
  %scevgep = getelementptr [5 x [3 x [6 x i32]]]* @g_5, i32 0, i32 %7, i32 %10, i32 %13
  %15 = load i32* %scevgep, align 4
  %16 = sext i32 %15 to i64
  call void @transparent_crc(i64 %16, i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i32 0) #3
  br i1 false, label %17, label %18

; <label>:17                                      ; preds = %14
  br label %18

; <label>:18                                      ; preds = %17, %14
  br label %19

; <label>:19                                      ; preds = %18
  %20 = add nsw i32 %13, 1
  br label %12

; <label>:21                                      ; preds = %12
  br label %22

; <label>:22                                      ; preds = %21
  %23 = add nsw i32 %10, 1
  br label %9

; <label>:24                                      ; preds = %9
  br label %25

; <label>:25                                      ; preds = %24
  %26 = add nsw i32 %7, 1
  br label %6

; <label>:27                                      ; preds = %6
  %28 = load i32* @crc32_context, align 4
  %29 = xor i32 %28, -1
  %30 = call i32 @platform_main_end(i32 %29, i32 0) #3
  ret i32 %30
}

; Function Attrs: noinline nounwind
define internal void @platform_main_begin() #0 {
  ret void
}

; Function Attrs: noinline nounwind
define internal void @crc32_gentab() #0 {
  br label %1

; <label>:1                                       ; preds = %16, %0
  %2 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %scevgep = getelementptr [256 x i32]* @crc32_tab, i32 0, i32 %2
  %exitcond1 = icmp eq i32 %2, 256
  br i1 %exitcond1, label %18, label %3

; <label>:3                                       ; preds = %1
  br label %4

; <label>:4                                       ; preds = %14, %3
  %indvar = phi i32 [ %indvar.next, %14 ], [ 0, %3 ]
  %crc.0 = phi i32 [ %crc.1, %14 ], [ %2, %3 ]
  %exitcond = icmp eq i32 %indvar, 8
  br i1 %exitcond, label %15, label %5

; <label>:5                                       ; preds = %4
  %6 = and i32 %crc.0, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %5
  %9 = lshr i32 %crc.0, 1
  %10 = xor i32 %9, -306674912
  br label %13

; <label>:11                                      ; preds = %5
  %12 = lshr i32 %crc.0, 1
  br label %13

; <label>:13                                      ; preds = %11, %8
  %crc.1 = phi i32 [ %10, %8 ], [ %12, %11 ]
  br label %14

; <label>:14                                      ; preds = %13
  %indvar.next = add i32 %indvar, 1
  br label %4

; <label>:15                                      ; preds = %4
  store i32 %crc.0, i32* %scevgep, align 4
  br label %16

; <label>:16                                      ; preds = %15
  %17 = add nsw i32 %2, 1
  br label %1

; <label>:18                                      ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @func_1() #0 {
  %l_2 = alloca [3 x [2 x [5 x i32]]], align 4
  %1 = bitcast [3 x [2 x [5 x i32]]]* %l_2 to i8*
  call void @legup_memcpy_4(i8* %1, i8* bitcast ([3 x [2 x [5 x i32]]]* @func_1.l_2 to i8*), i32 120)
  br label %2

; <label>:2                                       ; preds = %23, %0
  %storemerge = phi i32 [ 0, %0 ], [ %25, %23 ]
  store i32 %storemerge, i32* @g_3, align 4
  %3 = icmp slt i32 %storemerge, 3
  br i1 %3, label %4, label %26

; <label>:4                                       ; preds = %2
  br label %5

; <label>:5                                       ; preds = %19, %4
  %storemerge1 = phi i32 [ 0, %4 ], [ %21, %19 ]
  store i32 %storemerge1, i32* @g_4, align 4
  %6 = icmp slt i32 %storemerge1, 2
  br i1 %6, label %7, label %22

; <label>:7                                       ; preds = %5
  br label %8

; <label>:8                                       ; preds = %15, %7
  %storemerge2 = phi i32 [ 0, %7 ], [ %17, %15 ]
  store i32 %storemerge2, i32* getelementptr inbounds ([5 x [3 x [6 x i32]]]* @g_5, i32 0, i32 1, i32 1, i32 5), align 4
  %9 = icmp slt i32 %storemerge2, 5
  br i1 %9, label %10, label %18

; <label>:10                                      ; preds = %8
  %11 = load i32* getelementptr inbounds ([5 x [3 x [6 x i32]]]* @g_5, i32 0, i32 1, i32 1, i32 5), align 4
  %12 = load i32* @g_4, align 4
  %13 = load i32* @g_3, align 4
  %14 = getelementptr inbounds [3 x [2 x [5 x i32]]]* %l_2, i32 0, i32 %13, i32 %12, i32 %11
  store i32 581676169, i32* %14, align 4
  br label %15

; <label>:15                                      ; preds = %10
  %16 = load i32* getelementptr inbounds ([5 x [3 x [6 x i32]]]* @g_5, i32 0, i32 1, i32 1, i32 5), align 4
  %17 = add nsw i32 %16, 1
  br label %8

; <label>:18                                      ; preds = %8
  br label %19

; <label>:19                                      ; preds = %18
  %20 = load i32* @g_4, align 4
  %21 = add nsw i32 %20, 1
  br label %5

; <label>:22                                      ; preds = %5
  br label %23

; <label>:23                                      ; preds = %22
  %24 = load i32* @g_3, align 4
  %25 = add nsw i32 %24, 1
  br label %2

; <label>:26                                      ; preds = %2
  %27 = getelementptr inbounds [3 x [2 x [5 x i32]]]* %l_2, i32 0, i32 2, i32 0, i32 2
  %28 = load i32* %27, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #3
  %1 = icmp eq i32 %flag, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str5, i32 0, i32 0), i8* %vname, i32 %4) #4
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0), i32 %crc) #4
  ret i32 %crc
}

; Function Attrs: noinline nounwind
define internal void @crc32_8bytes(i64 %val) #0 {
  %1 = trunc i64 %val to i8
  call void @crc32_byte(i8 zeroext %1) #3
  %2 = lshr i64 %val, 8
  %3 = trunc i64 %2 to i8
  call void @crc32_byte(i8 zeroext %3) #3
  %4 = lshr i64 %val, 16
  %5 = trunc i64 %4 to i8
  call void @crc32_byte(i8 zeroext %5) #3
  %6 = lshr i64 %val, 24
  %7 = trunc i64 %6 to i8
  call void @crc32_byte(i8 zeroext %7) #3
  %8 = lshr i64 %val, 32
  %9 = trunc i64 %8 to i8
  call void @crc32_byte(i8 zeroext %9) #3
  %10 = lshr i64 %val, 40
  %11 = trunc i64 %10 to i8
  call void @crc32_byte(i8 zeroext %11) #3
  %12 = lshr i64 %val, 48
  %13 = trunc i64 %12 to i8
  call void @crc32_byte(i8 zeroext %13) #3
  %14 = lshr i64 %val, 56
  %15 = trunc i64 %14 to i8
  call void @crc32_byte(i8 zeroext %15) #3
  ret void
}

; Function Attrs: noinline nounwind
define internal void @crc32_byte(i8 zeroext %b) #0 {
  %1 = load i32* @crc32_context, align 4
  %2 = lshr i32 %1, 8
  %3 = zext i8 %b to i32
  %.masked = and i32 %1, 255
  %4 = xor i32 %.masked, %3
  %5 = getelementptr inbounds [256 x i32]* @crc32_tab, i32 0, i32 %4
  %6 = load i32* %5, align 4
  %7 = xor i32 %2, %6
  store i32 %7, i32* @crc32_context, align 4
  ret void
}

; Function Attrs: nounwind
define internal void @legup_memcpy_4(i8* %d, i8* %s, i32 %n) #2 {
  %1 = alloca i32, align 4
  %dt = alloca i32*, align 4
  %st = alloca i32*, align 4
  store i32 %n, i32* %1, align 4
  %2 = bitcast i8* %d to i32*
  store i32* %2, i32** %dt, align 4
  %3 = bitcast i8* %s to i32*
  store i32* %3, i32** %st, align 4
  %4 = lshr i32 %n, 2
  store i32 %4, i32* %1, align 4
  br label %5

; <label>:5                                       ; preds = %9, %0
  %6 = load i32* %1, align 4
  %7 = add i32 %6, -1
  store i32 %7, i32* %1, align 4
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %5
  %10 = load i32** %st, align 4
  %11 = getelementptr inbounds i32* %10, i32 1
  store i32* %11, i32** %st, align 4
  %12 = load i32* %10, align 4
  %13 = load i32** %dt, align 4
  %14 = getelementptr inbounds i32* %13, i32 1
  store i32* %14, i32** %dt, align 4
  store i32 %12, i32* %13, align 4
  br label %5

; <label>:15                                      ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }
attributes #4 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
