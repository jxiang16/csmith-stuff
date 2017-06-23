; ModuleID = 'testScript0.prelto.1.bc'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %checksum = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 4
  store i32 0, i32* %print_hash_value, align 4
  call void @platform_main_begin() #3
  call void @crc32_gentab() #3
  %4 = call i32 @func_1() #3
  %5 = load i32* @g_3, align 4
  %6 = sext i32 %5 to i64
  %7 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %6, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %7) #3
  %8 = load i32* @g_4, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %9, i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %10) #3
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %48, %0
  %12 = load i32* %i, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %51

; <label>:14                                      ; preds = %11
  store i32 0, i32* %j, align 4
  br label %15

; <label>:15                                      ; preds = %44, %14
  %16 = load i32* %j, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %47

; <label>:18                                      ; preds = %15
  store i32 0, i32* %k, align 4
  br label %19

; <label>:19                                      ; preds = %40, %18
  %20 = load i32* %k, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %43

; <label>:22                                      ; preds = %19
  %23 = load i32* %k, align 4
  %24 = load i32* %j, align 4
  %25 = load i32* %i, align 4
  %26 = getelementptr inbounds [5 x [3 x [6 x i32]]]* @g_5, i32 0, i32 %25
  %27 = getelementptr inbounds [3 x [6 x i32]]* %26, i32 0, i32 %24
  %28 = getelementptr inbounds [6 x i32]* %27, i32 0, i32 %23
  %29 = load i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %30, i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i32 %31) #3
  %32 = load i32* %print_hash_value, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

; <label>:34                                      ; preds = %22
  %35 = load i32* %i, align 4
  %36 = load i32* %j, align 4
  %37 = load i32* %k, align 4
  %38 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0), i32 %35, i32 %36, i32 %37) #3
  br label %39

; <label>:39                                      ; preds = %34, %22
  br label %40

; <label>:40                                      ; preds = %39
  %41 = load i32* %k, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %k, align 4
  br label %19

; <label>:43                                      ; preds = %19
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load i32* %j, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %j, align 4
  br label %15

; <label>:47                                      ; preds = %15
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load i32* %i, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i, align 4
  br label %11

; <label>:51                                      ; preds = %11
  %52 = load i32* @crc32_context, align 4
  %53 = xor i32 %52, -1
  %54 = load i32* %print_hash_value, align 4
  %55 = call i32 @platform_main_end(i32 %53, i32 %54) #3
  store i32 %55, i32* %checksum, align 4
  %56 = load i32* %checksum, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind
define internal void @platform_main_begin() #0 {
  ret void
}

; Function Attrs: noinline nounwind
define internal void @crc32_gentab() #0 {
  %crc = alloca i32, align 4
  %poly = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 -306674912, i32* %poly, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %28, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 256
  br i1 %3, label %4, label %31

; <label>:4                                       ; preds = %1
  %5 = load i32* %i, align 4
  store i32 %5, i32* %crc, align 4
  store i32 8, i32* %j, align 4
  br label %6

; <label>:6                                       ; preds = %21, %4
  %7 = load i32* %j, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %24

; <label>:9                                       ; preds = %6
  %10 = load i32* %crc, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %9
  %14 = load i32* %crc, align 4
  %15 = lshr i32 %14, 1
  %16 = xor i32 %15, -306674912
  store i32 %16, i32* %crc, align 4
  br label %20

; <label>:17                                      ; preds = %9
  %18 = load i32* %crc, align 4
  %19 = lshr i32 %18, 1
  store i32 %19, i32* %crc, align 4
  br label %20

; <label>:20                                      ; preds = %17, %13
  br label %21

; <label>:21                                      ; preds = %20
  %22 = load i32* %j, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %j, align 4
  br label %6

; <label>:24                                      ; preds = %6
  %25 = load i32* %crc, align 4
  %26 = load i32* %i, align 4
  %27 = getelementptr inbounds [256 x i32]* @crc32_tab, i32 0, i32 %26
  store i32 %25, i32* %27, align 4
  br label %28

; <label>:28                                      ; preds = %24
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %1

; <label>:31                                      ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @func_1() #0 {
  %l_2 = alloca [3 x [2 x [5 x i32]]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast [3 x [2 x [5 x i32]]]* %l_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* bitcast ([3 x [2 x [5 x i32]]]* @func_1.l_2 to i8*), i32 120, i32 4, i1 false)
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
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store i64 %val, i64* %1, align 8
  store i8* %vname, i8** %2, align 4
  store i32 %flag, i32* %3, align 4
  %4 = load i64* %1, align 8
  call void @crc32_8bytes(i64 %4) #3
  %5 = load i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = load i8** %2, align 4
  %9 = load i32* @crc32_context, align 4
  %10 = xor i32 %9, -1
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str5, i32 0, i32 0), i8* %8, i32 %10) #3
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %crc, i32* %1, align 4
  store i32 %flag, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0), i32 %3) #3
  %5 = load i32* %1, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind
define internal void @crc32_8bytes(i64 %val) #0 {
  %1 = alloca i64, align 8
  store i64 %val, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = lshr i64 %2, 0
  %4 = and i64 %3, 255
  %5 = trunc i64 %4 to i8
  call void @crc32_byte(i8 zeroext %5) #3
  %6 = load i64* %1, align 8
  %7 = lshr i64 %6, 8
  %8 = and i64 %7, 255
  %9 = trunc i64 %8 to i8
  call void @crc32_byte(i8 zeroext %9) #3
  %10 = load i64* %1, align 8
  %11 = lshr i64 %10, 16
  %12 = and i64 %11, 255
  %13 = trunc i64 %12 to i8
  call void @crc32_byte(i8 zeroext %13) #3
  %14 = load i64* %1, align 8
  %15 = lshr i64 %14, 24
  %16 = and i64 %15, 255
  %17 = trunc i64 %16 to i8
  call void @crc32_byte(i8 zeroext %17) #3
  %18 = load i64* %1, align 8
  %19 = lshr i64 %18, 32
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  call void @crc32_byte(i8 zeroext %21) #3
  %22 = load i64* %1, align 8
  %23 = lshr i64 %22, 40
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i8
  call void @crc32_byte(i8 zeroext %25) #3
  %26 = load i64* %1, align 8
  %27 = lshr i64 %26, 48
  %28 = and i64 %27, 255
  %29 = trunc i64 %28 to i8
  call void @crc32_byte(i8 zeroext %29) #3
  %30 = load i64* %1, align 8
  %31 = lshr i64 %30, 56
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i8
  call void @crc32_byte(i8 zeroext %33) #3
  ret void
}

; Function Attrs: noinline nounwind
define internal void @crc32_byte(i8 zeroext %b) #0 {
  %1 = alloca i8, align 1
  store i8 %b, i8* %1, align 1
  %2 = load i32* @crc32_context, align 4
  %3 = lshr i32 %2, 8
  %4 = and i32 %3, 16777215
  %5 = load i32* @crc32_context, align 4
  %6 = load i8* %1, align 1
  %7 = zext i8 %6 to i32
  %8 = xor i32 %5, %7
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds [256 x i32]* @crc32_tab, i32 0, i32 %9
  %11 = load i32* %10, align 4
  %12 = xor i32 %4, %11
  store i32 %12, i32* @crc32_context, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
