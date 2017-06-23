; ModuleID = 'testScript0.prelto.bc'
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

; <label>:6                                       ; preds = %30, %0
  %i.0 = phi i32 [ 0, %0 ], [ %31, %30 ]
  %7 = icmp slt i32 %i.0, 5
  br i1 %7, label %8, label %32

; <label>:8                                       ; preds = %6
  br label %9

; <label>:9                                       ; preds = %27, %8
  %j.0 = phi i32 [ 0, %8 ], [ %28, %27 ]
  %10 = icmp slt i32 %j.0, 3
  br i1 %10, label %11, label %29

; <label>:11                                      ; preds = %9
  br label %12

; <label>:12                                      ; preds = %24, %11
  %k.0 = phi i32 [ 0, %11 ], [ %25, %24 ]
  %13 = icmp slt i32 %k.0, 6
  br i1 %13, label %14, label %26

; <label>:14                                      ; preds = %12
  %15 = getelementptr inbounds [5 x [3 x [6 x i32]]]* @g_5, i32 0, i32 %i.0
  %16 = getelementptr inbounds [3 x [6 x i32]]* %15, i32 0, i32 %j.0
  %17 = getelementptr inbounds [6 x i32]* %16, i32 0, i32 %k.0
  %18 = load i32* %17, align 4
  %19 = sext i32 %18 to i64
  call void @transparent_crc(i64 %19, i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i32 0) #3
  %20 = icmp ne i32 0, 0
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %14
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0), i32 %i.0, i32 %j.0, i32 %k.0) #3
  br label %23

; <label>:23                                      ; preds = %21, %14
  br label %24

; <label>:24                                      ; preds = %23
  %25 = add nsw i32 %k.0, 1
  br label %12

; <label>:26                                      ; preds = %12
  br label %27

; <label>:27                                      ; preds = %26
  %28 = add nsw i32 %j.0, 1
  br label %9

; <label>:29                                      ; preds = %9
  br label %30

; <label>:30                                      ; preds = %29
  %31 = add nsw i32 %i.0, 1
  br label %6

; <label>:32                                      ; preds = %6
  %33 = load i32* @crc32_context, align 4
  %34 = xor i32 %33, -1
  %35 = call i32 @platform_main_end(i32 %34, i32 0) #3
  ret i32 %35
}

; Function Attrs: noinline nounwind
define internal void @platform_main_begin() #0 {
  ret void
}

; Function Attrs: noinline nounwind
define internal void @crc32_gentab() #0 {
  br label %1

; <label>:1                                       ; preds = %19, %0
  %i.0 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %2 = icmp slt i32 %i.0, 256
  br i1 %2, label %3, label %21

; <label>:3                                       ; preds = %1
  br label %4

; <label>:4                                       ; preds = %15, %3
  %j.0 = phi i32 [ 8, %3 ], [ %16, %15 ]
  %crc.0 = phi i32 [ %i.0, %3 ], [ %crc.1, %15 ]
  %5 = icmp sgt i32 %j.0, 0
  br i1 %5, label %6, label %17

; <label>:6                                       ; preds = %4
  %7 = and i32 %crc.0, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6
  %10 = lshr i32 %crc.0, 1
  %11 = xor i32 %10, -306674912
  br label %14

; <label>:12                                      ; preds = %6
  %13 = lshr i32 %crc.0, 1
  br label %14

; <label>:14                                      ; preds = %12, %9
  %crc.1 = phi i32 [ %11, %9 ], [ %13, %12 ]
  br label %15

; <label>:15                                      ; preds = %14
  %16 = add nsw i32 %j.0, -1
  br label %4

; <label>:17                                      ; preds = %4
  %18 = getelementptr inbounds [256 x i32]* @crc32_tab, i32 0, i32 %i.0
  store i32 %crc.0, i32* %18, align 4
  br label %19

; <label>:19                                      ; preds = %17
  %20 = add nsw i32 %i.0, 1
  br label %1

; <label>:21                                      ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @func_1() #0 {
  %l_2 = alloca [3 x [2 x [5 x i32]]], align 4
  %1 = bitcast [3 x [2 x [5 x i32]]]* %l_2 to i8*
  call void @legup_memcpy_4(i8* %1, i8* bitcast ([3 x [2 x [5 x i32]]]* @func_1.l_2 to i8*), i32 120)
  store i32 0, i32* @g_3, align 4
  br label %2

; <label>:2                                       ; preds = %28, %0
  %3 = load i32* @g_3, align 4
  %4 = icmp slt i32 %3, 3
  br i1 %4, label %5, label %31

; <label>:5                                       ; preds = %2
  store i32 0, i32* @g_4, align 4
  br label %6

; <label>:6                                       ; preds = %24, %5
  %7 = load i32* @g_4, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %27

; <label>:9                                       ; preds = %6
  store i32 0, i32* getelementptr inbounds ([5 x [3 x [6 x i32]]]* @g_5, i32 0, i32 1, i32 1, i32 5), align 4
  br label %10

; <label>:10                                      ; preds = %20, %9
  %11 = load i32* getelementptr inbounds ([5 x [3 x [6 x i32]]]* @g_5, i32 0, i32 1, i32 1, i32 5), align 4
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %13, label %23

; <label>:13                                      ; preds = %10
  %14 = load i32* getelementptr inbounds ([5 x [3 x [6 x i32]]]* @g_5, i32 0, i32 1, i32 1, i32 5), align 4
  %15 = load i32* @g_4, align 4
  %16 = load i32* @g_3, align 4
  %17 = getelementptr inbounds [3 x [2 x [5 x i32]]]* %l_2, i32 0, i32 %16
  %18 = getelementptr inbounds [2 x [5 x i32]]* %17, i32 0, i32 %15
  %19 = getelementptr inbounds [5 x i32]* %18, i32 0, i32 %14
  store i32 581676169, i32* %19, align 4
  br label %20

; <label>:20                                      ; preds = %13
  %21 = load i32* getelementptr inbounds ([5 x [3 x [6 x i32]]]* @g_5, i32 0, i32 1, i32 1, i32 5), align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* getelementptr inbounds ([5 x [3 x [6 x i32]]]* @g_5, i32 0, i32 1, i32 1, i32 5), align 4
  br label %10

; <label>:23                                      ; preds = %10
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load i32* @g_4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @g_4, align 4
  br label %6

; <label>:27                                      ; preds = %6
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i32* @g_3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @g_3, align 4
  br label %2

; <label>:31                                      ; preds = %2
  %32 = getelementptr inbounds [3 x [2 x [5 x i32]]]* %l_2, i32 0, i32 2
  %33 = getelementptr inbounds [2 x [5 x i32]]* %32, i32 0, i32 0
  %34 = getelementptr inbounds [5 x i32]* %33, i32 0, i32 2
  %35 = load i32* %34, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #3
  %1 = icmp ne i32 %flag, 0
  br i1 %1, label %2, label %6

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str5, i32 0, i32 0), i8* %vname, i32 %4) #3
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0), i32 %crc) #3
  ret i32 %crc
}

; Function Attrs: noinline nounwind
define internal void @crc32_8bytes(i64 %val) #0 {
  %1 = lshr i64 %val, 0
  %2 = and i64 %1, 255
  %3 = trunc i64 %2 to i8
  call void @crc32_byte(i8 zeroext %3) #3
  %4 = lshr i64 %val, 8
  %5 = and i64 %4, 255
  %6 = trunc i64 %5 to i8
  call void @crc32_byte(i8 zeroext %6) #3
  %7 = lshr i64 %val, 16
  %8 = and i64 %7, 255
  %9 = trunc i64 %8 to i8
  call void @crc32_byte(i8 zeroext %9) #3
  %10 = lshr i64 %val, 24
  %11 = and i64 %10, 255
  %12 = trunc i64 %11 to i8
  call void @crc32_byte(i8 zeroext %12) #3
  %13 = lshr i64 %val, 32
  %14 = and i64 %13, 255
  %15 = trunc i64 %14 to i8
  call void @crc32_byte(i8 zeroext %15) #3
  %16 = lshr i64 %val, 40
  %17 = and i64 %16, 255
  %18 = trunc i64 %17 to i8
  call void @crc32_byte(i8 zeroext %18) #3
  %19 = lshr i64 %val, 48
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  call void @crc32_byte(i8 zeroext %21) #3
  %22 = lshr i64 %val, 56
  %23 = and i64 %22, 255
  %24 = trunc i64 %23 to i8
  call void @crc32_byte(i8 zeroext %24) #3
  ret void
}

; Function Attrs: noinline nounwind
define internal void @crc32_byte(i8 zeroext %b) #0 {
  %1 = load i32* @crc32_context, align 4
  %2 = lshr i32 %1, 8
  %3 = and i32 %2, 16777215
  %4 = load i32* @crc32_context, align 4
  %5 = zext i8 %b to i32
  %6 = xor i32 %4, %5
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds [256 x i32]* @crc32_tab, i32 0, i32 %7
  %9 = load i32* %8, align 4
  %10 = xor i32 %3, %9
  store i32 %10, i32* @crc32_context, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

declare void @legup_memcpy_4(i8*, i8*, i32)

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
