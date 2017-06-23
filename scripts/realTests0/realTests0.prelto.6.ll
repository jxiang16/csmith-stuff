; ModuleID = 'realTests0.prelto.6.bc'
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
  %l_2 = alloca [4 x i16], align 2
  br label %1

; <label>:1                                       ; preds = %5, %0
  %i.0 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %2 = icmp slt i32 %i.0, 4
  br i1 %2, label %3, label %7

; <label>:3                                       ; preds = %1
  %4 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 %i.0
  store i16 -1, i16* %4, align 2
  br label %5

; <label>:5                                       ; preds = %3
  %6 = add nsw i32 %i.0, 1
  br label %1

; <label>:7                                       ; preds = %1
  %8 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %9 = load i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %69

; <label>:12                                      ; preds = %7
  %13 = load volatile i32* @g_9, align 4
  %14 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %15 = load i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 0
  %18 = load i16* %17, align 2
  %19 = icmp ne i8 8, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 1
  %23 = load i16* %22, align 2
  %24 = trunc i16 %23 to i8
  %25 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext 6, i8 zeroext %24) #3
  %26 = zext i8 %25 to i32
  %27 = or i32 %21, %26
  %28 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %18, i32 %27) #3
  %29 = sext i16 %28 to i32
  store i32 %29, i32* @g_33, align 4
  %30 = load volatile i32* @g_9, align 4
  %31 = and i32 %29, %30
  %32 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %33 = load i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = call i32 @safe_add_func_int32_t_s_s(i32 %31, i32 %34) #3
  %36 = call i32 @safe_mod_func_int32_t_s_s(i32 1604088068, i32 %35) #3
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

; <label>:38                                      ; preds = %12
  br label %39

; <label>:39                                      ; preds = %38, %12
  %40 = phi i1 [ true, %12 ], [ false, %38 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @safe_div_func_uint32_t_u_u(i32 %16, i32 %41) #3
  %43 = load i16* @g_34, align 2
  %44 = trunc i16 %43 to i8
  %45 = zext i8 8 to i32
  %46 = call i32 @func_14(i8 zeroext 8, i32 %42, i8 zeroext %44, i32 %45, i8 zeroext 6) #3
  %47 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %48 = load i16* %47, align 2
  %49 = zext i16 %48 to i32
  %50 = or i32 %46, %49
  %51 = trunc i32 %50 to i8
  %52 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %51, i8 signext 126) #3
  %53 = sext i8 %52 to i16
  %54 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %55 = load i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %53, i32 %56) #3
  %58 = trunc i16 %57 to i8
  %59 = load i16* @g_34, align 2
  %60 = sext i16 %59 to i32
  %61 = getelementptr inbounds [4 x i16]* %l_2, i32 0, i32 3
  %62 = load i16* %61, align 2
  %63 = trunc i16 %62 to i8
  %64 = sext i8 6 to i32
  %65 = sext i8 6 to i16
  %66 = call zeroext i8 @func_3(i8 signext %58, i32 %60, i8 zeroext %63, i32 %64, i16 signext %65) #3
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br label %69

; <label>:69                                      ; preds = %39, %7
  %70 = phi i1 [ false, %7 ], [ %68, %39 ]
  %71 = zext i1 %70 to i32
  %72 = load i16* @g_79, align 2
  %73 = zext i16 %72 to i32
  ret i32 %73
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

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str7, i32 0, i32 0), i32 %crc) #3
  ret i32 %crc
}

declare i32 @printf(i8*, ...) #1

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
define internal zeroext i8 @func_3(i8 signext %p_4, i32 %p_5, i8 zeroext %p_6, i32 %p_7, i16 signext %p_8) #0 {
  %1 = load i16* @g_34, align 2
  %2 = sext i16 %1 to i32
  %3 = load i32* @g_91, align 4
  %4 = add i32 %3, -1
  store i32 %4, i32* @g_91, align 4
  %5 = trunc i32 %3 to i8
  %6 = trunc i32 -1294022090 to i8
  %7 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -32, i8 signext %6) #3
  %8 = sext i8 %7 to i32
  %9 = trunc i32 -1294022090 to i16
  %10 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %9, i32 11) #3
  %11 = trunc i16 %10 to i8
  %12 = trunc i32 -1294022090 to i8
  %13 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %11, i8 zeroext %12) #3
  %14 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %13, i32 5) #3
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %p_5, 0
  br i1 %16, label %21, label %17

; <label>:17                                      ; preds = %0
  %18 = load i16* @g_82, align 2
  %19 = sext i16 %18 to i32
  %20 = icmp sle i32 64754, %19
  br label %21

; <label>:21                                      ; preds = %17, %0
  %22 = phi i1 [ true, %0 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @safe_sub_func_int32_t_s_s(i32 %15, i32 %23) #3
  %25 = or i32 %8, %24
  %26 = icmp ult i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %5, i32 7) #3
  %29 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext 21, i8 zeroext %28) #3
  %30 = zext i8 %29 to i32
  %31 = xor i32 %30, %p_7
  %32 = call i32 @safe_mod_func_uint32_t_u_u(i32 %2, i32 %31) #3
  %33 = trunc i32 %32 to i8
  %34 = trunc i32 %p_7 to i8
  %35 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %33, i8 zeroext %34) #3
  %36 = zext i8 %35 to i16
  store i16 %36, i16* @g_107, align 2
  %37 = load i32* @g_33, align 4
  %38 = trunc i32 %37 to i8
  ret i8 %38
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = sext i16 %left to i32
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %5, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp uge i32 %right, 32
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3, %0
  %6 = sext i16 %left to i32
  br label %10

; <label>:7                                       ; preds = %3
  %8 = sext i16 %left to i32
  %9 = ashr i32 %8, %right
  br label %10

; <label>:10                                      ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  %12 = trunc i32 %11 to i16
  ret i16 %12
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
define internal i32 @func_14(i8 zeroext %p_15, i32 %p_16, i8 zeroext %p_17, i32 %p_18, i8 zeroext %p_19) #0 {
  %l_60 = alloca [2 x i32], align 4
  %l_62 = alloca [4 x i32], align 4
  %l_64 = alloca [8 x [9 x i8]], align 1
  %1 = bitcast [4 x i32]* %l_62 to i8*
  call void @legup_memcpy_4(i8* %1, i8* bitcast ([4 x i32]* @func_14.l_62 to i8*), i32 16)
  %2 = bitcast [8 x [9 x i8]]* %l_64 to i8*
  call void @legup_memcpy_1(i8* %2, i8* getelementptr inbounds ([8 x [9 x i8]]* @func_14.l_64, i32 0, i32 0, i32 0), i32 72)
  br label %3

; <label>:3                                       ; preds = %7, %0
  %i.0 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %4 = icmp slt i32 %i.0, 2
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %3
  %6 = getelementptr inbounds [2 x i32]* %l_60, i32 0, i32 %i.0
  store i32 -1853310549, i32* %6, align 4
  br label %7

; <label>:7                                       ; preds = %5
  %8 = add nsw i32 %i.0, 1
  br label %3

; <label>:9                                       ; preds = %3
  %10 = zext i8 %p_19 to i32
  %11 = icmp sge i32 0, %10
  %12 = zext i1 %11 to i32
  %13 = load volatile i32* @g_9, align 4
  %14 = trunc i32 %13 to i16
  %15 = load i32* @g_33, align 4
  %16 = icmp ne i32 -1, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i32* @g_33, align 4
  %20 = load i16* @g_34, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp ne i32 %21, -1
  %23 = zext i1 %22 to i32
  %24 = or i32 %19, %23
  %25 = or i32 %p_18, %24
  %26 = zext i8 %p_17 to i32
  %27 = and i32 %25, %26
  %28 = load i32* @g_33, align 4
  %29 = icmp ult i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32* @g_33, align 4
  %32 = xor i32 %30, %31
  %33 = and i32 1, %32
  %34 = getelementptr inbounds [2 x i32]* %l_60, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = trunc i32 %33 to i8
  %36 = trunc i32 -1 to i8
  %37 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %35, i8 signext %36) #3
  %38 = load i32* @g_33, align 4
  %39 = icmp ne i32 %38, 534406659
  %40 = zext i1 %39 to i32
  %41 = trunc i32 %40 to i16
  %42 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %41, i16 signext -18622) #3
  %43 = trunc i16 %42 to i8
  %44 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %43, i32 6) #3
  %45 = zext i8 %44 to i16
  %46 = zext i8 %p_19 to i16
  %47 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %45, i16 zeroext %46) #3
  %48 = zext i16 %47 to i32
  %49 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext -96, i32 %48) #3
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %9
  br label %53

; <label>:53                                      ; preds = %52, %9
  %54 = phi i1 [ false, %9 ], [ true, %52 ]
  %55 = zext i1 %54 to i32
  %56 = trunc i32 %55 to i8
  %57 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %56, i32 2) #3
  %58 = sext i8 %57 to i32
  %59 = getelementptr inbounds [4 x i32]* %l_62, i32 0, i32 0
  %60 = load i32* %59, align 4
  %61 = and i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = trunc i32 %61 to i16
  %63 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %14, i16 signext %62) #3
  %64 = sext i16 %63 to i32
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = trunc i32 %66 to i16
  %68 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %67, i16 zeroext 18190) #3
  %69 = zext i16 %68 to i32
  %70 = icmp sge i32 %69, %p_16
  %71 = zext i1 %70 to i32
  %72 = call i32 @safe_add_func_uint32_t_u_u(i32 %71, i32 -1) #3
  %73 = getelementptr inbounds [8 x [9 x i8]]* %l_64, i32 0, i32 2
  %74 = getelementptr inbounds [9 x i8]* %73, i32 0, i32 3
  %75 = load i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp uge i32 %72, %76
  %78 = zext i1 %77 to i32
  %79 = or i32 %12, 248
  %80 = icmp ne i32 %79, 1836142120
  %81 = zext i1 %80 to i32
  %82 = call i32 @func_37(i32 %81) #3
  %83 = load i16* @g_34, align 2
  %84 = sext i16 %83 to i32
  %85 = call i32 @safe_sub_func_int32_t_s_s(i32 %82, i32 %84) #3
  %86 = getelementptr inbounds [8 x [9 x i8]]* %l_64, i32 0, i32 3
  %87 = getelementptr inbounds [9 x i8]* %86, i32 0, i32 6
  %88 = load i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sge i32 %85, %89
  %91 = zext i1 %90 to i32
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* @g_82, align 2
  %93 = getelementptr inbounds [8 x [9 x i8]]* %l_64, i32 0, i32 2
  %94 = getelementptr inbounds [9 x i8]* %93, i32 0, i32 3
  %95 = load i8* %94, align 1
  %96 = sext i8 %95 to i32
  ret i32 %96
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
define internal signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = sext i16 %left to i32
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp uge i32 %right, 32
  br i1 %4, label %9, label %5

; <label>:5                                       ; preds = %3
  %6 = sext i16 %left to i32
  %7 = ashr i32 32767, %right
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %5, %3, %0
  %10 = sext i16 %left to i32
  br label %14

; <label>:11                                      ; preds = %5
  %12 = sext i16 %left to i32
  %13 = shl i32 %12, %right
  br label %14

; <label>:14                                      ; preds = %11, %9
  %15 = phi i32 [ %10, %9 ], [ %13, %11 ]
  %16 = trunc i32 %15 to i16
  ret i16 %16
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = zext i8 %ui1 to i32
  %2 = zext i8 %ui2 to i32
  %3 = mul i32 %1, %2
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

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
  %6 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 4
  %7 = load i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %29, label %9

; <label>:9                                       ; preds = %0
  %10 = load volatile i32* @g_9, align 4
  %11 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext -8) #3
  %12 = sext i16 %11 to i32
  %13 = load i16* @g_34, align 2
  %14 = sext i16 %13 to i32
  %15 = or i32 0, %p_38
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* @g_79, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp sgt i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = icmp ne i32 %12, %19
  %21 = zext i1 %20 to i32
  %22 = trunc i32 %21 to i8
  %23 = trunc i32 %p_38 to i8
  %24 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %22, i8 signext %23) #3
  %25 = sext i8 %24 to i32
  %26 = and i32 %25, 9
  %27 = call i32 @safe_sub_func_uint32_t_u_u(i32 %10, i32 %26) #3
  %28 = icmp ne i32 %27, 0
  br label %29

; <label>:29                                      ; preds = %9, %0
  %30 = phi i1 [ true, %0 ], [ %28, %9 ]
  %31 = zext i1 %30 to i32
  %32 = load i16* @g_34, align 2
  %33 = sext i16 %32 to i32
  %34 = and i32 -764463600, %33
  %35 = icmp eq i32 %34, -1
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %3, i32 %37) #3
  %39 = sext i16 %38 to i32
  %40 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 1
  %41 = load i32* %40, align 4
  %42 = icmp ule i32 %39, %41
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 4
  %45 = load i32* %44, align 4
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %29
  br label %48

; <label>:48                                      ; preds = %47, %29
  %49 = phi i1 [ false, %29 ], [ true, %47 ]
  %50 = zext i1 %49 to i32
  %51 = trunc i32 %50 to i8
  %52 = trunc i32 %p_38 to i8
  %53 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %51, i8 zeroext %52) #3
  %54 = zext i8 %53 to i32
  %55 = icmp slt i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = load i32* @g_33, align 4
  %58 = icmp sle i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = trunc i32 %59 to i16
  %61 = trunc i32 %p_38 to i16
  %62 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %60, i16 signext %61) #3
  %63 = load i16* @g_34, align 2
  %64 = sext i16 %63 to i32
  %65 = or i32 %64, %p_38
  %66 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 5
  %67 = load i32* %66, align 4
  %68 = icmp uge i32 %65, %67
  %69 = zext i1 %68 to i32
  %70 = load i16* @g_34, align 2
  %71 = sext i16 %70 to i32
  %72 = icmp sge i32 %69, %71
  %73 = zext i1 %72 to i32
  %74 = getelementptr inbounds [3 x [1 x [2 x i32]]]* %l_81, i32 0, i32 2
  %75 = getelementptr inbounds [1 x [2 x i32]]* %74, i32 0, i32 0
  %76 = getelementptr inbounds [2 x i32]* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = getelementptr inbounds [6 x i32]* %l_72, i32 0, i32 4
  %78 = load i32* %77, align 4
  ret i32 %78
}

; Function Attrs: noinline nounwind
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = add i32 %ui1, %ui2
  ret i32 %1
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = zext i16 %ui2 to i32
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = zext i16 %ui1 to i32
  br label %9

; <label>:5                                       ; preds = %0
  %6 = zext i16 %ui1 to i32
  %7 = zext i16 %ui2 to i32
  %8 = sdiv i32 %6, %7
  br label %9

; <label>:9                                       ; preds = %5, %3
  %10 = phi i32 [ %4, %3 ], [ %8, %5 ]
  %11 = trunc i32 %10 to i16
  ret i16 %11
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
define internal signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = sext i8 %left to i32
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %right, 0
  br i1 %4, label %7, label %5

; <label>:5                                       ; preds = %3
  %6 = icmp sge i32 %right, 32
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %5, %3, %0
  %8 = sext i8 %left to i32
  br label %12

; <label>:9                                       ; preds = %5
  %10 = sext i8 %left to i32
  %11 = ashr i32 %10, %right
  br label %12

; <label>:12                                      ; preds = %9, %7
  %13 = phi i32 [ %8, %7 ], [ %11, %9 ]
  %14 = trunc i32 %13 to i8
  ret i8 %14
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
define internal zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = icmp slt i32 %right, 0
  br i1 %1, label %8, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp sge i32 %right, 32
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %2
  %5 = zext i8 %left to i32
  %6 = ashr i32 255, %right
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
  %1 = sext i16 %si2 to i32
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = sext i16 %si1 to i32
  %5 = icmp eq i32 %4, -32768
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %3
  %7 = sext i16 %si2 to i32
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6, %0
  %10 = sext i16 %si1 to i32
  br label %15

; <label>:11                                      ; preds = %6, %3
  %12 = sext i16 %si1 to i32
  %13 = sext i16 %si2 to i32
  %14 = sdiv i32 %12, %13
  br label %15

; <label>:15                                      ; preds = %11, %9
  %16 = phi i32 [ %10, %9 ], [ %14, %11 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
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
define internal signext i16 @safe_mod_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = sext i16 %si2 to i32
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = sext i16 %si1 to i32
  %5 = icmp eq i32 %4, -32768
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %3
  %7 = sext i16 %si2 to i32
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6, %0
  %10 = sext i16 %si1 to i32
  br label %15

; <label>:11                                      ; preds = %6, %3
  %12 = sext i16 %si1 to i32
  %13 = sext i16 %si2 to i32
  %14 = srem i32 %12, %13
  br label %15

; <label>:15                                      ; preds = %11, %9
  %16 = phi i32 [ %10, %9 ], [ %14, %11 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
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
define internal i32 @safe_sub_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = sub i32 %ui1, %ui2
  ret i32 %1
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
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = sext i16 %si to i32
  %2 = sub nsw i32 0, %1
  %3 = trunc i32 %2 to i16
  ret i16 %3
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
define internal zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = icmp slt i32 %right, 0
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp sge i32 %right, 32
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %2, %0
  %5 = zext i8 %left to i32
  br label %9

; <label>:6                                       ; preds = %2
  %7 = zext i8 %left to i32
  %8 = ashr i32 %7, %right
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  %11 = trunc i32 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = sext i8 %left to i32
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %5, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp uge i32 %right, 32
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3, %0
  %6 = sext i8 %left to i32
  br label %10

; <label>:7                                       ; preds = %3
  %8 = sext i8 %left to i32
  %9 = ashr i32 %8, %right
  br label %10

; <label>:10                                      ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  %12 = trunc i32 %11 to i8
  ret i8 %12
}

declare void @legup_memcpy_4(i8*, i8*, i32)

declare void @legup_memcpy_1(i8*, i8*, i32)

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
