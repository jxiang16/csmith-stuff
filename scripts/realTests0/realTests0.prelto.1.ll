; ModuleID = 'realTests0.prelto.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@g_9 = internal global i32 1, align 4
@.str = private unnamed_addr constant [4 x i8] c"g_9\00", align 1
@g_33 = internal global i32 1172107197, align 4
@.str1 = private unnamed_addr constant [5 x i8] c"g_33\00", align 1
@g_34 = internal global i16 -1, align 2
@.str2 = private unnamed_addr constant [5 x i8] c"g_34\00", align 1
@g_79 = internal global i16 -4679, align 2
@.str3 = private unnamed_addr constant [5 x i8] c"g_79\00", align 1
@g_82 = internal global i16 -10169, align 2
@.str4 = private unnamed_addr constant [5 x i8] c"g_82\00", align 1
@g_91 = internal global i32 1461561476, align 4
@.str5 = private unnamed_addr constant [5 x i8] c"g_91\00", align 1
@g_107 = internal global i16 -29232, align 2
@.str6 = private unnamed_addr constant [6 x i8] c"g_107\00", align 1
@crc32_context = internal global i32 -1, align 4
@.str7 = private unnamed_addr constant [15 x i8] c"checksum = %u\0A\00", align 1
@.str8 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@crc32_tab = internal global [256 x i32] zeroinitializer, align 4
@func_14.l_62 = private unnamed_addr constant [4 x i32] [i32 -5, i32 -5, i32 -5, i32 -5], align 4
@func_14.l_64 = private unnamed_addr constant [8 x [9 x i8]] [[9 x i8] c"\01\99\FF\01\F1\FF\F6\F6\FF", [9 x i8] c"\FD\C4\FF\C4\FDO\B4\01\DB", [9 x i8] c"\C4\D3\FF\01\FD4\C4\F19", [9 x i8] c"\F6\04\00\FA\F1O\C4\04\00", [9 x i8] c"\D3\FA\00\F1\B4\FF\00\F4\01", [9 x i8] c"\00\00\B4h\C0\C4\01a\FD", [9 x i8] c"\FD\00\01\FDh\FDa\01\C4", [9 x i8] c"\01\01\B4\FD\01\01\F4\00\F6"], align 1
@func_37.l_72 = private unnamed_addr constant [6 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 4
@func_37.l_81 = private unnamed_addr constant [3 x [1 x [2 x i32]]] [[1 x [2 x i32]] [[2 x i32] [i32 -9, i32 -9]], [1 x [2 x i32]] [[2 x i32] [i32 -9, i32 -9]], [1 x [2 x i32]] [[2 x i32] [i32 -9, i32 -9]]], align 4

; Function Attrs: noinline nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %print_hash_value = alloca i32, align 4
  %checksum = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 4
  store i32 0, i32* %print_hash_value, align 4
  call void @platform_main_begin() #3
  call void @crc32_gentab() #3
  %4 = call i32 @func_1() #3
  %5 = load volatile i32* @g_9, align 4
  %6 = sext i32 %5 to i64
  %7 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %6, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %7) #3
  %8 = load i32* @g_33, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %9, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 %10) #3
  %11 = load i16* @g_34, align 2
  %12 = sext i16 %11 to i64
  %13 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %12, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 %13) #3
  %14 = load i16* @g_79, align 2
  %15 = zext i16 %14 to i64
  %16 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %15, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 %16) #3
  %17 = load i16* @g_82, align 2
  %18 = sext i16 %17 to i64
  %19 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %18, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 %19) #3
  %20 = load i32* @g_91, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %21, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 %22) #3
  %23 = load i16* @g_107, align 2
  %24 = zext i16 %23 to i64
  %25 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %24, i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), i32 %25) #3
  %26 = load i32* @crc32_context, align 4
  %27 = xor i32 %26, -1
  %28 = load i32* %print_hash_value, align 4
  %29 = call i32 @platform_main_end(i32 %27, i32 %28) #3
  store i32 %29, i32* %checksum, align 4
  %30 = load i32* %checksum, align 4
  ret i32 %30
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
  %l_2 = alloca [4 x i16], align 2
  %l_20 = alloca i8, align 1
  %l_32 = alloca i8, align 1
  %l_108 = alloca i32, align 4
  %i = alloca i32, align 4
  store i8 8, i8* %l_20, align 1
  store i8 6, i8* %l_32, align 1
  store i32 -1068203618, i32* %l_108, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %7, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 4
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %1
  %5 = load i32* %i, align 4
  %6 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 %5
  store i16 -1, i16* %6, align 2
  br label %7

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %i, align 4
  br label %1

; <label>:10                                      ; preds = %1
  %11 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %12 = load i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %79

; <label>:15                                      ; preds = %10
  %16 = load volatile i32* @g_9, align 4
  %17 = load i8* %l_20, align 1
  %18 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %19 = load i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 0
  %22 = load i16* %21, align 2
  %23 = load i8* %l_20, align 1
  %24 = icmp ne i8 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i8* %l_32, align 1
  %28 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 1
  %29 = load i16* %28, align 2
  %30 = trunc i16 %29 to i8
  %31 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %27, i8 zeroext %30) #3
  %32 = zext i8 %31 to i32
  %33 = or i32 %26, %32
  %34 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %22, i32 %33) #3
  %35 = sext i16 %34 to i32
  store i32 %35, i32* @g_33, align 4
  %36 = load volatile i32* @g_9, align 4
  %37 = and i32 %35, %36
  %38 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %39 = load i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = call i32 @safe_add_func_int32_t_s_s(i32 %37, i32 %40) #3
  %42 = call i32 @safe_mod_func_int32_t_s_s(i32 1604088068, i32 %41) #3
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

; <label>:44                                      ; preds = %15
  br label %45

; <label>:45                                      ; preds = %44, %15
  %46 = phi i1 [ true, %15 ], [ false, %44 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @safe_div_func_uint32_t_u_u(i32 %20, i32 %47) #3
  %49 = load i16* @g_34, align 2
  %50 = trunc i16 %49 to i8
  %51 = load i8* %l_20, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8* %l_32, align 1
  %54 = call i32 @func_14(i8 zeroext %17, i32 %48, i8 zeroext %50, i32 %52, i8 zeroext %53) #3
  %55 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %56 = load i16* %55, align 2
  %57 = zext i16 %56 to i32
  %58 = or i32 %54, %57
  %59 = trunc i32 %58 to i8
  %60 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %59, i8 signext 126) #3
  %61 = sext i8 %60 to i16
  %62 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %63 = load i16* %62, align 2
  %64 = zext i16 %63 to i32
  %65 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %61, i32 %64) #3
  %66 = trunc i16 %65 to i8
  %67 = load i16* @g_34, align 2
  %68 = sext i16 %67 to i32
  %69 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %70 = load i16* %69, align 2
  %71 = trunc i16 %70 to i8
  %72 = load i8* %l_32, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8* %l_32, align 1
  %75 = sext i8 %74 to i16
  %76 = call zeroext i8 @func_3(i8 signext %66, i32 %68, i8 zeroext %71, i32 %73, i16 signext %75) #3
  %77 = zext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br label %79

; <label>:79                                      ; preds = %45, %10
  %80 = phi i1 [ false, %10 ], [ %78, %45 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %l_108, align 4
  %82 = load i16* @g_79, align 2
  %83 = zext i16 %82 to i32
  ret i32 %83
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
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str8, i32 0, i32 0), i8* %8, i32 %10) #3
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %crc, i32* %1, align 4
  store i32 %flag, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str7, i32 0, i32 0), i32 %3) #3
  %5 = load i32* %1, align 4
  ret i32 %5
}

declare i32 @printf(i8*, ...) #1

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

; Function Attrs: noinline nounwind
define internal zeroext i8 @func_3(i8 signext %p_4, i32 %p_5, i8 zeroext %p_6, i32 %p_7, i16 signext %p_8) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %l_96 = alloca i32, align 4
  %l_105 = alloca i8, align 1
  %l_106 = alloca i32, align 4
  store i8 %p_4, i8* %1, align 1
  store i32 %p_5, i32* %2, align 4
  store i8 %p_6, i8* %3, align 1
  store i32 %p_7, i32* %4, align 4
  store i16 %p_8, i16* %5, align 2
  store i32 -1294022090, i32* %l_96, align 4
  store i8 -68, i8* %l_105, align 1
  store i32 1800991116, i32* %l_106, align 4
  %6 = load i16* @g_34, align 2
  %7 = sext i16 %6 to i32
  %8 = load i32* @g_91, align 4
  %9 = add i32 %8, -1
  store i32 %9, i32* @g_91, align 4
  %10 = trunc i32 %8 to i8
  %11 = load i32* %l_96, align 4
  %12 = trunc i32 %11 to i8
  %13 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -32, i8 signext %12) #3
  %14 = sext i8 %13 to i32
  %15 = load i32* %l_96, align 4
  %16 = trunc i32 %15 to i16
  %17 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %16, i32 11) #3
  %18 = trunc i16 %17 to i8
  %19 = load i32* %l_96, align 4
  %20 = trunc i32 %19 to i8
  %21 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %18, i8 zeroext %20) #3
  %22 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %21, i32 5) #3
  %23 = sext i8 %22 to i32
  %24 = load i8* %l_105, align 1
  %25 = load i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

; <label>:27                                      ; preds = %0
  %28 = load i16* @g_82, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp sle i32 64754, %29
  br label %31

; <label>:31                                      ; preds = %27, %0
  %32 = phi i1 [ true, %0 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @safe_sub_func_int32_t_s_s(i32 %23, i32 %33) #3
  %35 = or i32 %14, %34
  %36 = icmp ult i32 %35, 1
  %37 = zext i1 %36 to i32
  store i32 7, i32* %l_106, align 4
  %38 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %10, i32 7) #3
  %39 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext 21, i8 zeroext %38) #3
  %40 = zext i8 %39 to i32
  %41 = load i32* %4, align 4
  %42 = xor i32 %40, %41
  %43 = call i32 @safe_mod_func_uint32_t_u_u(i32 %7, i32 %42) #3
  %44 = trunc i32 %43 to i8
  %45 = load i32* %4, align 4
  %46 = trunc i32 %45 to i8
  %47 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %44, i8 zeroext %46) #3
  %48 = zext i8 %47 to i16
  store i16 %48, i16* @g_107, align 2
  %49 = load i32* @g_33, align 4
  %50 = trunc i32 %49 to i8
  ret i8 %50
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2
  store i32 %right, i32* %2, align 4
  %3 = load i16* %1, align 2
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i16* %1, align 2
  %11 = sext i16 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i16* %1, align 2
  %14 = sext i16 %13 to i32
  %15 = load i32* %2, align 4
  %16 = ashr i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %12, %9
  %18 = phi i32 [ %11, %9 ], [ %16, %12 ]
  %19 = trunc i32 %18 to i16
  ret i16 %19
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
define internal i32 @func_14(i8 zeroext %p_15, i32 %p_16, i8 zeroext %p_17, i32 %p_18, i8 zeroext %p_19) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %l_58 = alloca i32, align 4
  %l_59 = alloca i32, align 4
  %l_60 = alloca [2 x i32], align 4
  %l_61 = alloca i32, align 4
  %l_62 = alloca [4 x i32], align 4
  %l_63 = alloca i16, align 2
  %l_64 = alloca [8 x [9 x i8]], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8 %p_15, i8* %1, align 1
  store i32 %p_16, i32* %2, align 4
  store i8 %p_17, i8* %3, align 1
  store i32 %p_18, i32* %4, align 4
  store i8 %p_19, i8* %5, align 1
  store i32 -1, i32* %l_58, align 4
  store i32 1, i32* %l_59, align 4
  store i32 534406659, i32* %l_61, align 4
  %6 = bitcast [4 x i32]* %l_62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* bitcast ([4 x i32]* @func_14.l_62 to i8*), i32 16, i32 4, i1 false)
  store i16 0, i16* %l_63, align 2
  %7 = bitcast [8 x [9 x i8]]* %l_64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* getelementptr inbounds ([8 x [9 x i8]]* @func_14.l_64, i32 0, i32 0, i32 0), i32 72, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %14, %0
  %9 = load i32* %i, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %8
  %12 = load i32* %i, align 4
  %13 = getelementptr inbounds [2 x i32]* %l_60, i32 0, i32 %12
  store i32 -1853310549, i32* %13, align 4
  br label %14

; <label>:14                                      ; preds = %11
  %15 = load i32* %i, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %8

; <label>:17                                      ; preds = %8
  %18 = load i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sge i32 0, %19
  %21 = zext i1 %20 to i32
  %22 = load volatile i32* @g_9, align 4
  %23 = trunc i32 %22 to i16
  %24 = load i32* @g_33, align 4
  %25 = load i32* %l_58, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load i32* @g_33, align 4
  %30 = load i16* @g_34, align 2
  %31 = sext i16 %30 to i32
  %32 = load i32* %l_58, align 4
  %33 = icmp ne i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = or i32 %29, %34
  %36 = load i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i8* %3, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = load i32* @g_33, align 4
  %42 = icmp ult i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32* @g_33, align 4
  %45 = xor i32 %43, %44
  %46 = load i32* %l_59, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %l_59, align 4
  %48 = getelementptr inbounds [2 x i32]* %l_60, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = trunc i32 %47 to i8
  %50 = load i32* %l_58, align 4
  %51 = trunc i32 %50 to i8
  %52 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %49, i8 signext %51) #3
  %53 = load i32* @g_33, align 4
  %54 = icmp ne i32 %53, 534406659
  %55 = zext i1 %54 to i32
  %56 = trunc i32 %55 to i16
  %57 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %56, i16 signext -18622) #3
  %58 = trunc i16 %57 to i8
  %59 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %58, i32 6) #3
  %60 = zext i8 %59 to i16
  %61 = load i8* %5, align 1
  %62 = zext i8 %61 to i16
  %63 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %60, i16 zeroext %62) #3
  %64 = zext i16 %63 to i32
  %65 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext -96, i32 %64) #3
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %17
  br label %69

; <label>:69                                      ; preds = %68, %17
  %70 = phi i1 [ false, %17 ], [ true, %68 ]
  %71 = zext i1 %70 to i32
  %72 = trunc i32 %71 to i8
  %73 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %72, i32 2) #3
  %74 = sext i8 %73 to i32
  %75 = getelementptr inbounds [4 x i32]* %l_62, i32 0, i32 0
  %76 = load i32* %75, align 4
  %77 = and i32 %76, %74
  store i32 %77, i32* %75, align 4
  %78 = trunc i32 %77 to i16
  %79 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %23, i16 signext %78) #3
  %80 = sext i16 %79 to i32
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = trunc i32 %82 to i16
  %84 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %83, i16 zeroext 18190) #3
  %85 = zext i16 %84 to i32
  %86 = load i32* %2, align 4
  %87 = icmp sge i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32* %l_58, align 4
  %90 = call i32 @safe_add_func_uint32_t_u_u(i32 %88, i32 %89) #3
  %91 = getelementptr inbounds [8 x [9 x i8]]* %l_64, i32 0, i32 2
  %92 = getelementptr inbounds [9 x i8]* %91, i32 0, i32 3
  %93 = load i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp uge i32 %90, %94
  %96 = zext i1 %95 to i32
  %97 = or i32 %21, 248
  %98 = icmp ne i32 %97, 1836142120
  %99 = zext i1 %98 to i32
  %100 = call i32 @func_37(i32 %99) #3
  %101 = load i16* @g_34, align 2
  %102 = sext i16 %101 to i32
  %103 = call i32 @safe_sub_func_int32_t_s_s(i32 %100, i32 %102) #3
  %104 = getelementptr inbounds [8 x [9 x i8]]* %l_64, i32 0, i32 3
  %105 = getelementptr inbounds [9 x i8]* %104, i32 0, i32 6
  %106 = load i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp sge i32 %103, %107
  %109 = zext i1 %108 to i32
  %110 = trunc i32 %109 to i16
  store i16 %110, i16* @g_82, align 2
  %111 = getelementptr inbounds [8 x [9 x i8]]* %l_64, i32 0, i32 2
  %112 = getelementptr inbounds [9 x i8]* %111, i32 0, i32 3
  %113 = load i8* %112, align 1
  %114 = sext i8 %113 to i32
  ret i32 %114
}

; Function Attrs: noinline nounwind
define internal i32 @safe_div_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4
  store i32 %ui2, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i32* %1, align 4
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i32* %1, align 4
  %9 = load i32* %2, align 4
  %10 = udiv i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind
define internal i32 @safe_mod_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
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
  %16 = srem i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind
define internal i32 @safe_add_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4
  store i32 %si2, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32* %1, align 4
  %10 = load i32* %2, align 4
  %11 = sub nsw i32 2147483647, %10
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %24, label %13

; <label>:13                                      ; preds = %8, %5, %0
  %14 = load i32* %1, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %26

; <label>:16                                      ; preds = %13
  %17 = load i32* %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i32* %1, align 4
  %21 = load i32* %2, align 4
  %22 = sub nsw i32 -2147483648, %21
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %19, %8
  %25 = load i32* %1, align 4
  br label %30

; <label>:26                                      ; preds = %19, %16, %13
  %27 = load i32* %1, align 4
  %28 = load i32* %2, align 4
  %29 = add nsw i32 %27, %28
  br label %30

; <label>:30                                      ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  ret i32 %31
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
define internal zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1
  store i8 %ui2, i8* %2, align 1
  %3 = load i8* %1, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8* %2, align 1
  %6 = zext i8 %5 to i32
  %7 = mul i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

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
define internal i32 @func_37(i32 %p_38) #0 {
  %1 = alloca i32, align 4
  %l_72 = alloca [6 x i32], align 4
  %l_80 = alloca i32, align 4
  %l_81 = alloca [3 x [1 x [2 x i32]]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %p_38, i32* %1, align 4
  %2 = bitcast [6 x i32]* %l_72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* bitcast ([6 x i32]* @func_37.l_72 to i8*), i32 24, i32 4, i1 false)
  store i32 -764463600, i32* %l_80, align 4
  %3 = bitcast [3 x [1 x [2 x i32]]]* %l_81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* bitcast ([3 x [1 x [2 x i32]]]* @func_37.l_81 to i8*), i32 24, i32 4, i1 false)
  %4 = load i16* @g_34, align 2
  %5 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 4
  %6 = load i32* %5, align 4
  %7 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 4
  %8 = load i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %32, label %10

; <label>:10                                      ; preds = %0
  %11 = load volatile i32* @g_9, align 4
  %12 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext -8) #3
  %13 = sext i16 %12 to i32
  %14 = load i16* @g_34, align 2
  %15 = sext i16 %14 to i32
  %16 = load i32* %1, align 4
  %17 = or i32 0, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* @g_79, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp sgt i32 %15, %19
  %21 = zext i1 %20 to i32
  %22 = icmp ne i32 %13, %21
  %23 = zext i1 %22 to i32
  %24 = trunc i32 %23 to i8
  %25 = load i32* %1, align 4
  %26 = trunc i32 %25 to i8
  %27 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %24, i8 signext %26) #3
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, 9
  %30 = call i32 @safe_sub_func_uint32_t_u_u(i32 %11, i32 %29) #3
  %31 = icmp ne i32 %30, 0
  br label %32

; <label>:32                                      ; preds = %10, %0
  %33 = phi i1 [ true, %0 ], [ %31, %10 ]
  %34 = zext i1 %33 to i32
  %35 = load i16* @g_34, align 2
  %36 = sext i16 %35 to i32
  %37 = load i32* %l_80, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %l_80, align 4
  %39 = icmp eq i32 %38, -1
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %4, i32 %41) #3
  %43 = sext i16 %42 to i32
  %44 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 1
  %45 = load i32* %44, align 4
  %46 = icmp ule i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 4
  %49 = load i32* %48, align 4
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %32
  br label %52

; <label>:52                                      ; preds = %51, %32
  %53 = phi i1 [ false, %32 ], [ true, %51 ]
  %54 = zext i1 %53 to i32
  %55 = trunc i32 %54 to i8
  %56 = load i32* %1, align 4
  %57 = trunc i32 %56 to i8
  %58 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %55, i8 zeroext %57) #3
  %59 = zext i8 %58 to i32
  %60 = icmp slt i32 %59, 1
  %61 = zext i1 %60 to i32
  %62 = load i32* @g_33, align 4
  %63 = icmp sle i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = trunc i32 %64 to i16
  %66 = load i32* %1, align 4
  %67 = trunc i32 %66 to i16
  %68 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %65, i16 signext %67) #3
  %69 = load i16* @g_34, align 2
  %70 = sext i16 %69 to i32
  %71 = load i32* %1, align 4
  %72 = or i32 %70, %71
  %73 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 5
  %74 = load i32* %73, align 4
  %75 = icmp uge i32 %72, %74
  %76 = zext i1 %75 to i32
  %77 = load i16* @g_34, align 2
  %78 = sext i16 %77 to i32
  %79 = icmp sge i32 %76, %78
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds [3 x [1 x [2 x i32]]]* %l_81, i32 0, i32 2
  %82 = getelementptr inbounds [1 x [2 x i32]]* %81, i32 0, i32 0
  %83 = getelementptr inbounds [2 x i32]* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 4
  %85 = load i32* %84, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4
  store i32 %ui2, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %2, align 4
  %5 = add i32 %3, %4
  ret i32 %5
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

; Function Attrs: noinline nounwind
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2
  store i16 %si2, i16* %2, align 2
  %3 = load i16* %1, align 2
  %4 = sext i16 %3 to i32
  %5 = load i16* %2, align 2
  %6 = sext i16 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i8* %1, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32* %2, align 4
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %9, %6, %0
  %13 = load i8* %1, align 1
  %14 = sext i8 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i8* %1, align 1
  %17 = sext i8 %16 to i32
  %18 = load i32* %2, align 4
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i8
  ret i8 %22
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2
  store i16 %ui2, i16* %2, align 2
  %3 = load i16* %1, align 2
  %4 = zext i16 %3 to i32
  %5 = load i16* %2, align 2
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
define internal signext i16 @safe_div_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
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
  %22 = sdiv i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
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
define internal signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2
  store i32 %right, i32* %2, align 4
  %3 = load i16* %1, align 2
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32* %2, align 4
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %9
  %13 = load i16* %1, align 2
  %14 = sext i16 %13 to i32
  %15 = load i32* %2, align 4
  %16 = ashr i32 32767, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %12, %9, %6, %0
  %19 = load i16* %1, align 2
  %20 = sext i16 %19 to i32
  br label %26

; <label>:21                                      ; preds = %12
  %22 = load i16* %1, align 2
  %23 = sext i16 %22 to i32
  %24 = load i32* %2, align 4
  %25 = shl i32 %23, %24
  br label %26

; <label>:26                                      ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i16
  ret i16 %28
}

; Function Attrs: noinline nounwind
define internal i32 @safe_sub_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4
  store i32 %ui2, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %2, align 4
  %5 = sub i32 %3, %4
  ret i32 %5
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
define internal i32 @safe_mod_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4
  store i32 %ui2, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i32* %1, align 4
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i32* %1, align 4
  %9 = load i32* %2, align 4
  %10 = urem i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
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
  %14 = sdiv i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
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
define internal signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i8* %1, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i8* %1, align 1
  %11 = sext i8 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i8* %1, align 1
  %14 = sext i8 %13 to i32
  %15 = load i32* %2, align 4
  %16 = ashr i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %12, %9
  %18 = phi i32 [ %11, %9 ], [ %16, %12 ]
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
