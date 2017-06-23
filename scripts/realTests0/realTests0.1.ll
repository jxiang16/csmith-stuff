; ModuleID = 'realTests0.1.bc'
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
  call void @platform_main_begin() #3
  call void @crc32_gentab() #3
  %1 = call i32 @func_1() #3
  %2 = load volatile i32* @g_9, align 4
  %3 = sext i32 %2 to i64
  call void @transparent_crc(i64 %3, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 0) #3
  %4 = load i32* @g_33, align 4
  %5 = sext i32 %4 to i64
  call void @transparent_crc(i64 %5, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 0) #3
  %6 = load i16* @g_34, align 2
  %7 = sext i16 %6 to i64
  call void @transparent_crc(i64 %7, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 0) #3
  %8 = load i16* @g_79, align 2
  %9 = zext i16 %8 to i64
  call void @transparent_crc(i64 %9, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 0) #3
  %10 = load i16* @g_82, align 2
  %11 = sext i16 %10 to i64
  call void @transparent_crc(i64 %11, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 0) #3
  %12 = load i32* @g_91, align 4
  %13 = zext i32 %12 to i64
  call void @transparent_crc(i64 %13, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 0) #3
  %14 = load i16* @g_107, align 2
  %15 = zext i16 %14 to i64
  call void @transparent_crc(i64 %15, i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), i32 0) #3
  %16 = load i32* @crc32_context, align 4
  %17 = xor i32 %16, -1
  %18 = call i32 @platform_main_end(i32 %17, i32 0) #3
  ret i32 %18
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
  %exitcond1 = icmp ne i32 %2, 256
  br i1 %exitcond1, label %3, label %18

; <label>:3                                       ; preds = %1
  br label %4

; <label>:4                                       ; preds = %14, %3
  %indvar = phi i32 [ %indvar.next, %14 ], [ 0, %3 ]
  %crc.0 = phi i32 [ %2, %3 ], [ %crc.1, %14 ]
  %exitcond = icmp ne i32 %indvar, 8
  br i1 %exitcond, label %5, label %15

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
  %crc.0.lcssa = phi i32 [ %crc.0, %4 ]
  store i32 %crc.0.lcssa, i32* %scevgep, align 4
  br label %16

; <label>:16                                      ; preds = %15
  %17 = add nsw i32 %2, 1
  br label %1

; <label>:18                                      ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @func_1() #0 {
  %l_2 = alloca [4 x i16], align 2
  br label %1

; <label>:1                                       ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %scevgep = getelementptr [4 x i16]* %l_2, i32 0, i32 %2
  %exitcond = icmp ne i32 %2, 4
  br i1 %exitcond, label %3, label %6

; <label>:3                                       ; preds = %1
  store i16 -1, i16* %scevgep, align 2
  br label %4

; <label>:4                                       ; preds = %3
  %5 = add nsw i32 %2, 1
  br label %1

; <label>:6                                       ; preds = %1
  %7 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %8 = load i16* %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %57, label %10

; <label>:10                                      ; preds = %6
  %11 = load volatile i32* @g_9, align 4
  %12 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %13 = load i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 0
  %16 = load i16* %15, align 2
  %17 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 1
  %18 = load i16* %17, align 2
  %19 = trunc i16 %18 to i8
  %20 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext 6, i8 zeroext %19) #3
  %21 = zext i8 %20 to i32
  %22 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %16, i32 %21) #3
  %23 = sext i16 %22 to i32
  store i32 %23, i32* @g_33, align 4
  %24 = load volatile i32* @g_9, align 4
  %25 = and i32 %23, %24
  %26 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %27 = load i16* %26, align 2
  %28 = zext i16 %27 to i32
  %29 = call i32 @safe_add_func_int32_t_s_s(i32 %25, i32 %28) #3
  %30 = call i32 @safe_mod_func_int32_t_s_s(i32 1604088068, i32 %29) #3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %10
  br label %33

; <label>:33                                      ; preds = %32, %10
  %34 = phi i32 [ 1, %10 ], [ 0, %32 ]
  %35 = call i32 @safe_div_func_uint32_t_u_u(i32 %14, i32 %34) #3
  %36 = load i16* @g_34, align 2
  %37 = trunc i16 %36 to i8
  %38 = call i32 @func_14(i8 zeroext 8, i32 %35, i8 zeroext %37, i32 8, i8 zeroext 6) #3
  %39 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %40 = load i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %38, %41
  %43 = trunc i32 %42 to i8
  %44 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %43, i8 signext 126) #3
  %45 = sext i8 %44 to i16
  %46 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %47 = load i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %45, i32 %48) #3
  %50 = trunc i16 %49 to i8
  %51 = load i16* @g_34, align 2
  %52 = sext i16 %51 to i32
  %53 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %54 = load i16* %53, align 2
  %55 = trunc i16 %54 to i8
  %56 = call zeroext i8 @func_3(i8 signext %50, i32 %52, i8 zeroext %55, i32 6, i16 signext 6) #3
  br label %57

; <label>:57                                      ; preds = %33, %6
  %58 = load i16* @g_79, align 2
  %59 = zext i16 %58 to i32
  ret i32 %59
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

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str7, i32 0, i32 0), i32 %crc) #4
  ret i32 %crc
}

declare i32 @printf(i8*, ...) #1

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
define internal zeroext i8 @func_3(i8 signext %p_4, i32 %p_5, i8 zeroext %p_6, i32 %p_7, i16 signext %p_8) #0 {
  %1 = load i16* @g_34, align 2
  %2 = sext i16 %1 to i32
  %3 = load i32* @g_91, align 4
  %4 = add i32 %3, -1
  store i32 %4, i32* @g_91, align 4
  %5 = trunc i32 %3 to i8
  %6 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -32, i8 signext 54) #3
  %7 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext -13770, i32 11) #3
  %8 = trunc i16 %7 to i8
  %9 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %8, i8 zeroext 54) #3
  %10 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %9, i32 5) #3
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %p_5, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  br label %14

; <label>:14                                      ; preds = %13, %0
  %15 = phi i32 [ 1, %0 ], [ 0, %13 ]
  %16 = call i32 @safe_sub_func_int32_t_s_s(i32 %11, i32 %15) #3
  %17 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %5, i32 7) #3
  %18 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext 21, i8 zeroext %17) #3
  %19 = zext i8 %18 to i32
  %20 = xor i32 %19, %p_7
  %21 = call i32 @safe_mod_func_uint32_t_u_u(i32 %2, i32 %20) #3
  %22 = trunc i32 %21 to i8
  %23 = trunc i32 %p_7 to i8
  %24 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %22, i8 zeroext %23) #3
  %25 = zext i8 %24 to i16
  store i16 %25, i16* @g_107, align 2
  %26 = load i32* @g_33, align 4
  %27 = trunc i32 %26 to i8
  ret i8 %27
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = icmp slt i16 %left, 0
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i32 %right, 31
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %2, %0
  %5 = sext i16 %left to i32
  br label %9

; <label>:6                                       ; preds = %2
  %7 = sext i16 %left to i32
  %8 = ashr i32 %7, %right
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  %11 = trunc i32 %10 to i16
  ret i16 %11
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
define internal i32 @func_14(i8 zeroext %p_15, i32 %p_16, i8 zeroext %p_17, i32 %p_18, i8 zeroext %p_19) #0 {
  %l_62 = alloca [4 x i32], align 4
  %l_64 = alloca [8 x [9 x i8]], align 1
  %1 = bitcast [4 x i32]* %l_62 to i8*
  call void @legup_memcpy_4(i8* %1, i8* bitcast ([4 x i32]* @func_14.l_62 to i8*), i32 16)
  %2 = getelementptr inbounds [8 x [9 x i8]]* %l_64, i32 0, i32 0, i32 0
  call void @legup_memcpy_1(i8* %2, i8* getelementptr inbounds ([8 x [9 x i8]]* @func_14.l_64, i32 0, i32 0, i32 0), i32 72)
  br label %3

; <label>:3                                       ; preds = %6, %0
  %4 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %exitcond = icmp ne i32 %4, 2
  br i1 %exitcond, label %5, label %8

; <label>:5                                       ; preds = %3
  br label %6

; <label>:6                                       ; preds = %5
  %7 = add nsw i32 %4, 1
  br label %3

; <label>:8                                       ; preds = %3
  %9 = load volatile i32* @g_9, align 4
  %10 = trunc i32 %9 to i16
  %11 = load i32* @g_33, align 4
  %12 = load i16* @g_34, align 2
  %13 = icmp ne i16 %12, -1
  %14 = zext i1 %13 to i32
  %15 = or i32 %11, %14
  %16 = or i32 %15, %p_18
  %17 = zext i8 %p_17 to i32
  %18 = and i32 %16, %17
  %19 = load i32* @g_33, align 4
  %20 = icmp ult i32 %18, %19
  %21 = zext i1 %20 to i32
  %.masked = and i32 %19, 1
  %22 = xor i32 %21, %.masked
  %23 = trunc i32 %22 to i8
  %24 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %23, i8 signext -1) #3
  %25 = load i32* @g_33, align 4
  %26 = icmp ne i32 %25, 534406659
  %27 = zext i1 %26 to i16
  %28 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %27, i16 signext -18622) #3
  %29 = trunc i16 %28 to i8
  %30 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %29, i32 6) #3
  %31 = zext i8 %30 to i16
  %32 = zext i8 %p_19 to i16
  %33 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %31, i16 zeroext %32) #3
  %34 = zext i16 %33 to i32
  %35 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext -96, i32 %34) #3
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

; <label>:37                                      ; preds = %8
  br label %38

; <label>:38                                      ; preds = %37, %8
  %39 = phi i8 [ 0, %8 ], [ 1, %37 ]
  %40 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %39, i32 2) #3
  %41 = sext i8 %40 to i32
  %42 = getelementptr inbounds [4 x i32]* %l_62, i32 0, i32 0
  %43 = load i32* %42, align 4
  %44 = and i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = trunc i32 %44 to i16
  %46 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %10, i16 signext %45) #3
  %47 = icmp eq i16 %46, 0
  %48 = zext i1 %47 to i16
  %49 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %48, i16 zeroext 18190) #3
  %50 = zext i16 %49 to i32
  %51 = icmp sge i32 %50, %p_16
  %52 = zext i1 %51 to i32
  %53 = call i32 @safe_add_func_uint32_t_u_u(i32 %52, i32 -1) #3
  %54 = call i32 @func_37(i32 1) #3
  %55 = load i16* @g_34, align 2
  %56 = sext i16 %55 to i32
  %57 = call i32 @safe_sub_func_int32_t_s_s(i32 %54, i32 %56) #3
  %58 = getelementptr inbounds [8 x [9 x i8]]* %l_64, i32 0, i32 3, i32 6
  %59 = load i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sge i32 %57, %60
  %62 = zext i1 %61 to i16
  store i16 %62, i16* @g_82, align 2
  %63 = getelementptr inbounds [8 x [9 x i8]]* %l_64, i32 0, i32 2, i32 3
  %64 = load i8* %63, align 1
  %65 = sext i8 %64 to i32
  ret i32 %65
}

; Function Attrs: noinline nounwind
define internal i32 @safe_div_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = icmp eq i32 %ui2, 0
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %5

; <label>:3                                       ; preds = %0
  %4 = udiv i32 %ui1, %ui2
  br label %5

; <label>:5                                       ; preds = %3, %2
  %6 = phi i32 [ %ui1, %2 ], [ %4, %3 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind
define internal i32 @safe_mod_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
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
  %8 = srem i32 %si1, %si2
  br label %9

; <label>:9                                       ; preds = %7, %6
  %10 = phi i32 [ %si1, %6 ], [ %8, %7 ]
  ret i32 %10
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
define internal signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = icmp slt i16 %left, 0
  br i1 %1, label %8, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i32 %right, 31
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %2
  %5 = sext i16 %left to i32
  %6 = lshr i32 32767, %right
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %4, %2, %0
  %9 = sext i16 %left to i32
  br label %13

; <label>:10                                      ; preds = %4
  %11 = sext i16 %left to i32
  %12 = shl i32 %11, %right
  br label %13

; <label>:13                                      ; preds = %10, %8
  %14 = phi i32 [ %9, %8 ], [ %12, %10 ]
  %15 = trunc i32 %14 to i16
  ret i16 %15
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = mul i8 %ui1, %ui2
  ret i8 %1
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
define internal i32 @func_37(i32 %p_38) #0 {
  %l_72 = alloca [6 x i32], align 4
  %l_81 = alloca [3 x [1 x [2 x i32]]], align 4
  %1 = bitcast [6 x i32]* %l_72 to i8*
  call void @legup_memcpy_4(i8* %1, i8* bitcast ([6 x i32]* @func_37.l_72 to i8*), i32 24)
  %2 = bitcast [3 x [1 x [2 x i32]]]* %l_81 to i8*
  call void @legup_memcpy_4(i8* %2, i8* bitcast ([3 x [1 x [2 x i32]]]* @func_37.l_81 to i8*), i32 24)
  %3 = load i16* @g_34, align 2
  %4 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 4
  %5 = load i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24

; <label>:7                                       ; preds = %0
  %8 = load volatile i32* @g_9, align 4
  %9 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext -8) #3
  %10 = sext i16 %9 to i32
  %11 = load i16* @g_34, align 2
  %12 = sext i16 %11 to i32
  %13 = trunc i32 %p_38 to i16
  store i16 %13, i16* @g_79, align 2
  %14 = and i32 %p_38, 65535
  %15 = icmp sgt i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = icmp ne i32 %10, %16
  %18 = zext i1 %17 to i8
  %19 = trunc i32 %p_38 to i8
  %20 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %18, i8 signext %19) #3
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 9
  %23 = call i32 @safe_sub_func_uint32_t_u_u(i32 %8, i32 %22) #3
  br label %24

; <label>:24                                      ; preds = %7, %0
  %25 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %3, i32 1) #3
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 1
  %28 = load i32* %27, align 4
  %29 = icmp ule i32 %26, %28
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 4
  %32 = load i32* %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %35, label %34

; <label>:34                                      ; preds = %24
  br label %35

; <label>:35                                      ; preds = %34, %24
  %36 = phi i8 [ 0, %24 ], [ 1, %34 ]
  %37 = trunc i32 %p_38 to i8
  %38 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %36, i8 zeroext %37) #3
  %39 = icmp eq i8 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i32* @g_33, align 4
  %42 = icmp sle i32 %40, %41
  %43 = zext i1 %42 to i16
  %44 = trunc i32 %p_38 to i16
  %45 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %43, i16 signext %44) #3
  %46 = load i16* @g_34, align 2
  %47 = sext i16 %46 to i32
  %48 = or i32 %47, %p_38
  %49 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 5
  %50 = load i32* %49, align 4
  %51 = icmp uge i32 %48, %50
  %52 = zext i1 %51 to i32
  %53 = load i16* @g_34, align 2
  %54 = sext i16 %53 to i32
  %55 = icmp sge i32 %52, %54
  %56 = zext i1 %55 to i32
  %57 = getelementptr inbounds [3 x [1 x [2 x i32]]]* %l_81, i32 0, i32 2, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 4
  %59 = load i32* %58, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = add i32 %ui1, %ui2
  ret i32 %1
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = icmp eq i16 %ui2, 0
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %4

; <label>:3                                       ; preds = %0
  %div = udiv i16 %ui1, %ui2
  br label %4

; <label>:4                                       ; preds = %3, %2
  %.in = phi i16 [ %ui1, %2 ], [ %div, %3 ]
  ret i16 %.in
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = mul i16 %si1, %si2
  ret i16 %1
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = icmp slt i8 %left, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp slt i32 %right, 0
  br i1 %3, label %6, label %4

; <label>:4                                       ; preds = %2
  %5 = icmp sgt i32 %right, 31
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %4, %2, %0
  %7 = sext i8 %left to i32
  br label %11

; <label>:8                                       ; preds = %4
  %9 = sext i8 %left to i32
  %10 = ashr i32 %9, %right
  br label %11

; <label>:11                                      ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ %10, %8 ]
  %13 = trunc i32 %12 to i8
  ret i8 %13
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = sub i16 %ui1, %ui2
  ret i16 %1
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = icmp slt i32 %right, 0
  br i1 %1, label %8, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp sgt i32 %right, 31
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %2
  %5 = zext i8 %left to i32
  %6 = lshr i32 255, %right
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %4, %2, %0
  %9 = zext i8 %left to i32
  br label %13

; <label>:10                                      ; preds = %4
  %11 = zext i8 %left to i32
  %12 = shl i32 %11, %right
  br label %13

; <label>:13                                      ; preds = %10, %8
  %14 = phi i32 [ %9, %8 ], [ %12, %10 ]
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_div_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = icmp eq i16 %si2, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp eq i16 %si1, -32768
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %2
  %5 = icmp eq i16 %si2, -1
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %4, %0
  %7 = sext i16 %si1 to i32
  br label %12

; <label>:8                                       ; preds = %4, %2
  %9 = sext i16 %si1 to i32
  %10 = sext i16 %si2 to i32
  %11 = sdiv i32 %9, %10
  br label %12

; <label>:12                                      ; preds = %8, %6
  %13 = phi i32 [ %7, %6 ], [ %11, %8 ]
  %14 = trunc i32 %13 to i16
  ret i16 %14
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_sub_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = sub i8 %si1, %si2
  ret i8 %1
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_mod_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = icmp eq i16 %si2, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp eq i16 %si1, -32768
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %2
  %5 = icmp eq i16 %si2, -1
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %4, %0
  %7 = sext i16 %si1 to i32
  br label %12

; <label>:8                                       ; preds = %4, %2
  %9 = sext i16 %si1 to i32
  %10 = sext i16 %si2 to i32
  %11 = srem i32 %9, %10
  br label %12

; <label>:12                                      ; preds = %8, %6
  %13 = phi i32 [ %7, %6 ], [ %11, %8 ]
  %14 = trunc i32 %13 to i16
  ret i16 %14
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = add i8 %ui1, %ui2
  ret i8 %1
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
define internal i32 @safe_sub_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = sub i32 %ui1, %ui2
  ret i32 %1
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = mul i8 %si1, %si2
  ret i8 %1
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = sub i16 0, %si
  ret i16 %1
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
define internal zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = icmp slt i32 %right, 0
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp sgt i32 %right, 31
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %2, %0
  %5 = zext i8 %left to i32
  br label %9

; <label>:6                                       ; preds = %2
  %7 = zext i8 %left to i32
  %8 = lshr i32 %7, %right
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  %11 = trunc i32 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = icmp slt i8 %left, 0
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i32 %right, 31
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %2, %0
  %5 = sext i8 %left to i32
  br label %9

; <label>:6                                       ; preds = %2
  %7 = sext i8 %left to i32
  %8 = ashr i32 %7, %right
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  %11 = trunc i32 %10 to i8
  ret i8 %11
}

; Function Attrs: nounwind
define internal void @legup_memcpy_1(i8* %d, i8* %s, i32 %n) #2 {
  %1 = alloca i32, align 4
  %dt = alloca i8*, align 4
  %st = alloca i8*, align 4
  store i32 %n, i32* %1, align 4
  store i8* %d, i8** %dt, align 4
  store i8* %s, i8** %st, align 4
  br label %2

; <label>:2                                       ; preds = %6, %0
  %3 = load i32* %1, align 4
  %4 = add i32 %3, -1
  store i32 %4, i32* %1, align 4
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %2
  %7 = load i8** %st, align 4
  %8 = getelementptr inbounds i8* %7, i32 1
  store i8* %8, i8** %st, align 4
  %9 = load i8* %7, align 1
  %10 = load i8** %dt, align 4
  %11 = getelementptr inbounds i8* %10, i32 1
  store i8* %11, i8** %dt, align 4
  store i8 %9, i8* %10, align 1
  br label %2

; <label>:12                                      ; preds = %2
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
