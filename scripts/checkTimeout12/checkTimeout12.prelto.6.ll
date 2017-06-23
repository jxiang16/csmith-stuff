; ModuleID = 'checkTimeout12.prelto.6.bc'
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
  call void @platform_main_begin() #3
  call void @crc32_gentab() #3
  %1 = call i32 @func_1() #3
  %2 = load volatile i32* @g_22, align 4
  %3 = sext i32 %2 to i64
  call void @transparent_crc(i64 %3, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 0) #3
  %4 = load i32* @g_37, align 4
  %5 = zext i32 %4 to i64
  call void @transparent_crc(i64 %5, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 0) #3
  br label %6

; <label>:6                                       ; preds = %16, %0
  %i.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %7 = icmp slt i32 %i.0, 7
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds [7 x i32]* @g_38, i32 0, i32 %i.0
  %10 = load i32* %9, align 4
  %11 = zext i32 %10 to i64
  call void @transparent_crc(i64 %11, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 0) #3
  %12 = icmp ne i32 0, 0
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %8
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str3, i32 0, i32 0), i32 %i.0) #3
  br label %15

; <label>:15                                      ; preds = %13, %8
  br label %16

; <label>:16                                      ; preds = %15
  %17 = add nsw i32 %i.0, 1
  br label %6

; <label>:18                                      ; preds = %6
  %19 = load i32* @g_77, align 4
  %20 = sext i32 %19 to i64
  call void @transparent_crc(i64 %20, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 0) #3
  br label %21

; <label>:21                                      ; preds = %31, %18
  %i.1 = phi i32 [ 0, %18 ], [ %32, %31 ]
  %22 = icmp slt i32 %i.1, 6
  br i1 %22, label %23, label %33

; <label>:23                                      ; preds = %21
  %24 = getelementptr inbounds [6 x i16]* @g_78, i32 0, i32 %i.1
  %25 = load i16* %24, align 2
  %26 = zext i16 %25 to i64
  call void @transparent_crc(i64 %26, i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0), i32 0) #3
  %27 = icmp ne i32 0, 0
  br i1 %27, label %28, label %30

; <label>:28                                      ; preds = %23
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str3, i32 0, i32 0), i32 %i.1) #3
  br label %30

; <label>:30                                      ; preds = %28, %23
  br label %31

; <label>:31                                      ; preds = %30
  %32 = add nsw i32 %i.1, 1
  br label %21

; <label>:33                                      ; preds = %21
  %34 = load i32* @g_79, align 4
  %35 = sext i32 %34 to i64
  call void @transparent_crc(i64 %35, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i32 0) #3
  %36 = load i32* @crc32_context, align 4
  %37 = xor i32 %36, -1
  %38 = call i32 @platform_main_end(i32 %37, i32 0) #3
  ret i32 %38
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
  %l_4 = alloca [7 x i16], align 2
  br label %1

; <label>:1                                       ; preds = %5, %0
  %i.0 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %2 = icmp slt i32 %i.0, 7
  br i1 %2, label %3, label %7

; <label>:3                                       ; preds = %1
  %4 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 %i.0
  store i16 -28672, i16* %4, align 2
  br label %5

; <label>:5                                       ; preds = %3
  %6 = add nsw i32 %i.0, 1
  br label %1

; <label>:7                                       ; preds = %1
  %8 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 2
  %9 = load i16* %8, align 2
  %10 = call i32 @safe_div_func_int32_t_s_s(i32 -4, i32 9) #3
  %11 = trunc i32 %10 to i8
  %12 = load volatile i32* @g_22, align 4
  %13 = trunc i32 %12 to i8
  %14 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %11, i8 signext %13) #3
  %15 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 2
  %16 = load i16* %15, align 2
  %17 = trunc i16 %16 to i8
  %18 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %17, i32 5) #3
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 -4, %19
  %21 = zext i1 %20 to i32
  %22 = trunc i32 %21 to i16
  %23 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 2
  %24 = load i16* %23, align 2
  %25 = trunc i16 %24 to i8
  %26 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext -108, i8 signext %25) #3
  %27 = sext i8 %26 to i16
  %28 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 6
  %29 = load i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %27, i32 %30) #3
  %32 = sext i16 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %7
  br label %35

; <label>:35                                      ; preds = %34, %7
  %36 = phi i1 [ false, %7 ], [ true, %34 ]
  %37 = zext i1 %36 to i32
  %38 = trunc i32 %37 to i8
  %39 = load i32* @g_37, align 4
  %40 = trunc i32 %39 to i8
  %41 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %38, i8 signext %40) #3
  %42 = sext i8 %41 to i32
  %43 = load i32* @g_37, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 2), align 4
  %45 = or i32 %44, 1
  %46 = trunc i32 %45 to i8
  %47 = load i32* @g_37, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i32* @g_37, align 4
  %50 = load i32* @g_37, align 4
  %51 = trunc i32 %50 to i16
  %52 = call signext i16 @func_25(i8 signext %46, i32 7, i8 zeroext %48, i32 %49, i16 signext %51) #3
  %53 = load i32* @g_37, align 4
  %54 = trunc i32 %53 to i8
  %55 = call i32 @func_13(i16 zeroext %22, i16 signext %52, i8 signext %54) #3
  %56 = load i32* @g_37, align 4
  %57 = call i32 @safe_add_func_int32_t_s_s(i32 %55, i32 %56) #3
  %58 = or i32 13415, %57
  %59 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 5), align 4
  %60 = icmp ule i32 %59, 2273
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 2
  %63 = load i16* %62, align 2
  %64 = zext i16 %63 to i32
  %65 = icmp ult i32 -188088459, %64
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 6
  %68 = load i16* %67, align 2
  %69 = call zeroext i8 @func_7(i16 zeroext -1, i16 zeroext %68, i32 7) #3
  %70 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext 70, i8 signext %69) #3
  %71 = sext i8 %70 to i16
  %72 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %9, i16 zeroext %71) #3
  %73 = zext i16 %72 to i32
  %74 = or i32 %73, 7
  store i32 %74, i32* @g_79, align 4
  %75 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 5), align 4
  ret i32 %75
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #3
  %1 = icmp ne i32 %flag, 0
  br i1 %1, label %2, label %6

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str8, i32 0, i32 0), i8* %vname, i32 %4) #3
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str7, i32 0, i32 0), i32 %crc) #3
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

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = zext i16 %ui1 to i32
  %2 = zext i16 %ui2 to i32
  %3 = sub nsw i32 %1, %2
  %4 = trunc i32 %3 to i16
  ret i16 %4
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = sext i8 %si1 to i32
  %2 = sext i8 %si2 to i32
  %3 = mul nsw i32 %1, %2
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @func_7(i16 zeroext %p_8, i16 zeroext %p_9, i32 %p_10) #0 {
  %l_51 = alloca [8 x i16], align 2
  %l_76 = alloca [2 x [8 x i32]], align 4
  %1 = bitcast [8 x i16]* %l_51 to i8*
  call void @legup_memcpy_2(i8* %1, i8* bitcast ([8 x i16]* @func_7.l_51 to i8*), i32 16)
  %2 = bitcast [2 x [8 x i32]]* %l_76 to i8*
  call void @legup_memcpy_4(i8* %2, i8* bitcast ([2 x [8 x i32]]* @func_7.l_76 to i8*), i32 64)
  %3 = add i16 %p_9, -1
  %4 = zext i16 %3 to i32
  %5 = icmp ult i32 %4, 6
  %6 = zext i1 %5 to i32
  %7 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext 6, i32 %6) #3
  %8 = sext i8 %7 to i32
  %9 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext -1, i32 0) #3
  %10 = sext i8 %9 to i16
  %11 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 2), align 4
  %12 = trunc i32 %11 to i8
  %13 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %12, i32 0) #3
  %14 = zext i8 %13 to i32
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [8 x i16]* %l_51, i32 0, i32 4
  %17 = load i16* %16, align 2
  %18 = trunc i16 %17 to i8
  %19 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %15, i8 zeroext %18) #3
  %20 = zext i8 %19 to i16
  %21 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %10, i16 signext %20) #3
  %22 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %21, i32 10) #3
  %23 = sext i16 %22 to i32
  %24 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 2), align 4
  %25 = getelementptr inbounds [8 x i16]* %l_51, i32 0, i32 0
  %26 = load i16* %25, align 2
  br i1 true, label %29, label %27

; <label>:27                                      ; preds = %0
  %28 = icmp ne i32 %p_10, 0
  br label %29

; <label>:29                                      ; preds = %27, %0
  %30 = phi i1 [ true, %0 ], [ %28, %27 ]
  %31 = zext i1 %30 to i32
  %32 = or i32 %31, %p_10
  %33 = xor i32 %32, -1
  %34 = icmp slt i32 %33, 26199
  %35 = zext i1 %34 to i32
  %36 = icmp eq i32 %35, %p_10
  %37 = zext i1 %36 to i32
  %38 = icmp sge i32 %37, %p_10
  %39 = zext i1 %38 to i32
  %40 = and i32 %24, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %29
  br label %43

; <label>:43                                      ; preds = %42, %29
  %44 = phi i1 [ false, %29 ], [ true, %42 ]
  %45 = zext i1 %44 to i32
  %46 = xor i32 -10, %45
  %47 = trunc i32 %46 to i16
  %48 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %47, i32 14) #3
  %49 = load i32* @g_37, align 4
  %50 = trunc i32 %49 to i8
  %51 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %50, i8 zeroext 0) #3
  %52 = zext i8 %51 to i32
  %53 = and i32 %23, %52
  %54 = getelementptr inbounds [2 x [8 x i32]]* %l_76, i32 0, i32 0
  %55 = getelementptr inbounds [8 x i32]* %54, i32 0, i32 3
  %56 = load i32* %55, align 4
  %57 = xor i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = trunc i32 %57 to i16
  %59 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %58, i32 12) #3
  %60 = zext i16 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

; <label>:62                                      ; preds = %43
  %63 = getelementptr inbounds [8 x i16]* %l_51, i32 0, i32 2
  %64 = load i16* %63, align 2
  %65 = sext i16 %64 to i32
  %66 = icmp ne i32 %65, 0
  br label %67

; <label>:67                                      ; preds = %62, %43
  %68 = phi i1 [ true, %43 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  %70 = icmp sge i32 %69, %p_10
  %71 = zext i1 %70 to i32
  %72 = xor i32 %71, %p_10
  %73 = icmp ugt i32 -1805883725, %72
  %74 = zext i1 %73 to i32
  %75 = load i32* @g_77, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* @g_77, align 4
  %77 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 0), align 4
  %78 = call i32 @safe_sub_func_int32_t_s_s(i32 %76, i32 %77) #3
  %79 = and i32 %8, %78
  %80 = trunc i32 %79 to i8
  %81 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %80, i8 signext -1) #3
  %82 = sext i8 %81 to i32
  %83 = and i32 %82, 7
  %84 = icmp ne i32 %83, %p_10
  %85 = zext i1 %84 to i32
  %86 = load volatile i32* @g_22, align 4
  %87 = call i32 @safe_mod_func_uint32_t_u_u(i32 %85, i32 %86) #3
  %88 = zext i16 %3 to i32
  %89 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 2), align 4
  %90 = call i32 @safe_sub_func_int32_t_s_s(i32 %88, i32 %89) #3
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds [8 x i16]* %l_51, i32 0, i32 5
  %93 = load i16* %92, align 2
  %94 = trunc i16 %93 to i8
  %95 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %91, i8 zeroext %94) #3
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

; <label>:98                                      ; preds = %67
  br label %99

; <label>:99                                      ; preds = %98, %67
  %100 = phi i1 [ false, %67 ], [ true, %98 ]
  %101 = zext i1 %100 to i32
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* getelementptr inbounds ([6 x i16]* @g_78, i32 0, i32 2), align 2
  %103 = trunc i16 %3 to i8
  ret i8 %103
}

; Function Attrs: noinline nounwind
define internal i32 @safe_add_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = icmp sgt i32 %si1, 0
  br i1 %1, label %2, label %7

; <label>:2                                       ; preds = %0
  %3 = icmp sgt i32 %si2, 0
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %2
  %5 = sub nsw i32 2147483647, %si2
  %6 = icmp sgt i32 %si1, %5
  br i1 %6, label %14, label %7

; <label>:7                                       ; preds = %4, %2, %0
  %8 = icmp slt i32 %si1, 0
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %7
  %10 = icmp slt i32 %si2, 0
  br i1 %10, label %11, label %15

; <label>:11                                      ; preds = %9
  %12 = sub nsw i32 -2147483648, %si2
  %13 = icmp slt i32 %si1, %12
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %11, %4
  br label %17

; <label>:15                                      ; preds = %11, %9, %7
  %16 = add nsw i32 %si1, %si2
  br label %17

; <label>:17                                      ; preds = %15, %14
  %18 = phi i32 [ %si1, %14 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind
define internal i32 @func_13(i16 zeroext %p_14, i16 signext %p_15, i8 signext %p_16) #0 {
  ret i32 1209876222
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_sub_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = sext i8 %si1 to i32
  %2 = sext i8 %si2 to i32
  %3 = sub nsw i32 %1, %2
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind
define internal i32 @safe_div_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = icmp eq i32 %si2, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp eq i32 %si1, -2147483648
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %2
  %5 = icmp eq i32 %si2, -1
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %4, %0
  br label %9

; <label>:7                                       ; preds = %4, %2
  %8 = sdiv i32 %si1, %si2
  br label %9

; <label>:9                                       ; preds = %7, %6
  %10 = phi i32 [ %si1, %6 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = icmp uge i32 %right, 32
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = zext i8 %left to i32
  %4 = ashr i32 255, %right
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %2, %0
  %7 = zext i8 %left to i32
  br label %11

; <label>:8                                       ; preds = %2
  %9 = zext i8 %left to i32
  %10 = shl i32 %9, %right
  br label %11

; <label>:11                                      ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ %10, %8 ]
  %13 = trunc i32 %12 to i8
  ret i8 %13
}

; Function Attrs: noinline nounwind
define internal signext i16 @func_25(i8 signext %p_26, i32 %p_27, i8 zeroext %p_28, i32 %p_29, i16 signext %p_30) #0 {
  ret i16 %p_30
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_div_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = sext i8 %si2 to i32
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = sext i8 %si1 to i32
  %5 = icmp eq i32 %4, -128
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %3
  %7 = sext i8 %si2 to i32
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6, %0
  %10 = sext i8 %si1 to i32
  br label %15

; <label>:11                                      ; preds = %6, %3
  %12 = sext i8 %si1 to i32
  %13 = sext i8 %si2 to i32
  %14 = sdiv i32 %12, %13
  br label %15

; <label>:15                                      ; preds = %11, %9
  %16 = phi i32 [ %10, %9 ], [ %14, %11 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = sext i16 %left to i32
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %right, 0
  br i1 %4, label %7, label %5

; <label>:5                                       ; preds = %3
  %6 = icmp sge i32 %right, 32
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %5, %3, %0
  %8 = sext i16 %left to i32
  br label %12

; <label>:9                                       ; preds = %5
  %10 = sext i16 %left to i32
  %11 = ashr i32 %10, %right
  br label %12

; <label>:12                                      ; preds = %9, %7
  %13 = phi i32 [ %8, %7 ], [ %11, %9 ]
  %14 = trunc i32 %13 to i16
  ret i16 %14
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_add_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = sext i8 %si1 to i32
  %2 = sext i8 %si2 to i32
  %3 = add nsw i32 %1, %2
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = zext i8 %ui2 to i32
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = zext i8 %ui1 to i32
  br label %9

; <label>:5                                       ; preds = %0
  %6 = zext i8 %ui1 to i32
  %7 = zext i8 %ui2 to i32
  %8 = sdiv i32 %6, %7
  br label %9

; <label>:9                                       ; preds = %5, %3
  %10 = phi i32 [ %4, %3 ], [ %8, %5 ]
  %11 = trunc i32 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind
define internal i32 @safe_sub_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = xor i32 %si1, %si2
  %2 = xor i32 %si1, %si2
  %3 = and i32 %2, -2147483648
  %4 = xor i32 %si1, %3
  %5 = sub nsw i32 %4, %si2
  %6 = xor i32 %5, %si2
  %7 = and i32 %1, %6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %12

; <label>:10                                      ; preds = %0
  %11 = sub nsw i32 %si1, %si2
  br label %12

; <label>:12                                      ; preds = %10, %9
  %13 = phi i32 [ %si1, %9 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind
define internal i32 @safe_mod_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = icmp eq i32 %ui2, 0
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %5

; <label>:3                                       ; preds = %0
  %4 = urem i32 %ui1, %ui2
  br label %5

; <label>:5                                       ; preds = %3, %2
  %6 = phi i32 [ %ui1, %2 ], [ %4, %3 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = sext i8 %left to i32
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %11, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %right, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %3
  %6 = icmp sge i32 %right, 32
  br i1 %6, label %11, label %7

; <label>:7                                       ; preds = %5
  %8 = sext i8 %left to i32
  %9 = ashr i32 127, %right
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %7, %5, %3, %0
  %12 = sext i8 %left to i32
  br label %16

; <label>:13                                      ; preds = %7
  %14 = sext i8 %left to i32
  %15 = shl i32 %14, %right
  br label %16

; <label>:16                                      ; preds = %13, %11
  %17 = phi i32 [ %12, %11 ], [ %15, %13 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = icmp uge i32 %right, 32
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = zext i16 %left to i32
  %4 = ashr i32 65535, %right
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %2, %0
  %7 = zext i16 %left to i32
  br label %11

; <label>:8                                       ; preds = %2
  %9 = zext i16 %left to i32
  %10 = shl i32 %9, %right
  br label %11

; <label>:11                                      ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ %10, %8 ]
  %13 = trunc i32 %12 to i16
  ret i16 %13
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = sext i16 %left to i32
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %11, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %right, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %3
  %6 = icmp sge i32 %right, 32
  br i1 %6, label %11, label %7

; <label>:7                                       ; preds = %5
  %8 = sext i16 %left to i32
  %9 = ashr i32 32767, %right
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %7, %5, %3, %0
  %12 = sext i16 %left to i32
  br label %16

; <label>:13                                      ; preds = %7
  %14 = sext i16 %left to i32
  %15 = shl i32 %14, %right
  br label %16

; <label>:16                                      ; preds = %13, %11
  %17 = phi i32 [ %12, %11 ], [ %15, %13 ]
  %18 = trunc i32 %17 to i16
  ret i16 %18
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = sext i16 %si1 to i32
  %2 = sext i16 %si2 to i32
  %3 = mul nsw i32 %1, %2
  %4 = trunc i32 %3 to i16
  ret i16 %4
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = sext i8 %left to i32
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp uge i32 %right, 32
  br i1 %4, label %9, label %5

; <label>:5                                       ; preds = %3
  %6 = sext i8 %left to i32
  %7 = ashr i32 127, %right
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %5, %3, %0
  %10 = sext i8 %left to i32
  br label %14

; <label>:11                                      ; preds = %5
  %12 = sext i8 %left to i32
  %13 = shl i32 %12, %right
  br label %14

; <label>:14                                      ; preds = %11, %9
  %15 = phi i32 [ %10, %9 ], [ %13, %11 ]
  %16 = trunc i32 %15 to i8
  ret i8 %16
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = zext i8 %ui1 to i32
  %2 = zext i8 %ui2 to i32
  %3 = add nsw i32 %1, %2
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = icmp uge i32 %right, 32
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = zext i8 %left to i32
  br label %7

; <label>:4                                       ; preds = %0
  %5 = zext i8 %left to i32
  %6 = ashr i32 %5, %right
  br label %7

; <label>:7                                       ; preds = %4, %2
  %8 = phi i32 [ %3, %2 ], [ %6, %4 ]
  %9 = trunc i32 %8 to i8
  ret i8 %9
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = icmp uge i32 %right, 32
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = zext i16 %left to i32
  br label %7

; <label>:4                                       ; preds = %0
  %5 = zext i16 %left to i32
  %6 = ashr i32 %5, %right
  br label %7

; <label>:7                                       ; preds = %4, %2
  %8 = phi i32 [ %3, %2 ], [ %6, %4 ]
  %9 = trunc i32 %8 to i16
  ret i16 %9
}

declare void @legup_memcpy_2(i8*, i8*, i32)

declare void @legup_memcpy_4(i8*, i8*, i32)

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
