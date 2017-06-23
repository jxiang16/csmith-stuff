; ModuleID = 'checkTimeout12.prelto.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@g_22 = internal global i32 610651448, align 4
@.str = private unnamed_addr constant [5 x i8] c"g_22\00", align 1
@g_37 = internal global i32 -1440149336, align 4
@.str1 = private unnamed_addr constant [5 x i8] c"g_37\00", align 1
@g_38 = internal global [7 x i32] zeroinitializer, align 4
@.str2 = private unnamed_addr constant [8 x i8] c"g_38[i]\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_77 = internal global i32 -843448218, align 4
@.str4 = private unnamed_addr constant [5 x i8] c"g_77\00", align 1
@g_78 = internal global [6 x i16] [i16 -1, i16 -1, i16 22749, i16 -1, i16 -1, i16 22749], align 2
@.str5 = private unnamed_addr constant [8 x i8] c"g_78[i]\00", align 1
@g_79 = internal global i32 -1, align 4
@.str6 = private unnamed_addr constant [5 x i8] c"g_79\00", align 1
@crc32_context = internal global i32 -1, align 4
@.str7 = private unnamed_addr constant [15 x i8] c"checksum = %u\0A\00", align 1
@.str8 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@crc32_tab = internal global [256 x i32] zeroinitializer, align 4
@func_7.l_51 = private unnamed_addr constant [8 x i16] [i16 28655, i16 28655, i16 30401, i16 28655, i16 28655, i16 30401, i16 28655, i16 28655], align 2
@func_7.l_76 = private unnamed_addr constant [2 x [8 x i32]] [[8 x i32] [i32 3, i32 -5, i32 3, i32 3, i32 -5, i32 3, i32 3, i32 -5], [8 x i32] [i32 -5, i32 3, i32 3, i32 -5, i32 3, i32 3, i32 -5, i32 3]], align 4

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
  %4 = call i32 @func_1() #3
  %5 = load volatile i32* @g_22, align 4
  %6 = sext i32 %5 to i64
  %7 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %6, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 %7) #3
  %8 = load i32* @g_37, align 4
  %9 = zext i32 %8 to i64
  %10 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %9, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 %10) #3
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %26, %0
  %12 = load i32* %i, align 4
  %13 = icmp slt i32 %12, 7
  br i1 %13, label %14, label %29

; <label>:14                                      ; preds = %11
  %15 = load i32* %i, align 4
  %16 = getelementptr inbounds [7 x i32]* @g_38, i32 0, i32 %15
  %17 = load i32* %16, align 4
  %18 = zext i32 %17 to i64
  %19 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %18, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 %19) #3
  %20 = load i32* %print_hash_value, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %14
  %23 = load i32* %i, align 4
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str3, i32 0, i32 0), i32 %23) #3
  br label %25

; <label>:25                                      ; preds = %22, %14
  br label %26

; <label>:26                                      ; preds = %25
  %27 = load i32* %i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4
  br label %11

; <label>:29                                      ; preds = %11
  %30 = load i32* @g_77, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %31, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 %32) #3
  store i32 0, i32* %i, align 4
  br label %33

; <label>:33                                      ; preds = %48, %29
  %34 = load i32* %i, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %36, label %51

; <label>:36                                      ; preds = %33
  %37 = load i32* %i, align 4
  %38 = getelementptr inbounds [6 x i16]* @g_78, i32 0, i32 %37
  %39 = load i16* %38, align 2
  %40 = zext i16 %39 to i64
  %41 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %40, i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0), i32 %41) #3
  %42 = load i32* %print_hash_value, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

; <label>:44                                      ; preds = %36
  %45 = load i32* %i, align 4
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str3, i32 0, i32 0), i32 %45) #3
  br label %47

; <label>:47                                      ; preds = %44, %36
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load i32* %i, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i, align 4
  br label %33

; <label>:51                                      ; preds = %33
  %52 = load i32* @g_79, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %53, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i32 %54) #3
  %55 = load i32* @crc32_context, align 4
  %56 = xor i32 %55, -1
  %57 = load i32* %print_hash_value, align 4
  %58 = call i32 @platform_main_end(i32 %56, i32 %57) #3
  store i32 %58, i32* %checksum, align 4
  %59 = load i32* %checksum, align 4
  ret i32 %59
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
  %l_4 = alloca [7 x i16], align 2
  %l_21 = alloca i32, align 4
  %l_39 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 2, i32* %l_21, align 4
  store i32 7, i32* %l_39, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %7, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 7
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %1
  %5 = load i32* %i, align 4
  %6 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 %5
  store i16 -28672, i16* %6, align 2
  br label %7

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %i, align 4
  br label %1

; <label>:10                                      ; preds = %1
  %11 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 2
  %12 = load i16* %11, align 2
  store i32 -4, i32* %l_21, align 4
  %13 = call i32 @safe_div_func_int32_t_s_s(i32 -4, i32 9) #3
  %14 = trunc i32 %13 to i8
  %15 = load volatile i32* @g_22, align 4
  %16 = trunc i32 %15 to i8
  %17 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %14, i8 signext %16) #3
  %18 = load i32* %l_21, align 4
  %19 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 2
  %20 = load i16* %19, align 2
  %21 = trunc i16 %20 to i8
  %22 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %21, i32 5) #3
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %18, %23
  %25 = zext i1 %24 to i32
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 2
  %28 = load i16* %27, align 2
  %29 = trunc i16 %28 to i8
  %30 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext -108, i8 signext %29) #3
  %31 = sext i8 %30 to i16
  %32 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 6
  %33 = load i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %31, i32 %34) #3
  %36 = sext i16 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %10
  br label %39

; <label>:39                                      ; preds = %38, %10
  %40 = phi i1 [ false, %10 ], [ true, %38 ]
  %41 = zext i1 %40 to i32
  %42 = trunc i32 %41 to i8
  %43 = load i32* @g_37, align 4
  %44 = trunc i32 %43 to i8
  %45 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %42, i8 signext %44) #3
  %46 = sext i8 %45 to i32
  %47 = load i32* @g_37, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 2), align 4
  %49 = or i32 %48, 1
  %50 = trunc i32 %49 to i8
  %51 = load i32* %l_39, align 4
  %52 = load i32* @g_37, align 4
  %53 = trunc i32 %52 to i8
  %54 = load i32* @g_37, align 4
  %55 = load i32* @g_37, align 4
  %56 = trunc i32 %55 to i16
  %57 = call signext i16 @func_25(i8 signext %50, i32 %51, i8 zeroext %53, i32 %54, i16 signext %56) #3
  %58 = load i32* @g_37, align 4
  %59 = trunc i32 %58 to i8
  %60 = call i32 @func_13(i16 zeroext %26, i16 signext %57, i8 signext %59) #3
  %61 = load i32* @g_37, align 4
  %62 = call i32 @safe_add_func_int32_t_s_s(i32 %60, i32 %61) #3
  %63 = or i32 13415, %62
  %64 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 5), align 4
  %65 = icmp ule i32 %64, 2273
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 2
  %68 = load i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = icmp ult i32 -188088459, %69
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 6
  %73 = load i16* %72, align 2
  %74 = load i32* %l_39, align 4
  %75 = call zeroext i8 @func_7(i16 zeroext -1, i16 zeroext %73, i32 %74) #3
  %76 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext 70, i8 signext %75) #3
  %77 = sext i8 %76 to i16
  %78 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %12, i16 zeroext %77) #3
  %79 = zext i16 %78 to i32
  %80 = load i32* %l_39, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* @g_79, align 4
  %82 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 5), align 4
  ret i32 %82
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

declare i32 @printf(i8*, ...) #1

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
define internal zeroext i8 @func_7(i16 zeroext %p_8, i16 zeroext %p_9, i32 %p_10) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %l_51 = alloca [8 x i16], align 2
  %l_52 = alloca i32, align 4
  %l_53 = alloca i32, align 4
  %l_75 = alloca i32, align 4
  %l_76 = alloca [2 x [8 x i32]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i16 %p_8, i16* %1, align 2
  store i16 %p_9, i16* %2, align 2
  store i32 %p_10, i32* %3, align 4
  %4 = bitcast [8 x i16]* %l_51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* bitcast ([8 x i16]* @func_7.l_51 to i8*), i32 16, i32 2, i1 false)
  store i32 -919802957, i32* %l_52, align 4
  store i32 -1, i32* %l_53, align 4
  store i32 -10, i32* %l_75, align 4
  %5 = bitcast [2 x [8 x i32]]* %l_76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* bitcast ([2 x [8 x i32]]* @func_7.l_76 to i8*), i32 64, i32 4, i1 false)
  %6 = load i16* %2, align 2
  %7 = add i16 %6, -1
  store i16 %7, i16* %2, align 2
  store i16 %7, i16* %1, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp ult i32 %8, 6
  %10 = zext i1 %9 to i32
  %11 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext 6, i32 %10) #3
  %12 = sext i8 %11 to i32
  store i32 -1, i32* %l_53, align 4
  %13 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext -1, i32 0) #3
  %14 = sext i8 %13 to i16
  %15 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 2), align 4
  %16 = trunc i32 %15 to i8
  %17 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %16, i32 0) #3
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %l_52, align 4
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [8 x i16]* %l_51, i32 0, i32 4
  %21 = load i16* %20, align 2
  %22 = trunc i16 %21 to i8
  %23 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %19, i8 zeroext %22) #3
  %24 = zext i8 %23 to i16
  %25 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %14, i16 signext %24) #3
  %26 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %25, i32 10) #3
  %27 = sext i16 %26 to i32
  %28 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 2), align 4
  %29 = getelementptr inbounds [8 x i16]* %l_51, i32 0, i32 0
  %30 = load i16* %29, align 2
  br i1 true, label %34, label %31

; <label>:31                                      ; preds = %0
  %32 = load i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

; <label>:34                                      ; preds = %31, %0
  %35 = phi i1 [ true, %0 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = load i32* %3, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = icmp slt i32 %39, 26199
  %41 = zext i1 %40 to i32
  %42 = load i32* %3, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32* %3, align 4
  %46 = icmp sge i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = and i32 %28, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %34
  br label %51

; <label>:51                                      ; preds = %50, %34
  %52 = phi i1 [ false, %34 ], [ true, %50 ]
  %53 = zext i1 %52 to i32
  %54 = load i32* %l_75, align 4
  %55 = xor i32 %54, %53
  store i32 %55, i32* %l_75, align 4
  %56 = trunc i32 %55 to i16
  %57 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %56, i32 14) #3
  %58 = load i32* @g_37, align 4
  %59 = trunc i32 %58 to i8
  %60 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %59, i8 zeroext 0) #3
  %61 = zext i8 %60 to i32
  %62 = and i32 %27, %61
  %63 = getelementptr inbounds [2 x [8 x i32]]* %l_76, i32 0, i32 0
  %64 = getelementptr inbounds [8 x i32]* %63, i32 0, i32 3
  %65 = load i32* %64, align 4
  %66 = xor i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = trunc i32 %66 to i16
  %68 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %67, i32 12) #3
  %69 = zext i16 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

; <label>:71                                      ; preds = %51
  %72 = getelementptr inbounds [8 x i16]* %l_51, i32 0, i32 2
  %73 = load i16* %72, align 2
  %74 = sext i16 %73 to i32
  %75 = icmp ne i32 %74, 0
  br label %76

; <label>:76                                      ; preds = %71, %51
  %77 = phi i1 [ true, %51 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = load i32* %3, align 4
  %80 = icmp sge i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32* %3, align 4
  %83 = xor i32 %81, %82
  %84 = icmp ugt i32 -1805883725, %83
  %85 = zext i1 %84 to i32
  %86 = load i32* @g_77, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* @g_77, align 4
  %88 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 0), align 4
  %89 = call i32 @safe_sub_func_int32_t_s_s(i32 %87, i32 %88) #3
  %90 = and i32 %12, %89
  %91 = trunc i32 %90 to i8
  %92 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %91, i8 signext -1) #3
  %93 = sext i8 %92 to i32
  %94 = and i32 %93, 7
  %95 = load i32* %3, align 4
  %96 = icmp ne i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load volatile i32* @g_22, align 4
  %99 = call i32 @safe_mod_func_uint32_t_u_u(i32 %97, i32 %98) #3
  %100 = load i16* %2, align 2
  %101 = zext i16 %100 to i32
  %102 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 2), align 4
  %103 = call i32 @safe_sub_func_int32_t_s_s(i32 %101, i32 %102) #3
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds [8 x i16]* %l_51, i32 0, i32 5
  %106 = load i16* %105, align 2
  %107 = trunc i16 %106 to i8
  %108 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %104, i8 zeroext %107) #3
  %109 = zext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %76
  br label %112

; <label>:112                                     ; preds = %111, %76
  %113 = phi i1 [ false, %76 ], [ true, %111 ]
  %114 = zext i1 %113 to i32
  %115 = trunc i32 %114 to i16
  store i16 %115, i16* getelementptr inbounds ([6 x i16]* @g_78, i32 0, i32 2), align 2
  %116 = load i16* %1, align 2
  %117 = trunc i16 %116 to i8
  ret i8 %117
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
define internal i32 @func_13(i16 zeroext %p_14, i16 signext %p_15, i8 signext %p_16) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %l_40 = alloca i32, align 4
  store i16 %p_14, i16* %1, align 2
  store i16 %p_15, i16* %2, align 2
  store i8 %p_16, i8* %3, align 1
  store i32 1209876222, i32* %l_40, align 4
  ret i32 1209876222
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
define internal signext i16 @func_25(i8 signext %p_26, i32 %p_27, i8 zeroext %p_28, i32 %p_29, i16 signext %p_30) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store i8 %p_26, i8* %1, align 1
  store i32 %p_27, i32* %2, align 4
  store i8 %p_28, i8* %3, align 1
  store i32 %p_29, i32* %4, align 4
  store i16 %p_30, i16* %5, align 2
  %6 = load i16* %5, align 2
  ret i16 %6
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
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2
  store i32 %right, i32* %2, align 4
  %3 = load i16* %1, align 2
  %4 = sext i16 %3 to i32
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
  %13 = load i16* %1, align 2
  %14 = sext i16 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i16* %1, align 2
  %17 = sext i16 %16 to i32
  %18 = load i32* %2, align 4
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i16
  ret i16 %22
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

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
define internal signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i8* %1, align 1
  %4 = sext i8 %3 to i32
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
  %13 = load i8* %1, align 1
  %14 = sext i8 %13 to i32
  %15 = load i32* %2, align 4
  %16 = ashr i32 127, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %12, %9, %6, %0
  %19 = load i8* %1, align 1
  %20 = sext i8 %19 to i32
  br label %26

; <label>:21                                      ; preds = %12
  %22 = load i8* %1, align 1
  %23 = sext i8 %22 to i32
  %24 = load i32* %2, align 4
  %25 = shl i32 %23, %24
  br label %26

; <label>:26                                      ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i8
  ret i8 %28
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2
  store i32 %right, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i16* %1, align 2
  %7 = zext i16 %6 to i32
  %8 = load i32* %2, align 4
  %9 = ashr i32 65535, %8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %5, %0
  %12 = load i16* %1, align 2
  %13 = zext i16 %12 to i32
  br label %19

; <label>:14                                      ; preds = %5
  %15 = load i16* %1, align 2
  %16 = zext i16 %15 to i32
  %17 = load i32* %2, align 4
  %18 = shl i32 %16, %17
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ]
  %21 = trunc i32 %20 to i16
  ret i16 %21
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
define internal signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i8* %1, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %6
  %10 = load i8* %1, align 1
  %11 = sext i8 %10 to i32
  %12 = load i32* %2, align 4
  %13 = ashr i32 127, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %9, %6, %0
  %16 = load i8* %1, align 1
  %17 = sext i8 %16 to i32
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load i8* %1, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32* %2, align 4
  %22 = shl i32 %20, %21
  br label %23

; <label>:23                                      ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
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
define internal zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load i8* %1, align 1
  %7 = zext i8 %6 to i32
  br label %13

; <label>:8                                       ; preds = %0
  %9 = load i8* %1, align 1
  %10 = zext i8 %9 to i32
  %11 = load i32* %2, align 4
  %12 = ashr i32 %10, %11
  br label %13

; <label>:13                                      ; preds = %8, %5
  %14 = phi i32 [ %7, %5 ], [ %12, %8 ]
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2
  store i32 %right, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load i16* %1, align 2
  %7 = zext i16 %6 to i32
  br label %13

; <label>:8                                       ; preds = %0
  %9 = load i16* %1, align 2
  %10 = zext i16 %9 to i32
  %11 = load i32* %2, align 4
  %12 = ashr i32 %10, %11
  br label %13

; <label>:13                                      ; preds = %8, %5
  %14 = phi i32 [ %7, %5 ], [ %12, %8 ]
  %15 = trunc i32 %14 to i16
  ret i16 %15
}

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
