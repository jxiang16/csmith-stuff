; ModuleID = 'confScript0.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@g_2 = internal global i32 8, align 4
@.str = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_6 = internal global i32 5, align 4
@.str1 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_7 = internal global [5 x [10 x i32]] [[10 x i32] [i32 -1615740872, i32 6, i32 -1, i32 7, i32 -1, i32 6, i32 -1615740872, i32 -2, i32 -2129845793, i32 4], [10 x i32] [i32 -2, i32 -1993176570, i32 846477771, i32 -8, i32 -1615740872, i32 -1615740872, i32 -8, i32 846477771, i32 -1993176570, i32 -2], [10 x i32] [i32 488788187, i32 -1993176570, i32 -2129845793, i32 -7, i32 7, i32 4, i32 -1615740872, i32 4, i32 7, i32 -7], [10 x i32] [i32 -7, i32 6, i32 -7, i32 -1993176570, i32 7, i32 6, i32 -2, i32 -1, i32 -1, i32 -2], [10 x i32] [i32 7, i32 -1615740872, i32 6, i32 6, i32 -1615740872, i32 7, i32 -1993176570, i32 -2, i32 7, i32 -2129845793]], align 4
@.str2 = private unnamed_addr constant [10 x i8] c"g_7[i][j]\00", align 1
@.str3 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_8 = internal global i16 5, align 2
@.str4 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_40 = internal global i8 -1, align 1
@.str5 = private unnamed_addr constant [5 x i8] c"g_40\00", align 1
@g_49 = internal global [4 x i32] [i32 -1309128581, i32 -1309128581, i32 -1309128581, i32 -1309128581], align 4
@.str6 = private unnamed_addr constant [8 x i8] c"g_49[i]\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_55 = internal global i8 -1, align 1
@.str8 = private unnamed_addr constant [5 x i8] c"g_55\00", align 1
@g_64 = internal global i32 -13919540, align 4
@.str9 = private unnamed_addr constant [5 x i8] c"g_64\00", align 1
@g_78 = internal global i16 -2, align 2
@.str10 = private unnamed_addr constant [5 x i8] c"g_78\00", align 1
@crc32_context = internal global i32 -1, align 4
@.str11 = private unnamed_addr constant [15 x i8] c"checksum = %u\0A\00", align 1
@.str12 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@crc32_tab = internal global [256 x i32] zeroinitializer, align 4
@func_1.l_82 = private unnamed_addr constant [5 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1]], align 4
@func_3.l_41 = private unnamed_addr constant [7 x i8] c"\00\F9\F9\00\F9\F9\00", align 1
@func_3.l_67 = private unnamed_addr constant [9 x [8 x [2 x i16]]] [[8 x [2 x i16]] [[2 x i16] [i16 6307, i16 0], [2 x i16] [i16 20799, i16 1], [2 x i16] [i16 20799, i16 0], [2 x i16] [i16 6307, i16 6307], [2 x i16] [i16 0, i16 20799], [2 x i16] [i16 1, i16 20799], [2 x i16] [i16 0, i16 6307], [2 x i16] [i16 6307, i16 0]], [8 x [2 x i16]] [[2 x i16] [i16 20799, i16 1], [2 x i16] [i16 20799, i16 0], [2 x i16] [i16 6307, i16 6307], [2 x i16] [i16 0, i16 20799], [2 x i16] [i16 1, i16 20799], [2 x i16] [i16 0, i16 6307], [2 x i16] [i16 6307, i16 0], [2 x i16] [i16 20799, i16 1]], [8 x [2 x i16]] [[2 x i16] [i16 20799, i16 0], [2 x i16] [i16 6307, i16 6307], [2 x i16] [i16 0, i16 20799], [2 x i16] [i16 1, i16 20799], [2 x i16] [i16 0, i16 6307], [2 x i16] [i16 6307, i16 0], [2 x i16] [i16 20799, i16 1], [2 x i16] [i16 20799, i16 0]], [8 x [2 x i16]] [[2 x i16] [i16 6307, i16 6307], [2 x i16] [i16 0, i16 20799], [2 x i16] [i16 1, i16 20799], [2 x i16] [i16 0, i16 6307], [2 x i16] [i16 6307, i16 0], [2 x i16] [i16 20799, i16 1], [2 x i16] [i16 20799, i16 0], [2 x i16] [i16 6307, i16 6307]], [8 x [2 x i16]] [[2 x i16] [i16 0, i16 20799], [2 x i16] [i16 1, i16 20799], [2 x i16] [i16 0, i16 6307], [2 x i16] [i16 6307, i16 0], [2 x i16] [i16 20799, i16 1], [2 x i16] [i16 20799, i16 0], [2 x i16] [i16 6307, i16 6307], [2 x i16] [i16 0, i16 20799]], [8 x [2 x i16]] [[2 x i16] [i16 1, i16 20799], [2 x i16] [i16 0, i16 6307], [2 x i16] [i16 6307, i16 0], [2 x i16] [i16 20799, i16 1], [2 x i16] [i16 20799, i16 0], [2 x i16] [i16 6307, i16 6307], [2 x i16] [i16 0, i16 20799], [2 x i16] [i16 1, i16 20799]], [8 x [2 x i16]] [[2 x i16] [i16 0, i16 6307], [2 x i16] [i16 6307, i16 0], [2 x i16] [i16 20799, i16 1], [2 x i16] [i16 20799, i16 0], [2 x i16] [i16 6307, i16 6307], [2 x i16] [i16 0, i16 20799], [2 x i16] [i16 1, i16 20799], [2 x i16] [i16 0, i16 6307]], [8 x [2 x i16]] [[2 x i16] [i16 6307, i16 0], [2 x i16] [i16 20799, i16 1], [2 x i16] [i16 20799, i16 0], [2 x i16] [i16 6307, i16 6307], [2 x i16] [i16 0, i16 20799], [2 x i16] [i16 1, i16 20799], [2 x i16] [i16 0, i16 6307], [2 x i16] [i16 6307, i16 0]], [8 x [2 x i16]] [[2 x i16] [i16 20799, i16 1], [2 x i16] [i16 20799, i16 0], [2 x i16] [i16 6307, i16 6307], [2 x i16] [i16 0, i16 20799], [2 x i16] [i16 1, i16 20799], [2 x i16] [i16 0, i16 6307], [2 x i16] [i16 6307, i16 0], [2 x i16] [i16 20799, i16 1]]], align 2
@func_3.l_10 = private unnamed_addr constant [7 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@func_13.l_52 = private unnamed_addr constant [1 x [1 x [9 x i32]]] [[1 x [9 x i32]] [[9 x i32] [i32 1100068960, i32 1100068960, i32 2, i32 1100068960, i32 1100068960, i32 2, i32 1100068960, i32 1100068960, i32 2]]], align 4

; Function Attrs: noinline nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @platform_main_begin() #3
  call void @crc32_gentab() #3
  %1 = call i32 @func_1() #3
  %2 = load volatile i32* @g_2, align 4
  %3 = zext i32 %2 to i64
  call void @transparent_crc(i64 %3, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 0) #3
  %4 = load i32* @g_6, align 4
  %5 = zext i32 %4 to i64
  call void @transparent_crc(i64 %5, i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 0) #3
  br label %6

; <label>:6                                       ; preds = %19, %0
  %7 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %exitcond3 = icmp eq i32 %7, 5
  br i1 %exitcond3, label %21, label %8

; <label>:8                                       ; preds = %6
  br label %9

; <label>:9                                       ; preds = %16, %8
  %10 = phi i32 [ 0, %8 ], [ %17, %16 ]
  %exitcond1 = icmp eq i32 %10, 10
  br i1 %exitcond1, label %18, label %11

; <label>:11                                      ; preds = %9
  %scevgep2 = getelementptr [5 x [10 x i32]]* @g_7, i32 0, i32 %7, i32 %10
  %12 = load i32* %scevgep2, align 4
  %13 = sext i32 %12 to i64
  call void @transparent_crc(i64 %13, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0) #3
  br i1 false, label %14, label %15

; <label>:14                                      ; preds = %11
  br label %15

; <label>:15                                      ; preds = %14, %11
  br label %16

; <label>:16                                      ; preds = %15
  %17 = add nsw i32 %10, 1
  br label %9

; <label>:18                                      ; preds = %9
  br label %19

; <label>:19                                      ; preds = %18
  %20 = add nsw i32 %7, 1
  br label %6

; <label>:21                                      ; preds = %6
  %22 = load i16* @g_8, align 2
  %23 = zext i16 %22 to i64
  call void @transparent_crc(i64 %23, i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i32 0) #3
  %24 = load i8* @g_40, align 1
  %25 = sext i8 %24 to i64
  call void @transparent_crc(i64 %25, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 0) #3
  br label %26

; <label>:26                                      ; preds = %33, %21
  %27 = phi i32 [ 0, %21 ], [ %34, %33 ]
  %exitcond = icmp eq i32 %27, 4
  br i1 %exitcond, label %35, label %28

; <label>:28                                      ; preds = %26
  %scevgep = getelementptr [4 x i32]* @g_49, i32 0, i32 %27
  %29 = load volatile i32* %scevgep, align 4
  %30 = zext i32 %29 to i64
  call void @transparent_crc(i64 %30, i8* getelementptr inbounds ([8 x i8]* @.str6, i32 0, i32 0), i32 0) #3
  br i1 false, label %31, label %32

; <label>:31                                      ; preds = %28
  br label %32

; <label>:32                                      ; preds = %31, %28
  br label %33

; <label>:33                                      ; preds = %32
  %34 = add nsw i32 %27, 1
  br label %26

; <label>:35                                      ; preds = %26
  %36 = load i8* @g_55, align 1
  %37 = zext i8 %36 to i64
  call void @transparent_crc(i64 %37, i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0), i32 0) #3
  %38 = load i32* @g_64, align 4
  %39 = sext i32 %38 to i64
  call void @transparent_crc(i64 %39, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i32 0) #3
  %40 = load i16* @g_78, align 2
  %41 = zext i16 %40 to i64
  call void @transparent_crc(i64 %41, i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0), i32 0) #3
  %42 = load i32* @crc32_context, align 4
  %43 = xor i32 %42, -1
  %44 = call i32 @platform_main_end(i32 %43, i32 0) #3
  ret i32 %44
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
  %l_82 = alloca [5 x [1 x i32]], align 4
  %1 = bitcast [5 x [1 x i32]]* %l_82 to i8*
  call void @legup_memcpy_4(i8* %1, i8* bitcast ([5 x [1 x i32]]* @func_1.l_82 to i8*), i32 20)
  %2 = load volatile i32* @g_2, align 4
  %3 = or i32 %2, 405055686
  store volatile i32 %3, i32* @g_2, align 4
  %4 = load volatile i32* @g_2, align 4
  %5 = load i32* @g_6, align 4
  %6 = trunc i32 %5 to i8
  %7 = call signext i16 @func_3(i32 %4, i8 zeroext %6) #3
  %8 = load i16* @g_78, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %11

; <label>:11                                      ; preds = %10, %0
  %12 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext 1, i8 zeroext 1) #3
  %13 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext 1, i8 signext 6) #3
  %14 = sext i8 %13 to i32
  %15 = getelementptr inbounds [5 x [1 x i32]]* %l_82, i32 0, i32 1, i32 0
  %16 = load i32* %15, align 4
  %17 = xor i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = trunc i32 %17 to i16
  %19 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext -490, i16 signext %18) #3
  %20 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %19, i16 zeroext 4) #3
  %21 = load i16* @g_78, align 2
  %22 = or i16 %20, %21
  %23 = trunc i16 %22 to i8
  %24 = trunc i16 %21 to i8
  %25 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %23, i8 signext %24) #3
  %26 = getelementptr inbounds [5 x [1 x i32]]* %l_82, i32 0, i32 2, i32 0
  %27 = load i32* %26, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #3
  %1 = icmp eq i32 %flag, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str12, i32 0, i32 0), i8* %vname, i32 %4) #4
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str11, i32 0, i32 0), i32 %crc) #4
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
define internal signext i16 @func_3(i32 %p_4, i8 zeroext %p_5) #0 {
  %l_41 = alloca [7 x i8], align 1
  %l_67 = alloca [9 x [8 x [2 x i16]]], align 2
  %l_10 = alloca [7 x i32], align 4
  %1 = getelementptr inbounds [7 x i8]* %l_41, i32 0, i32 0
  call void @legup_memcpy_1(i8* %1, i8* getelementptr inbounds ([7 x i8]* @func_3.l_41, i32 0, i32 0), i32 7)
  %2 = bitcast [9 x [8 x [2 x i16]]]* %l_67 to i8*
  call void @legup_memcpy_2(i8* %2, i8* bitcast ([9 x [8 x [2 x i16]]]* @func_3.l_67 to i8*), i32 288)
  br label %3

; <label>:3                                       ; preds = %116, %0
  %indvar1 = phi i32 [ %indvar.next2, %116 ], [ 0, %0 ]
  %l_42.0 = phi i32 [ %l_42.1, %116 ], [ -9, %0 ]
  %.01 = phi i8 [ 5, %116 ], [ %p_5, %0 ]
  %.0 = sub i32 4, %indvar1
  %4 = trunc i32 %.0 to i16
  %exitcond3 = icmp eq i32 %indvar1, 5
  br i1 %exitcond3, label %117, label %5

; <label>:5                                       ; preds = %3
  %6 = bitcast [7 x i32]* %l_10 to i8*
  call void @legup_memcpy_4(i8* %6, i8* bitcast ([7 x i32]* @func_3.l_10 to i8*), i32 28)
  store i16 %4, i16* @g_8, align 2
  %7 = getelementptr inbounds [7 x i32]* %l_10, i32 0, i32 5
  store i32 -1769391627, i32* %7, align 4
  br label %8

; <label>:8                                       ; preds = %69, %5
  %storemerge = phi i32 [ 0, %5 ], [ %71, %69 ]
  store i32 %storemerge, i32* @g_6, align 4
  %9 = icmp ult i32 %storemerge, 5
  br i1 %9, label %10, label %72

; <label>:10                                      ; preds = %8
  br i1 true, label %11, label %62

; <label>:11                                      ; preds = %10
  %12 = zext i8 %.01 to i16
  %13 = load volatile i32* @g_2, align 4
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [7 x i32]* %l_10, i32 0, i32 0
  %16 = load i32* %15, align 4
  %17 = trunc i32 %16 to i16
  %18 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %17, i16 signext -1) #3
  %19 = load i8* @g_40, align 1
  %20 = xor i8 %19, 35
  store i8 %20, i8* @g_40, align 1
  %21 = and i8 %20, 1
  %22 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %21, i8 zeroext 64) #3
  %23 = and i8 %22, 1
  %24 = load i32* @g_6, align 4
  %25 = trunc i32 %24 to i8
  %26 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %23, i8 signext %25) #3
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

; <label>:28                                      ; preds = %11
  %29 = getelementptr inbounds [7 x i32]* %l_10, i32 0, i32 4
  %30 = load i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

; <label>:32                                      ; preds = %28, %11
  %33 = phi i1 [ false, %11 ], [ %31, %28 ]
  %34 = zext i1 %33 to i8
  %35 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %34, i8 zeroext -100) #3
  %36 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext -7, i32 0) #3
  %37 = load i16* @g_8, align 2
  %38 = icmp ugt i16 %36, %37
  %39 = zext i1 %38 to i32
  %40 = zext i8 %.01 to i32
  %41 = icmp ule i32 %39, %40
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds [7 x i8]* %l_41, i32 0, i32 4
  %44 = load i8* %43, align 1
  %45 = or i8 %44, %42
  store i8 %45, i8* %43, align 1
  %46 = load i8* @g_40, align 1
  %47 = trunc i32 %l_42.0 to i8
  %48 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %46, i8 zeroext %47) #3
  %49 = zext i8 %48 to i16
  %50 = getelementptr inbounds [7 x i32]* %l_10, i32 0, i32 5
  %51 = load i32* %50, align 4
  %52 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %49, i32 %51) #3
  %53 = zext i16 %52 to i32
  %54 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %18, i32 %53) #3
  %55 = zext i16 %54 to i32
  %56 = call i32 @safe_div_func_uint32_t_u_u(i32 %55, i32 1) #3
  %57 = trunc i32 %56 to i16
  %58 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %57, i32 15) #3
  %59 = load i32* getelementptr inbounds ([5 x [10 x i32]]* @g_7, i32 0, i32 0, i32 6), align 4
  %60 = trunc i32 %59 to i8
  %61 = call i32 @func_15(i16 signext %12, i8 signext %14, i16 signext %58, i8 zeroext %60) #3
  br label %62

; <label>:62                                      ; preds = %32, %10
  %63 = load i8* @g_40, align 1
  %64 = call signext i16 @func_13(i8 zeroext %63) #3
  %65 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %64, i16 signext %4) #3
  %66 = trunc i16 %65 to i8
  %67 = load i8* @g_55, align 1
  %68 = xor i8 %67, %66
  store i8 %68, i8* @g_55, align 1
  br label %69

; <label>:69                                      ; preds = %62
  %70 = load i32* @g_6, align 4
  %71 = add i32 %70, 1
  br label %8

; <label>:72                                      ; preds = %8
  br label %73

; <label>:73                                      ; preds = %108, %72
  %indvar = phi i32 [ %indvar.next, %108 ], [ 0, %72 ]
  %l_42.1 = phi i32 [ %114, %108 ], [ %l_42.0, %72 ]
  %exitcond = icmp eq i32 %indvar, 5
  br i1 %exitcond, label %115, label %74

; <label>:74                                      ; preds = %73
  %75 = load volatile i32* getelementptr inbounds ([4 x i32]* @g_49, i32 0, i32 3), align 4
  %76 = trunc i32 %75 to i16
  %77 = and i32 %indvar, 20
  store i32 %77, i32* @g_64, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

; <label>:79                                      ; preds = %74
  %80 = load i8* @g_55, align 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %85

; <label>:82                                      ; preds = %79, %74
  %83 = load i32* getelementptr inbounds ([5 x [10 x i32]]* @g_7, i32 0, i32 2, i32 5), align 4
  %84 = icmp ne i32 %83, 0
  br label %85

; <label>:85                                      ; preds = %82, %79
  %86 = phi i1 [ true, %79 ], [ %84, %82 ]
  %87 = icmp eq i32 %indvar1, 4
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %85
  br label %89

; <label>:89                                      ; preds = %88, %85
  %90 = icmp sgt i32 %.0, 0
  %91 = zext i1 %90 to i32
  %92 = icmp ult i32 %91, %indvar
  %93 = xor i1 %86, %92
  %94 = zext i1 %93 to i16
  %95 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %76, i16 signext %94) #3
  %96 = load volatile i32* getelementptr inbounds ([4 x i32]* @g_49, i32 0, i32 3), align 4
  br i1 true, label %98, label %97

; <label>:97                                      ; preds = %89
  br label %98

; <label>:98                                      ; preds = %97, %89
  %99 = call i32 @safe_div_func_uint32_t_u_u(i32 1, i32 -3) #3
  %100 = trunc i32 %99 to i8
  %101 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %100, i32 7) #3
  %102 = zext i8 %101 to i32
  %103 = and i32 %.0, %102
  %104 = trunc i32 %103 to i8
  %105 = load i16* @g_8, align 2
  %106 = trunc i16 %105 to i8
  %107 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %104, i8 zeroext %106) #3
  br label %108

; <label>:108                                     ; preds = %98
  %109 = zext i8 %107 to i32
  %110 = getelementptr inbounds [7 x i8]* %l_41, i32 0, i32 4
  %111 = load i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = and i32 %109, %112
  %114 = and i32 %l_42.1, %113
  %indvar.next = add i32 %indvar, 1
  br label %73

; <label>:115                                     ; preds = %73
  br label %116

; <label>:116                                     ; preds = %115
  %indvar.next2 = add i32 %indvar1, 1
  br label %3

; <label>:117                                     ; preds = %3
  %118 = getelementptr inbounds [9 x [8 x [2 x i16]]]* %l_67, i32 0, i32 5, i32 6, i32 0
  %119 = load i16* %118, align 2
  ret i16 %119
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = mul i8 %si1, %si2
  ret i8 %1
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = add i16 %ui1, %ui2
  ret i16 %1
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
define internal signext i16 @func_13(i8 zeroext %p_14) #0 {
  %l_52 = alloca [1 x [1 x [9 x i32]]], align 4
  %1 = bitcast [1 x [1 x [9 x i32]]]* %l_52 to i8*
  call void @legup_memcpy_4(i8* %1, i8* bitcast ([1 x [1 x [9 x i32]]]* @func_13.l_52 to i8*), i32 36)
  %2 = getelementptr inbounds [1 x [1 x [9 x i32]]]* %l_52, i32 0, i32 0, i32 0, i32 8
  %3 = load i32* %2, align 4
  %4 = add i32 %3, -1
  store i32 %4, i32* %2, align 4
  %5 = trunc i32 %4 to i16
  ret i16 %5
}

; Function Attrs: noinline nounwind
define internal i32 @func_15(i16 signext %p_16, i8 signext %p_17, i16 signext %p_18, i8 zeroext %p_19) #0 {
  br label %1

; <label>:1                                       ; preds = %4, %0
  %storemerge = phi i16 [ -1, %0 ], [ %8, %4 ]
  store i16 %storemerge, i16* @g_8, align 2
  %2 = icmp ugt i16 %storemerge, 23
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %1
  br label %4

; <label>:4                                       ; preds = %3
  %5 = load i16* @g_8, align 2
  %6 = zext i16 %5 to i32
  %7 = call i32 @safe_add_func_int32_t_s_s(i32 %6, i32 1) #3
  %8 = trunc i32 %7 to i16
  br label %1

; <label>:9                                       ; preds = %1
  %10 = load volatile i32* getelementptr inbounds ([4 x i32]* @g_49, i32 0, i32 3), align 4
  %11 = add i32 %10, 1
  store volatile i32 %11, i32* getelementptr inbounds ([4 x i32]* @g_49, i32 0, i32 3), align 4
  br label %12

; <label>:12                                      ; preds = %20, %9
  %13 = phi i32 [ 0, %9 ], [ %21, %20 ]
  %exitcond1 = icmp eq i32 %13, 5
  br i1 %exitcond1, label %22, label %14

; <label>:14                                      ; preds = %12
  br label %15

; <label>:15                                      ; preds = %17, %14
  %indvar = phi i32 [ %indvar.next, %17 ], [ 0, %14 ]
  %.0 = phi i32 [ %phitmp, %17 ], [ 0, %14 ]
  %exitcond = icmp eq i32 %indvar, 10
  br i1 %exitcond, label %19, label %16

; <label>:16                                      ; preds = %15
  %scevgep2 = getelementptr [5 x [10 x i32]]* @g_7, i32 0, i32 %13, i32 %.0
  store i32 543781278, i32* %scevgep2, align 4
  br label %17

; <label>:17                                      ; preds = %16
  %18 = shl nsw i32 %.0, 16
  %sext = add i32 %18, 65536
  %phitmp = ashr exact i32 %sext, 16
  %indvar.next = add i32 %indvar, 1
  br label %15

; <label>:19                                      ; preds = %15
  br label %20

; <label>:20                                      ; preds = %19
  %21 = add i32 %13, 1
  br label %12

; <label>:22                                      ; preds = %12
  %23 = sext i16 %p_16 to i32
  ret i32 %23
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
define internal zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = icmp slt i32 %right, 0
  br i1 %1, label %8, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp sgt i32 %right, 31
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %2
  %5 = zext i16 %left to i32
  %6 = lshr i32 65535, %right
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %4, %2, %0
  %9 = zext i16 %left to i32
  br label %13

; <label>:10                                      ; preds = %4
  %11 = zext i16 %left to i32
  %12 = shl i32 %11, %right
  br label %13

; <label>:13                                      ; preds = %10, %8
  %14 = phi i32 [ %9, %8 ], [ %12, %10 ]
  %15 = trunc i32 %14 to i16
  ret i16 %15
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = sub i8 %ui1, %ui2
  ret i8 %1
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = icmp slt i32 %right, 0
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp sgt i32 %right, 31
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %2, %0
  %5 = zext i16 %left to i32
  br label %9

; <label>:6                                       ; preds = %2
  %7 = zext i16 %left to i32
  %8 = lshr i32 %7, %right
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  %11 = trunc i32 %10 to i16
  ret i16 %11
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = add i8 %ui1, %ui2
  ret i8 %1
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_add_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = add i8 %si1, %si2
  ret i8 %1
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = icmp eq i8 %ui2, 0
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %5

; <label>:3                                       ; preds = %0
  %4 = urem i8 %ui1, %ui2
  br label %5

; <label>:5                                       ; preds = %3, %2
  %.in = phi i8 [ %ui1, %2 ], [ %4, %3 ]
  ret i8 %.in
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = mul i8 %ui1, %ui2
  ret i8 %1
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
