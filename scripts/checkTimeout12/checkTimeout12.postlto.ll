; ModuleID = 'checkTimeout12.postlto.bc'
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

; <label>:6                                       ; preds = %14, %0
  %i.0 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %7 = icmp slt i32 %i.0, 7
  br i1 %7, label %8, label %16

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds [7 x i32]* @g_38, i32 0, i32 %i.0
  %10 = load i32* %9, align 4
  %11 = zext i32 %10 to i64
  call void @transparent_crc(i64 %11, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 0) #3
  br i1 false, label %12, label %13

; <label>:12                                      ; preds = %8
  br label %13

; <label>:13                                      ; preds = %12, %8
  br label %14

; <label>:14                                      ; preds = %13
  %15 = add nsw i32 %i.0, 1
  br label %6

; <label>:16                                      ; preds = %6
  %17 = load i32* @g_77, align 4
  %18 = sext i32 %17 to i64
  call void @transparent_crc(i64 %18, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 0) #3
  br label %19

; <label>:19                                      ; preds = %27, %16
  %i.1 = phi i32 [ 0, %16 ], [ %28, %27 ]
  %20 = icmp slt i32 %i.1, 6
  br i1 %20, label %21, label %29

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds [6 x i16]* @g_78, i32 0, i32 %i.1
  %23 = load i16* %22, align 2
  %24 = zext i16 %23 to i64
  call void @transparent_crc(i64 %24, i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0), i32 0) #3
  br i1 false, label %25, label %26

; <label>:25                                      ; preds = %21
  br label %26

; <label>:26                                      ; preds = %25, %21
  br label %27

; <label>:27                                      ; preds = %26
  %28 = add nsw i32 %i.1, 1
  br label %19

; <label>:29                                      ; preds = %19
  %30 = load i32* @g_79, align 4
  %31 = sext i32 %30 to i64
  call void @transparent_crc(i64 %31, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i32 0) #3
  %32 = load i32* @crc32_context, align 4
  %33 = xor i32 %32, -1
  %34 = call i32 @platform_main_end(i32 %33, i32 0) #3
  ret i32 %34
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
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

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
  %19 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 2
  %20 = load i16* %19, align 2
  %21 = trunc i16 %20 to i8
  %22 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext -108, i8 signext %21) #3
  %23 = sext i8 %22 to i16
  %24 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 6
  %25 = load i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %23, i32 %26) #3
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %30, label %29

; <label>:29                                      ; preds = %7
  br label %30

; <label>:30                                      ; preds = %29, %7
  %31 = phi i8 [ 0, %7 ], [ 1, %29 ]
  %32 = load i32* @g_37, align 4
  %33 = trunc i32 %32 to i8
  %34 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %31, i8 signext %33) #3
  %35 = sext i8 %34 to i32
  %36 = load i32* @g_37, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 2), align 4
  %38 = or i32 %37, 1
  %39 = trunc i32 %38 to i8
  %40 = load i32* @g_37, align 4
  %41 = trunc i32 %40 to i8
  %42 = trunc i32 %40 to i16
  %43 = call signext i16 @func_25(i8 signext %39, i32 7, i8 zeroext %41, i32 %40, i16 signext %42) #3
  %44 = load i32* @g_37, align 4
  %45 = trunc i32 %44 to i8
  %46 = call i32 @func_13(i16 zeroext 1, i16 signext %43, i8 signext %45) #3
  %47 = load i32* @g_37, align 4
  %48 = call i32 @safe_add_func_int32_t_s_s(i32 %46, i32 %47) #3
  %49 = getelementptr inbounds [7 x i16]* %l_4, i32 0, i32 6
  %50 = load i16* %49, align 2
  %51 = call zeroext i8 @func_7(i16 zeroext -1, i16 zeroext %50, i32 7) #3
  %52 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext 70, i8 signext %51) #3
  %53 = sext i8 %52 to i16
  %54 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %9, i16 zeroext %53) #3
  %55 = zext i16 %54 to i32
  %56 = or i32 %55, 7
  store i32 %56, i32* @g_79, align 4
  %57 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 5), align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #3
  %1 = icmp eq i32 %flag, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str8, i32 0, i32 0), i8* %vname, i32 %4) #4
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str7, i32 0, i32 0), i32 %crc) #4
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

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = sub i16 %ui1, %ui2
  ret i16 %1
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = mul i8 %si1, %si2
  ret i8 %1
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
  %4 = icmp ult i16 %3, 6
  %5 = zext i1 %4 to i32
  %6 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext 6, i32 %5) #3
  %7 = zext i8 %6 to i32
  %8 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext -1, i32 0) #3
  %9 = sext i8 %8 to i16
  %10 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 2), align 4
  %11 = trunc i32 %10 to i8
  %12 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %11, i32 0) #3
  %13 = getelementptr inbounds [8 x i16]* %l_51, i32 0, i32 4
  %14 = load i16* %13, align 2
  %15 = trunc i16 %14 to i8
  %16 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %12, i8 zeroext %15) #3
  %17 = zext i8 %16 to i16
  %18 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %9, i16 signext %17) #3
  %19 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %18, i32 10) #3
  %20 = zext i16 %19 to i32
  %21 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 2), align 4
  br i1 true, label %23, label %22

; <label>:22                                      ; preds = %0
  br label %23

; <label>:23                                      ; preds = %22, %0
  %p_10.not = and i32 %p_10, -2
  %24 = xor i32 %p_10.not, -2
  %25 = icmp slt i32 %24, 26199
  %26 = zext i1 %25 to i32
  %27 = icmp eq i32 %26, %p_10
  %28 = zext i1 %27 to i32
  %29 = icmp sge i32 %28, %p_10
  %30 = zext i1 %29 to i32
  %31 = and i32 %21, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

; <label>:33                                      ; preds = %23
  br label %34

; <label>:34                                      ; preds = %33, %23
  %35 = phi i16 [ -10, %23 ], [ -9, %33 ]
  %36 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %35, i32 14) #3
  %37 = load i32* @g_37, align 4
  %38 = trunc i32 %37 to i8
  %39 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %38, i8 zeroext 0) #3
  %40 = zext i8 %39 to i32
  %41 = and i32 %20, %40
  %42 = getelementptr inbounds [2 x [8 x i32]]* %l_76, i32 0, i32 0, i32 3
  %43 = load i32* %42, align 4
  %44 = xor i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = trunc i32 %44 to i16
  %46 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %45, i32 12) #3
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %52

; <label>:48                                      ; preds = %34
  %49 = getelementptr inbounds [8 x i16]* %l_51, i32 0, i32 2
  %50 = load i16* %49, align 2
  %51 = icmp ne i16 %50, 0
  br label %52

; <label>:52                                      ; preds = %48, %34
  %53 = phi i1 [ true, %34 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = icmp sge i32 %54, %p_10
  %56 = zext i1 %55 to i32
  %57 = xor i32 %56, %p_10
  %58 = icmp ult i32 %57, -1805883725
  %59 = zext i1 %58 to i32
  %60 = load i32* @g_77, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* @g_77, align 4
  %62 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 0), align 4
  %63 = call i32 @safe_sub_func_int32_t_s_s(i32 %61, i32 %62) #3
  %64 = and i32 %7, %63
  %65 = trunc i32 %64 to i8
  %66 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %65, i8 signext -1) #3
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 7
  %69 = icmp ne i32 %68, %p_10
  %70 = zext i1 %69 to i32
  %71 = load volatile i32* @g_22, align 4
  %72 = call i32 @safe_mod_func_uint32_t_u_u(i32 %70, i32 %71) #3
  %73 = zext i16 %3 to i32
  %74 = load i32* getelementptr inbounds ([7 x i32]* @g_38, i32 0, i32 2), align 4
  %75 = call i32 @safe_sub_func_int32_t_s_s(i32 %73, i32 %74) #3
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds [8 x i16]* %l_51, i32 0, i32 5
  %78 = load i16* %77, align 2
  %79 = trunc i16 %78 to i8
  %80 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %76, i8 zeroext %79) #3
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82

; <label>:82                                      ; preds = %52
  br label %83

; <label>:83                                      ; preds = %82, %52
  %84 = phi i16 [ 0, %52 ], [ 1, %82 ]
  store i16 %84, i16* getelementptr inbounds ([6 x i16]* @g_78, i32 0, i32 2), align 2
  %85 = trunc i16 %3 to i8
  ret i8 %85
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
  %6 = icmp slt i32 %5, %si1
  br i1 %6, label %14, label %7

; <label>:7                                       ; preds = %4, %2, %0
  %8 = icmp slt i32 %si1, 0
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %7
  %10 = icmp slt i32 %si2, 0
  br i1 %10, label %11, label %15

; <label>:11                                      ; preds = %9
  %12 = sub nsw i32 -2147483648, %si2
  %13 = icmp sgt i32 %12, %si1
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
  %1 = sub i8 %si1, %si2
  ret i8 %1
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
  %1 = icmp ugt i32 %right, 31
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = zext i8 %left to i32
  %4 = lshr i32 255, %right
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
  %1 = icmp eq i8 %si2, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp eq i8 %si1, -128
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %2
  %5 = icmp eq i8 %si2, -1
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %4, %0
  %7 = sext i8 %si1 to i32
  br label %12

; <label>:8                                       ; preds = %4, %2
  %9 = sext i8 %si1 to i32
  %10 = sext i8 %si2 to i32
  %11 = sdiv i32 %9, %10
  br label %12

; <label>:12                                      ; preds = %8, %6
  %13 = phi i32 [ %7, %6 ], [ %11, %8 ]
  %14 = trunc i32 %13 to i8
  ret i8 %14
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = icmp slt i16 %left, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp slt i32 %right, 0
  br i1 %3, label %6, label %4

; <label>:4                                       ; preds = %2
  %5 = icmp sgt i32 %right, 31
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %4, %2, %0
  %7 = sext i16 %left to i32
  br label %11

; <label>:8                                       ; preds = %4
  %9 = sext i16 %left to i32
  %10 = ashr i32 %9, %right
  br label %11

; <label>:11                                      ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ %10, %8 ]
  %13 = trunc i32 %12 to i16
  ret i16 %13
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_add_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = add i8 %si1, %si2
  ret i8 %1
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = icmp eq i8 %ui2, 0
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %4

; <label>:3                                       ; preds = %0
  %div = udiv i8 %ui1, %ui2
  br label %4

; <label>:4                                       ; preds = %3, %2
  %.in = phi i8 [ %ui1, %2 ], [ %div, %3 ]
  ret i8 %.in
}

; Function Attrs: noinline nounwind
define internal i32 @safe_sub_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = xor i32 %si1, %si2
  %2 = xor i32 %si1, %si2
  %3 = and i32 %2, -2147483648
  %4 = xor i32 %3, %si1
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
  %1 = icmp slt i8 %left, 0
  br i1 %1, label %10, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp slt i32 %right, 0
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %2
  %5 = icmp sgt i32 %right, 31
  br i1 %5, label %10, label %6

; <label>:6                                       ; preds = %4
  %7 = sext i8 %left to i32
  %8 = lshr i32 127, %right
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6, %4, %2, %0
  %11 = sext i8 %left to i32
  br label %15

; <label>:12                                      ; preds = %6
  %13 = sext i8 %left to i32
  %14 = shl i32 %13, %right
  br label %15

; <label>:15                                      ; preds = %12, %10
  %16 = phi i32 [ %11, %10 ], [ %14, %12 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = icmp ugt i32 %right, 31
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = zext i16 %left to i32
  %4 = lshr i32 65535, %right
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
  %1 = icmp slt i16 %left, 0
  br i1 %1, label %10, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp slt i32 %right, 0
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %2
  %5 = icmp sgt i32 %right, 31
  br i1 %5, label %10, label %6

; <label>:6                                       ; preds = %4
  %7 = sext i16 %left to i32
  %8 = lshr i32 32767, %right
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6, %4, %2, %0
  %11 = sext i16 %left to i32
  br label %15

; <label>:12                                      ; preds = %6
  %13 = sext i16 %left to i32
  %14 = shl i32 %13, %right
  br label %15

; <label>:15                                      ; preds = %12, %10
  %16 = phi i32 [ %11, %10 ], [ %14, %12 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = mul i16 %si1, %si2
  ret i16 %1
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = icmp slt i8 %left, 0
  br i1 %1, label %8, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i32 %right, 31
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %2
  %5 = sext i8 %left to i32
  %6 = lshr i32 127, %right
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %4, %2, %0
  %9 = sext i8 %left to i32
  br label %13

; <label>:10                                      ; preds = %4
  %11 = sext i8 %left to i32
  %12 = shl i32 %11, %right
  br label %13

; <label>:13                                      ; preds = %10, %8
  %14 = phi i32 [ %9, %8 ], [ %12, %10 ]
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = add i8 %ui1, %ui2
  ret i8 %1
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = icmp ugt i32 %right, 31
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = zext i8 %left to i32
  br label %7

; <label>:4                                       ; preds = %0
  %5 = zext i8 %left to i32
  %6 = lshr i32 %5, %right
  br label %7

; <label>:7                                       ; preds = %4, %2
  %8 = phi i32 [ %3, %2 ], [ %6, %4 ]
  %9 = trunc i32 %8 to i8
  ret i8 %9
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = icmp ugt i32 %right, 31
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = zext i16 %left to i32
  br label %7

; <label>:4                                       ; preds = %0
  %5 = zext i16 %left to i32
  %6 = lshr i32 %5, %right
  br label %7

; <label>:7                                       ; preds = %4, %2
  %8 = phi i32 [ %3, %2 ], [ %6, %4 ]
  %9 = trunc i32 %8 to i16
  ret i16 %9
}

; Function Attrs: nounwind
define internal void @legup_memcpy_2(i8* %d, i8* %s, i32 %n) #2 {
  %1 = alloca i32, align 4
  %dt = alloca i16*, align 4
  %st = alloca i16*, align 4
  store i32 %n, i32* %1, align 4
  %2 = bitcast i8* %d to i16*
  store i16* %2, i16** %dt, align 4
  %3 = bitcast i8* %s to i16*
  store i16* %3, i16** %st, align 4
  %4 = lshr i32 %n, 1
  store i32 %4, i32* %1, align 4
  br label %5

; <label>:5                                       ; preds = %9, %0
  %6 = load i32* %1, align 4
  %7 = add i32 %6, -1
  store i32 %7, i32* %1, align 4
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %5
  %10 = load i16** %st, align 4
  %11 = getelementptr inbounds i16* %10, i32 1
  store i16* %11, i16** %st, align 4
  %12 = load i16* %10, align 2
  %13 = load i16** %dt, align 4
  %14 = getelementptr inbounds i16* %13, i32 1
  store i16* %14, i16** %dt, align 4
  store i16 %12, i16* %13, align 2
  br label %5

; <label>:15                                      ; preds = %5
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
