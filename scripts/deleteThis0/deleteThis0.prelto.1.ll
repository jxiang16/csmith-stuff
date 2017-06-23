; ModuleID = 'deleteThis0.prelto.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@g_2 = internal global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_70 = internal global [2 x i32] [i32 -1, i32 -1], align 4
@.str1 = private unnamed_addr constant [8 x i8] c"g_70[i]\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_74 = internal global i32 -1, align 4
@.str3 = private unnamed_addr constant [5 x i8] c"g_74\00", align 1
@crc32_context = internal global i32 -1, align 4
@.str4 = private unnamed_addr constant [15 x i8] c"checksum = %u\0A\00", align 1
@.str5 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@crc32_tab = internal global [256 x i32] zeroinitializer, align 4
@func_1.l_9 = private unnamed_addr constant [9 x i16] [i16 7, i16 -16058, i16 -16058, i16 7, i16 -16058, i16 -16058, i16 7, i16 -16058, i16 -16058], align 2
@func_16.l_50 = private unnamed_addr constant [10 x i32] [i32 1, i32 -1977279810, i32 -9, i32 -1977279810, i32 1, i32 1, i32 -1977279810, i32 -9, i32 -1977279810, i32 1], align 4

; Function Attrs: noinline nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %i = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %checksum = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 4
  store i32 0, i32* %print_hash_value, align 4
  call void @platform_main_begin() #3
  call void @crc32_gentab() #3
  %4 = call zeroext i8 @func_1() #3
  %5 = load i8* @g_2, align 1
  %6 = sext i8 %5 to i64
  %7 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %6, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %7) #3
  store i32 0, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %23, %0
  %9 = load i32* %i, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %26

; <label>:11                                      ; preds = %8
  %12 = load i32* %i, align 4
  %13 = getelementptr inbounds [2 x i32]* @g_70, i32 0, i32 %12
  %14 = load i32* %13, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %15, i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0), i32 %16) #3
  %17 = load i32* %print_hash_value, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %11
  %20 = load i32* %i, align 4
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str2, i32 0, i32 0), i32 %20) #3
  br label %22

; <label>:22                                      ; preds = %19, %11
  br label %23

; <label>:23                                      ; preds = %22
  %24 = load i32* %i, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %i, align 4
  br label %8

; <label>:26                                      ; preds = %8
  %27 = load volatile i32* @g_74, align 4
  %28 = sext i32 %27 to i64
  %29 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %28, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 %29) #3
  %30 = load i32* @crc32_context, align 4
  %31 = xor i32 %30, -1
  %32 = load i32* %print_hash_value, align 4
  %33 = call i32 @platform_main_end(i32 %31, i32 %32) #3
  store i32 %33, i32* %checksum, align 4
  %34 = load i32* %checksum, align 4
  ret i32 %34
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
define internal zeroext i8 @func_1() #0 {
  %l_3 = alloca i32, align 4
  %l_9 = alloca [9 x i16], align 2
  %l_30 = alloca i32, align 4
  %l_75 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 -1, i32* %l_3, align 4
  %1 = bitcast [9 x i16]* %l_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* bitcast ([9 x i16]* @func_1.l_9 to i8*), i32 18, i32 2, i1 false)
  store i32 6, i32* %l_30, align 4
  store i32 1252267017, i32* %l_75, align 4
  %2 = load i8* @g_2, align 1
  %3 = sext i8 %2 to i32
  %4 = load i32* %l_3, align 4
  %5 = or i32 %4, %3
  store i32 %5, i32* %l_3, align 4
  %6 = load i8* @g_2, align 1
  %7 = sext i8 %6 to i32
  %8 = getelementptr inbounds [9 x i16]* %l_9, i32 0, i32 4
  %9 = load i16* %8, align 2
  %10 = sext i16 %9 to i32
  %11 = load i8* @g_2, align 1
  %12 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext -5) #3
  %13 = load i32* %l_3, align 4
  %14 = getelementptr inbounds [9 x i16]* %l_9, i32 0, i32 8
  %15 = load i16* %14, align 2
  %16 = load i8* @g_2, align 1
  %17 = load i32* %l_30, align 4
  %18 = trunc i32 %17 to i8
  %19 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %16, i8 signext %18) #3
  %20 = sext i8 %19 to i32
  %21 = load i8* @g_2, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sgt i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = load i32* %l_3, align 4
  %26 = and i32 %24, %25
  %27 = trunc i32 %26 to i8
  %28 = load i32* %l_30, align 4
  %29 = trunc i32 %28 to i8
  %30 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %27, i8 signext %29) #3
  %31 = getelementptr inbounds [9 x i16]* %l_9, i32 0, i32 0
  %32 = load i16* %31, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

; <label>:35                                      ; preds = %0
  %36 = load i32* %l_30, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

; <label>:38                                      ; preds = %35, %0
  %39 = phi i1 [ false, %0 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = trunc i32 %40 to i16
  %42 = load i32* %l_30, align 4
  %43 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %41, i32 %42) #3
  %44 = load i8* @g_2, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8* @g_2, align 1
  %47 = sext i8 %46 to i32
  %48 = call zeroext i16 @func_16(i16 signext %12, i32 -1, i32 %45, i32 %47) #3
  %49 = load i8* @g_2, align 1
  %50 = sext i8 %49 to i16
  %51 = load i32* %l_3, align 4
  %52 = trunc i32 %51 to i8
  %53 = load i8* @g_2, align 1
  %54 = sext i8 %53 to i32
  %55 = getelementptr inbounds [9 x i16]* %l_9, i32 0, i32 3
  %56 = load i16* %55, align 2
  %57 = sext i16 %56 to i32
  %58 = call signext i16 @func_10(i16 zeroext %48, i16 signext %50, i8 zeroext %52, i32 %54, i32 %57) #3
  %59 = load i8* @g_2, align 1
  %60 = sext i8 %59 to i32
  %61 = call zeroext i8 @func_4(i32 %7, i32 %10, i16 signext %58, i32 %60) #3
  %62 = zext i8 %61 to i32
  %63 = load i8* @g_2, align 1
  %64 = sext i8 %63 to i32
  %65 = or i32 %62, %64
  store i32 -1569836388, i32* %l_75, align 4
  %66 = load volatile i32* @g_74, align 4
  %67 = trunc i32 %66 to i8
  ret i8 %67
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

; Function Attrs: noinline nounwind
define internal zeroext i8 @func_4(i32 %p_5, i32 %p_6, i16 signext %p_7, i32 %p_8) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %l_72 = alloca i8, align 1
  %l_73 = alloca i32, align 4
  store i32 %p_5, i32* %1, align 4
  store i32 %p_6, i32* %2, align 4
  store i16 %p_7, i16* %3, align 2
  store i32 %p_8, i32* %4, align 4
  store i8 -69, i8* %l_72, align 1
  store i32 -1154015829, i32* %l_73, align 4
  %5 = load i8* %l_72, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp sle i32 %6, 2
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %l_73, align 4
  store volatile i32 -1, i32* @g_74, align 4
  %9 = load i32* getelementptr inbounds ([2 x i32]* @g_70, i32 0, i32 0), align 4
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind
define internal signext i16 @func_10(i16 zeroext %p_11, i16 signext %p_12, i8 zeroext %p_13, i32 %p_14, i32 %p_15) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i16 %p_11, i16* %1, align 2
  store i16 %p_12, i16* %2, align 2
  store i8 %p_13, i8* %3, align 1
  store i32 %p_14, i32* %4, align 4
  store i32 %p_15, i32* %5, align 4
  %6 = load i32* getelementptr inbounds ([2 x i32]* @g_70, i32 0, i32 0), align 4
  %7 = trunc i32 %6 to i16
  ret i16 %7
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @func_16(i16 signext %p_17, i32 %p_18, i32 %p_19, i32 %p_20) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %l_50 = alloca [10 x i32], align 4
  %l_51 = alloca i32, align 4
  %l_71 = alloca i32, align 4
  %i = alloca i32, align 4
  %l_49 = alloca i16, align 2
  %l_54 = alloca i16, align 2
  store i16 %p_17, i16* %2, align 2
  store i32 %p_18, i32* %3, align 4
  store i32 %p_19, i32* %4, align 4
  store i32 %p_20, i32* %5, align 4
  %6 = bitcast [10 x i32]* %l_50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* bitcast ([10 x i32]* @func_16.l_50 to i8*), i32 40, i32 4, i1 false)
  store i32 2107626899, i32* %l_51, align 4
  store i32 1, i32* %l_71, align 4
  store i16 12, i16* %2, align 2
  br label %7

; <label>:7                                       ; preds = %84, %0
  %8 = load i16* %2, align 2
  %9 = sext i16 %8 to i32
  %10 = icmp ne i32 %9, -21
  br i1 %10, label %11, label %89

; <label>:11                                      ; preds = %7
  store i16 0, i16* %l_49, align 2
  %12 = load i8* @g_2, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32* %5, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8* @g_2, align 1
  %17 = sext i8 %16 to i16
  %18 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %17, i16 signext 0) #3
  %19 = sext i16 %18 to i32
  %20 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %21 = load i32* %20, align 4
  %22 = icmp ult i32 %19, %21
  %23 = zext i1 %22 to i32
  %24 = icmp eq i32 %23, 1589333728
  %25 = zext i1 %24 to i32
  %26 = call i32 @safe_div_func_int32_t_s_s(i32 %25, i32 0) #3
  %27 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext 1, i32 0) #3
  %28 = zext i8 %27 to i32
  %29 = load i32* %3, align 4
  %30 = and i32 %28, %29
  %31 = load i8* @g_2, align 1
  %32 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 7
  %33 = load i32* %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %31, i8 signext %34) #3
  %36 = load i8* @g_2, align 1
  %37 = sext i8 %36 to i32
  %38 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %35, i32 %37) #3
  %39 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %38, i32 2) #3
  %40 = zext i8 %39 to i32
  %41 = icmp slt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = trunc i32 %42 to i8
  %44 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %15, i8 zeroext %43) #3
  %45 = zext i8 %44 to i32
  %46 = icmp sgt i32 %45, 43426
  %47 = zext i1 %46 to i32
  %48 = trunc i32 %47 to i8
  %49 = load i8* @g_2, align 1
  %50 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %48, i8 zeroext %49) #3
  %51 = zext i8 %50 to i32
  %52 = icmp ugt i32 %51, -1747566724
  br i1 %52, label %53, label %57

; <label>:53                                      ; preds = %11
  %54 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 9
  %55 = load i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

; <label>:57                                      ; preds = %53, %11
  %58 = phi i1 [ false, %11 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = icmp sge i32 %13, %59
  br i1 %60, label %61, label %69

; <label>:61                                      ; preds = %57
  %62 = load i8* @g_2, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

; <label>:65                                      ; preds = %61
  %66 = load i16* %2, align 2
  %67 = sext i16 %66 to i32
  %68 = icmp ne i32 %67, 0
  br label %69

; <label>:69                                      ; preds = %65, %61, %57
  %70 = phi i1 [ false, %61 ], [ false, %57 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = load i8* @g_2, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

; <label>:75                                      ; preds = %69
  br label %76

; <label>:76                                      ; preds = %75, %69
  %77 = phi i1 [ true, %69 ], [ true, %75 ]
  %78 = zext i1 %77 to i32
  %79 = load i32* %l_51, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %l_51, align 4
  %82 = icmp eq i32 0, %81
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %84

; <label>:84                                      ; preds = %76
  %85 = load i16* %2, align 2
  %86 = sext i16 %85 to i32
  %87 = call i32 @safe_sub_func_int32_t_s_s(i32 %86, i32 5) #3
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* %2, align 2
  br label %7

; <label>:89                                      ; preds = %7
  store i32 0, i32* %l_51, align 4
  br label %90

; <label>:90                                      ; preds = %95, %89
  %91 = load i32* %l_51, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %98

; <label>:93                                      ; preds = %90
  store i16 28421, i16* %l_54, align 2
  %94 = load i16* %l_54, align 2
  store i16 %94, i16* %1
  br label %208
                                                  ; No predecessors!
  %96 = load i32* %l_51, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %l_51, align 4
  br label %90

; <label>:98                                      ; preds = %90
  %99 = load i8* @g_2, align 1
  %100 = sext i8 %99 to i32
  %101 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %102 = load i32* %101, align 4
  %103 = load i32* %l_51, align 4
  %104 = load i8* @g_2, align 1
  %105 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %106 = load i32* %105, align 4
  %107 = load i8* @g_2, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %131, label %110

; <label>:110                                     ; preds = %98
  %111 = load i16* %2, align 2
  %112 = load i8* @g_2, align 1
  %113 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %114 = load i32* %113, align 4
  %115 = load i32* %4, align 4
  %116 = and i32 33329, %115
  %117 = load i8* @g_2, align 1
  %118 = sext i8 %117 to i32
  %119 = or i32 %116, %118
  %120 = icmp ule i32 %119, -739161655
  %121 = zext i1 %120 to i32
  %122 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %123 = load i32* %122, align 4
  %124 = xor i32 %121, %123
  %125 = trunc i32 %124 to i16
  %126 = load i32* %4, align 4
  %127 = trunc i32 %126 to i16
  %128 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %125, i16 zeroext %127) #3
  %129 = zext i16 %128 to i32
  %130 = icmp ne i32 %129, 0
  br label %131

; <label>:131                                     ; preds = %110, %98
  %132 = phi i1 [ true, %98 ], [ %130, %110 ]
  %133 = zext i1 %132 to i32
  %134 = icmp ne i32 %106, %133
  %135 = zext i1 %134 to i32
  %136 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %137 = load i32* %136, align 4
  %138 = icmp ult i32 44437, %137
  %139 = zext i1 %138 to i32
  %140 = trunc i32 %139 to i8
  %141 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %104, i8 signext %140) #3
  %142 = sext i8 %141 to i32
  %143 = load i8* @g_2, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp sle i32 %142, %144
  %146 = zext i1 %145 to i32
  %147 = trunc i32 %146 to i16
  %148 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %147, i16 signext -24242) #3
  %149 = sext i16 %148 to i32
  %150 = icmp eq i32 %149, 31872
  %151 = zext i1 %150 to i32
  br i1 true, label %152, label %156

; <label>:152                                     ; preds = %131
  %153 = load i8* @g_2, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 0
  br label %156

; <label>:156                                     ; preds = %152, %131
  %157 = phi i1 [ false, %131 ], [ %155, %152 ]
  %158 = zext i1 %157 to i32
  %159 = load i32* %5, align 4
  %160 = load i8* @g_2, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp slt i32 %159, %161
  %163 = zext i1 %162 to i32
  %164 = trunc i32 %163 to i8
  %165 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %164, i8 signext -8) #3
  %166 = sext i8 %165 to i32
  %167 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %168 = load i32* %167, align 4
  %169 = icmp uge i32 %166, %168
  %170 = zext i1 %169 to i32
  %171 = icmp eq i32 %102, %170
  %172 = zext i1 %171 to i32
  %173 = trunc i32 %172 to i16
  %174 = load i32* %4, align 4
  %175 = trunc i32 %174 to i16
  %176 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %173, i16 signext %175) #3
  %177 = load i8* @g_2, align 1
  %178 = sext i8 %177 to i32
  %179 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %176, i32 %178) #3
  %180 = sext i16 %179 to i32
  store i32 %180, i32* getelementptr inbounds ([2 x i32]* @g_70, i32 0, i32 0), align 4
  %181 = icmp uge i32 %180, 9837
  %182 = zext i1 %181 to i32
  %183 = load i32* %5, align 4
  %184 = icmp slt i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = xor i32 %185, -1
  %187 = icmp ult i32 %186, 9
  %188 = zext i1 %187 to i32
  %189 = icmp sge i32 %100, %188
  %190 = zext i1 %189 to i32
  %191 = load i8* @g_2, align 1
  %192 = sext i8 %191 to i32
  %193 = or i32 %190, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

; <label>:195                                     ; preds = %156
  %196 = load i32* getelementptr inbounds ([2 x i32]* @g_70, i32 0, i32 0), align 4
  %197 = icmp ne i32 %196, 0
  br label %198

; <label>:198                                     ; preds = %195, %156
  %199 = phi i1 [ true, %156 ], [ %197, %195 ]
  %200 = zext i1 %199 to i32
  %201 = trunc i32 %200 to i8
  %202 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %201, i8 zeroext -5) #3
  %203 = zext i8 %202 to i32
  %204 = load i32* %l_71, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %l_71, align 4
  store i32 %205, i32* %3, align 4
  %206 = load i32* %3, align 4
  %207 = trunc i32 %206 to i16
  store i16 %207, i16* %1
  br label %208

; <label>:208                                     ; preds = %198, %93
  %209 = load i16* %1
  ret i16 %209
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = alloca i16, align 2
  store i16 %si, i16* %1, align 2
  %2 = load i16* %1, align 2
  %3 = sext i16 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i16
  ret i16 %5
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2
  store i32 %right, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %5
  %9 = load i16* %1, align 2
  %10 = zext i16 %9 to i32
  %11 = load i32* %2, align 4
  %12 = ashr i32 65535, %11
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %8, %5, %0
  %15 = load i16* %1, align 2
  %16 = zext i16 %15 to i32
  br label %22

; <label>:17                                      ; preds = %8
  %18 = load i16* %1, align 2
  %19 = zext i16 %18 to i32
  %20 = load i32* %2, align 4
  %21 = shl i32 %19, %20
  br label %22

; <label>:22                                      ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i16
  ret i16 %24
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_add_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1
  store i8 %si2, i8* %2, align 1
  %3 = load i8* %1, align 1
  %4 = sext i8 %3 to i32
  %5 = load i8* %2, align 1
  %6 = sext i8 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1
  store i8 %si2, i8* %2, align 1
  %3 = load i8* %1, align 1
  %4 = sext i8 %3 to i32
  %5 = load i8* %2, align 1
  %6 = sext i8 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1
  store i8 %ui2, i8* %2, align 1
  %3 = load i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i8* %1, align 1
  %8 = zext i8 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i8* %1, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8* %2, align 1
  %13 = zext i8 %12 to i32
  %14 = srem i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1
  store i8 %ui2, i8* %2, align 1
  %3 = load i8* %1, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8* %2, align 1
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %5
  %9 = load i8* %1, align 1
  %10 = zext i8 %9 to i32
  %11 = load i32* %2, align 4
  %12 = ashr i32 255, %11
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %8, %5, %0
  %15 = load i8* %1, align 1
  %16 = zext i8 %15 to i32
  br label %22

; <label>:17                                      ; preds = %8
  %18 = load i8* %1, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32* %2, align 4
  %21 = shl i32 %19, %20
  br label %22

; <label>:22                                      ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i8
  ret i8 %24
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i8* %1, align 1
  %10 = zext i8 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i8* %1, align 1
  %13 = zext i8 %12 to i32
  %14 = load i32* %2, align 4
  %15 = ashr i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_mod_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1
  store i8 %si2, i8* %2, align 1
  %3 = load i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8* %1, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, -128
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i8* %1, align 1
  %16 = sext i8 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i8* %1, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8* %2, align 1
  %21 = sext i8 %20 to i32
  %22 = srem i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i8* %1, align 1
  %7 = zext i8 %6 to i32
  %8 = load i32* %2, align 4
  %9 = ashr i32 255, %8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %5, %0
  %12 = load i8* %1, align 1
  %13 = zext i8 %12 to i32
  br label %19

; <label>:14                                      ; preds = %5
  %15 = load i8* %1, align 1
  %16 = zext i8 %15 to i32
  %17 = load i32* %2, align 4
  %18 = shl i32 %16, %17
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ]
  %21 = trunc i32 %20 to i8
  ret i8 %21
}

; Function Attrs: noinline nounwind
define internal i32 @safe_div_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4
  store i32 %si2, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32* %1, align 4
  %7 = icmp eq i32 %6, -2147483648
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32* %2, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i32* %1, align 4
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i32* %1, align 4
  %15 = load i32* %2, align 4
  %16 = sdiv i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2
  store i16 %si2, i16* %2, align 2
  %3 = load i16* %1, align 2
  %4 = sext i16 %3 to i32
  %5 = load i16* %2, align 2
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: noinline nounwind
define internal i32 @safe_sub_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4
  store i32 %si2, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %2, align 4
  %5 = xor i32 %3, %4
  %6 = load i32* %1, align 4
  %7 = load i32* %1, align 4
  %8 = load i32* %2, align 4
  %9 = xor i32 %7, %8
  %10 = and i32 %9, -2147483648
  %11 = xor i32 %6, %10
  %12 = load i32* %2, align 4
  %13 = sub nsw i32 %11, %12
  %14 = load i32* %2, align 4
  %15 = xor i32 %13, %14
  %16 = and i32 %5, %15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %0
  %19 = load i32* %1, align 4
  br label %24

; <label>:20                                      ; preds = %0
  %21 = load i32* %1, align 4
  %22 = load i32* %2, align 4
  %23 = sub nsw i32 %21, %22
  br label %24

; <label>:24                                      ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1
  store i8 %ui2, i8* %2, align 1
  %3 = load i8* %1, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8* %2, align 1
  %6 = zext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2
  store i32 %right, i32* %2, align 4
  %3 = load i16* %1, align 2
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %6
  %10 = load i16* %1, align 2
  %11 = sext i16 %10 to i32
  %12 = load i32* %2, align 4
  %13 = ashr i32 32767, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %9, %6, %0
  %16 = load i16* %1, align 2
  %17 = sext i16 %16 to i32
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load i16* %1, align 2
  %20 = sext i16 %19 to i32
  %21 = load i32* %2, align 4
  %22 = shl i32 %20, %21
  br label %23

; <label>:23                                      ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_mod_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2
  store i16 %si2, i16* %2, align 2
  %3 = load i16* %2, align 2
  %4 = sext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i16* %1, align 2
  %8 = sext i16 %7 to i32
  %9 = icmp eq i32 %8, -32768
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i16* %2, align 2
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i16* %1, align 2
  %16 = sext i16 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i16* %1, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16* %2, align 2
  %21 = sext i16 %20 to i32
  %22 = srem i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_div_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1
  store i8 %si2, i8* %2, align 1
  %3 = load i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8* %1, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, -128
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i8* %1, align 1
  %16 = sext i8 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i8* %1, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8* %2, align 1
  %21 = sext i8 %20 to i32
  %22 = sdiv i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2
  store i16 %si2, i16* %2, align 2
  %3 = load i16* %1, align 2
  %4 = sext i16 %3 to i32
  %5 = load i16* %2, align 2
  %6 = sext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_sub_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1
  store i8 %si2, i8* %2, align 1
  %3 = load i8* %1, align 1
  %4 = sext i8 %3 to i32
  %5 = load i8* %2, align 1
  %6 = sext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2
  store i16 %ui2, i16* %2, align 2
  %3 = load i16* %2, align 2
  %4 = zext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i16* %1, align 2
  %8 = zext i16 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i16* %1, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16* %2, align 2
  %13 = zext i16 %12 to i32
  %14 = sdiv i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
