; ModuleID = 'confScript0.prelto.1.bc'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %checksum = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 4
  store i32 0, i32* %print_hash_value, align 4
  call void @platform_main_begin() #3
  call void @crc32_gentab() #3
  %4 = call i32 @func_1() #3
  %5 = load volatile i32* @g_2, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %6, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %7) #3
  %8 = load i32* @g_6, align 4
  %9 = zext i32 %8 to i64
  %10 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %9, i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %10) #3
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %37, %0
  %12 = load i32* %i, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %40

; <label>:14                                      ; preds = %11
  store i32 0, i32* %j, align 4
  br label %15

; <label>:15                                      ; preds = %33, %14
  %16 = load i32* %j, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %36

; <label>:18                                      ; preds = %15
  %19 = load i32* %j, align 4
  %20 = load i32* %i, align 4
  %21 = getelementptr inbounds [5 x [10 x i32]]* @g_7, i32 0, i32 %20
  %22 = getelementptr inbounds [10 x i32]* %21, i32 0, i32 %19
  %23 = load i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %24, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 %25) #3
  %26 = load i32* %print_hash_value, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

; <label>:28                                      ; preds = %18
  %29 = load i32* %i, align 4
  %30 = load i32* %j, align 4
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str3, i32 0, i32 0), i32 %29, i32 %30) #3
  br label %32

; <label>:32                                      ; preds = %28, %18
  br label %33

; <label>:33                                      ; preds = %32
  %34 = load i32* %j, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %j, align 4
  br label %15

; <label>:36                                      ; preds = %15
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load i32* %i, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %i, align 4
  br label %11

; <label>:40                                      ; preds = %11
  %41 = load i16* @g_8, align 2
  %42 = zext i16 %41 to i64
  %43 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %42, i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i32 %43) #3
  %44 = load i8* @g_40, align 1
  %45 = sext i8 %44 to i64
  %46 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %45, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 %46) #3
  store i32 0, i32* %i, align 4
  br label %47

; <label>:47                                      ; preds = %62, %40
  %48 = load i32* %i, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %65

; <label>:50                                      ; preds = %47
  %51 = load i32* %i, align 4
  %52 = getelementptr inbounds [4 x i32]* @g_49, i32 0, i32 %51
  %53 = load volatile i32* %52, align 4
  %54 = zext i32 %53 to i64
  %55 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %54, i8* getelementptr inbounds ([8 x i8]* @.str6, i32 0, i32 0), i32 %55) #3
  %56 = load i32* %print_hash_value, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

; <label>:58                                      ; preds = %50
  %59 = load i32* %i, align 4
  %60 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0), i32 %59) #3
  br label %61

; <label>:61                                      ; preds = %58, %50
  br label %62

; <label>:62                                      ; preds = %61
  %63 = load i32* %i, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %i, align 4
  br label %47

; <label>:65                                      ; preds = %47
  %66 = load i8* @g_55, align 1
  %67 = zext i8 %66 to i64
  %68 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %67, i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0), i32 %68) #3
  %69 = load i32* @g_64, align 4
  %70 = sext i32 %69 to i64
  %71 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %70, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i32 %71) #3
  %72 = load i16* @g_78, align 2
  %73 = zext i16 %72 to i64
  %74 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %73, i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0), i32 %74) #3
  %75 = load i32* @crc32_context, align 4
  %76 = xor i32 %75, -1
  %77 = load i32* %print_hash_value, align 4
  %78 = call i32 @platform_main_end(i32 %76, i32 %77) #3
  store i32 %78, i32* %checksum, align 4
  %79 = load i32* %checksum, align 4
  ret i32 %79
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
  %l_77 = alloca i32, align 4
  %l_82 = alloca [5 x [1 x i32]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 7, i32* %l_77, align 4
  %1 = bitcast [5 x [1 x i32]]* %l_82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* bitcast ([5 x [1 x i32]]* @func_1.l_82 to i8*), i32 20, i32 4, i1 false)
  %2 = load volatile i32* @g_2, align 4
  %3 = or i32 %2, 405055686
  store volatile i32 %3, i32* @g_2, align 4
  %4 = load volatile i32* @g_2, align 4
  %5 = load i32* @g_6, align 4
  %6 = trunc i32 %5 to i8
  %7 = call signext i16 @func_3(i32 %4, i8 zeroext %6) #3
  %8 = sext i16 %7 to i32
  %9 = load i32* %l_77, align 4
  %10 = load i16* @g_78, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp ne i32 %11, 255
  %13 = zext i1 %12 to i32
  %14 = load i16* @g_78, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

; <label>:17                                      ; preds = %0
  %18 = load i32* %l_77, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

; <label>:20                                      ; preds = %17, %0
  %21 = phi i1 [ true, %0 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = trunc i32 %22 to i8
  %24 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext 1, i8 zeroext %23) #3
  %25 = zext i8 %24 to i32
  %26 = load i16* @g_78, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp sgt i32 %25, %27
  %29 = zext i1 %28 to i32
  %30 = icmp sle i32 %13, %29
  %31 = zext i1 %30 to i32
  %32 = icmp sgt i32 %9, %31
  %33 = zext i1 %32 to i32
  %34 = trunc i32 %33 to i8
  %35 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %34, i8 signext 6) #3
  %36 = sext i8 %35 to i32
  %37 = getelementptr inbounds [5 x [1 x i32]]* %l_82, i32 0, i32 1
  %38 = getelementptr inbounds [1 x i32]* %37, i32 0, i32 0
  %39 = load i32* %38, align 4
  %40 = xor i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = trunc i32 %40 to i16
  %42 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext -490, i16 signext %41) #3
  %43 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %42, i16 zeroext 4) #3
  %44 = zext i16 %43 to i32
  %45 = load i16* @g_78, align 2
  %46 = zext i16 %45 to i32
  %47 = or i32 %44, %46
  %48 = trunc i32 %47 to i8
  %49 = load i16* @g_78, align 2
  %50 = trunc i16 %49 to i8
  %51 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %48, i8 signext %50) #3
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %8, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %l_77, align 4
  %55 = getelementptr inbounds [5 x [1 x i32]]* %l_82, i32 0, i32 2
  %56 = getelementptr inbounds [1 x i32]* %55, i32 0, i32 0
  %57 = load i32* %56, align 4
  ret i32 %57
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
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str12, i32 0, i32 0), i8* %8, i32 %10) #3
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
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str11, i32 0, i32 0), i32 %3) #3
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
define internal signext i16 @func_3(i32 %p_4, i8 zeroext %p_5) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %l_41 = alloca [7 x i8], align 1
  %l_42 = alloca i32, align 4
  %l_67 = alloca [9 x [8 x [2 x i16]]], align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_9 = alloca i8, align 1
  %l_10 = alloca [7 x i32], align 4
  %l_65 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %l_66 = alloca i32, align 4
  %l_68 = alloca i32, align 4
  store i32 %p_4, i32* %1, align 4
  store i8 %p_5, i8* %2, align 1
  %3 = bitcast [7 x i8]* %l_41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* getelementptr inbounds ([7 x i8]* @func_3.l_41, i32 0, i32 0), i32 7, i32 1, i1 false)
  store i32 -9, i32* %l_42, align 4
  %4 = bitcast [9 x [8 x [2 x i16]]]* %l_67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* bitcast ([9 x [8 x [2 x i16]]]* @func_3.l_67 to i8*), i32 288, i32 2, i1 false)
  store i32 4, i32* %1, align 4
  br label %5

; <label>:5                                       ; preds = %198, %0
  %6 = load i32* %1, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %201

; <label>:8                                       ; preds = %5
  store i8 -119, i8* %l_9, align 1
  %9 = bitcast [7 x i32]* %l_10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* bitcast ([7 x i32]* @func_3.l_10 to i8*), i32 28, i32 4, i1 false)
  store i32 0, i32* %l_65, align 4
  %10 = load i32* %1, align 4
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* @g_8, align 2
  %12 = zext i16 %11 to i32
  %13 = load i8* %l_9, align 1
  %14 = sext i8 %13 to i32
  %15 = and i32 %14, %12
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %l_9, align 1
  %17 = getelementptr inbounds [7 x i32]* %l_10, i32 0, i32 5
  store i32 -1769391627, i32* %17, align 4
  store i32 0, i32* @g_6, align 4
  br label %18

; <label>:18                                      ; preds = %111, %8
  %19 = load i32* @g_6, align 4
  %20 = icmp ule i32 %19, 4
  br i1 %20, label %21, label %114

; <label>:21                                      ; preds = %18
  %22 = load i32* %1, align 4
  %23 = add nsw i32 %22, 5
  %24 = load i32* %1, align 4
  %25 = getelementptr inbounds [5 x [10 x i32]]* @g_7, i32 0, i32 %24
  %26 = getelementptr inbounds [10 x i32]* %25, i32 0, i32 %23
  %27 = load i32* %26, align 4
  br i1 true, label %28, label %98

; <label>:28                                      ; preds = %21
  %29 = load i8* %2, align 1
  %30 = zext i8 %29 to i16
  %31 = load volatile i32* @g_2, align 4
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [7 x i32]* %l_10, i32 0, i32 0
  %34 = load i32* %33, align 4
  %35 = trunc i32 %34 to i16
  %36 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %35, i16 signext -1) #3
  %37 = load i8* @g_40, align 1
  %38 = sext i8 %37 to i32
  %39 = xor i32 %38, 35
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* @g_40, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, 1
  %43 = trunc i32 %42 to i8
  %44 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %43, i8 zeroext 64) #3
  %45 = zext i8 %44 to i32
  %46 = and i32 1, %45
  %47 = trunc i32 %46 to i8
  %48 = load i32* @g_6, align 4
  %49 = trunc i32 %48 to i8
  %50 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %47, i8 signext %49) #3
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

; <label>:53                                      ; preds = %28
  %54 = getelementptr inbounds [7 x i32]* %l_10, i32 0, i32 4
  %55 = load i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

; <label>:57                                      ; preds = %53, %28
  %58 = phi i1 [ false, %28 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = trunc i32 %59 to i8
  %61 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %60, i8 zeroext -100) #3
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 65535
  %64 = zext i1 %63 to i32
  %65 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext -7, i32 %64) #3
  %66 = zext i16 %65 to i32
  %67 = load i16* @g_8, align 2
  %68 = zext i16 %67 to i32
  %69 = icmp sgt i32 %66, %68
  %70 = zext i1 %69 to i32
  %71 = load i8* %2, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp sle i32 %70, %72
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds [7 x i8]* %l_41, i32 0, i32 4
  %76 = load i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = or i32 %77, %74
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %75, align 1
  %80 = load i8* @g_40, align 1
  %81 = load i32* %l_42, align 4
  %82 = trunc i32 %81 to i8
  %83 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %80, i8 zeroext %82) #3
  %84 = zext i8 %83 to i16
  %85 = getelementptr inbounds [7 x i32]* %l_10, i32 0, i32 5
  %86 = load i32* %85, align 4
  %87 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %84, i32 %86) #3
  %88 = zext i16 %87 to i32
  %89 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %36, i32 %88) #3
  %90 = zext i16 %89 to i32
  %91 = call i32 @safe_div_func_uint32_t_u_u(i32 %90, i32 1) #3
  %92 = trunc i32 %91 to i16
  %93 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %92, i32 15) #3
  %94 = load i32* getelementptr inbounds ([5 x [10 x i32]]* @g_7, i32 0, i32 0, i32 6), align 4
  %95 = trunc i32 %94 to i8
  %96 = call i32 @func_15(i16 signext %30, i8 signext %32, i16 signext %93, i8 zeroext %95) #3
  %97 = icmp ne i32 %96, 0
  br label %98

; <label>:98                                      ; preds = %57, %21
  %99 = phi i1 [ false, %21 ], [ %97, %57 ]
  %100 = zext i1 %99 to i32
  %101 = load i8* @g_40, align 1
  %102 = call signext i16 @func_13(i8 zeroext %101) #3
  %103 = load i32* %1, align 4
  %104 = trunc i32 %103 to i16
  %105 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %102, i16 signext %104) #3
  %106 = sext i16 %105 to i32
  %107 = load i8* @g_55, align 1
  %108 = zext i8 %107 to i32
  %109 = xor i32 %108, %106
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* @g_55, align 1
  br label %111

; <label>:111                                     ; preds = %98
  %112 = load i32* @g_6, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* @g_6, align 4
  br label %18

; <label>:114                                     ; preds = %18
  store i8 0, i8* %2, align 1
  br label %115

; <label>:115                                     ; preds = %192, %114
  %116 = load i8* %2, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp sle i32 %117, 4
  br i1 %118, label %119, label %197

; <label>:119                                     ; preds = %115
  store i32 -686295360, i32* %l_66, align 4
  store i32 -254819839, i32* %l_68, align 4
  %120 = load i32* %1, align 4
  %121 = load volatile i32* getelementptr inbounds ([4 x i32]* @g_49, i32 0, i32 3), align 4
  %122 = trunc i32 %121 to i16
  %123 = load i8* %2, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 26900, %124
  store i32 %125, i32* @g_64, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

; <label>:127                                     ; preds = %119
  %128 = load i8* @g_55, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

; <label>:131                                     ; preds = %127, %119
  %132 = load i32* getelementptr inbounds ([5 x [10 x i32]]* @g_7, i32 0, i32 2, i32 5), align 4
  %133 = icmp ne i32 %132, 0
  br label %134

; <label>:134                                     ; preds = %131, %127
  %135 = phi i1 [ true, %127 ], [ %133, %131 ]
  %136 = zext i1 %135 to i32
  %137 = getelementptr inbounds [7 x i32]* %l_10, i32 0, i32 5
  %138 = load i32* %137, align 4
  %139 = load i8* @g_55, align 1
  %140 = zext i8 %139 to i32
  store i32 %140, i32* %l_65, align 4
  %141 = icmp sge i32 %138, %140
  %142 = zext i1 %141 to i32
  %143 = load i32* %1, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

; <label>:145                                     ; preds = %134
  %146 = load i32* %l_66, align 4
  %147 = icmp ne i32 %146, 0
  br label %148

; <label>:148                                     ; preds = %145, %134
  %149 = phi i1 [ true, %134 ], [ %147, %145 ]
  %150 = zext i1 %149 to i32
  %151 = load i32* %1, align 4
  %152 = icmp sle i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i8* %2, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp slt i32 %153, %155
  %157 = zext i1 %156 to i32
  %158 = xor i32 %136, %157
  %159 = trunc i32 %158 to i16
  %160 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %122, i16 signext %159) #3
  %161 = load volatile i32* getelementptr inbounds ([4 x i32]* @g_49, i32 0, i32 3), align 4
  %162 = getelementptr inbounds [9 x [8 x [2 x i16]]]* %l_67, i32 0, i32 5
  %163 = getelementptr inbounds [8 x [2 x i16]]* %162, i32 0, i32 6
  %164 = getelementptr inbounds [2 x i16]* %163, i32 0, i32 0
  %165 = load i16* %164, align 2
  %166 = sext i16 %165 to i32
  %167 = icmp ult i32 %161, %166
  %168 = zext i1 %167 to i32
  br i1 true, label %170, label %169

; <label>:169                                     ; preds = %148
  br label %170

; <label>:170                                     ; preds = %169, %148
  %171 = phi i1 [ true, %148 ], [ true, %169 ]
  %172 = zext i1 %171 to i32
  %173 = call i32 @safe_div_func_uint32_t_u_u(i32 %172, i32 -3) #3
  %174 = trunc i32 %173 to i8
  %175 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %174, i32 7) #3
  %176 = zext i8 %175 to i32
  %177 = and i32 %120, %176
  %178 = trunc i32 %177 to i8
  %179 = load i16* @g_8, align 2
  %180 = trunc i16 %179 to i8
  %181 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %178, i8 zeroext %180) #3
  %182 = zext i8 %181 to i32
  %183 = getelementptr inbounds [7 x i8]* %l_41, i32 0, i32 4
  %184 = load i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = and i32 %182, %185
  %187 = load i32* %l_42, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %l_42, align 4
  %189 = load i32* %1, align 4
  %190 = icmp sgt i32 %188, %189
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %l_68, align 4
  br label %192

; <label>:192                                     ; preds = %170
  %193 = load i8* %2, align 1
  %194 = zext i8 %193 to i32
  %195 = add nsw i32 %194, 1
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %2, align 1
  br label %115

; <label>:197                                     ; preds = %115
  br label %198

; <label>:198                                     ; preds = %197
  %199 = load i32* %1, align 4
  %200 = sub nsw i32 %199, 1
  store i32 %200, i32* %1, align 4
  br label %5

; <label>:201                                     ; preds = %5
  %202 = getelementptr inbounds [9 x [8 x [2 x i16]]]* %l_67, i32 0, i32 5
  %203 = getelementptr inbounds [8 x [2 x i16]]* %202, i32 0, i32 6
  %204 = getelementptr inbounds [2 x i16]* %203, i32 0, i32 0
  %205 = load i16* %204, align 2
  ret i16 %205
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
define internal zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2
  store i16 %ui2, i16* %2, align 2
  %3 = load i16* %1, align 2
  %4 = zext i16 %3 to i32
  %5 = load i16* %2, align 2
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
define internal signext i16 @func_13(i8 zeroext %p_14) #0 {
  %1 = alloca i8, align 1
  %l_52 = alloca [1 x [1 x [9 x i32]]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i8 %p_14, i8* %1, align 1
  %2 = bitcast [1 x [1 x [9 x i32]]]* %l_52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* bitcast ([1 x [1 x [9 x i32]]]* @func_13.l_52 to i8*), i32 36, i32 4, i1 false)
  %3 = getelementptr inbounds [1 x [1 x [9 x i32]]]* %l_52, i32 0, i32 0
  %4 = getelementptr inbounds [1 x [9 x i32]]* %3, i32 0, i32 0
  %5 = getelementptr inbounds [9 x i32]* %4, i32 0, i32 8
  %6 = load i32* %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, i32* %5, align 4
  %8 = getelementptr inbounds [1 x [1 x [9 x i32]]]* %l_52, i32 0, i32 0
  %9 = getelementptr inbounds [1 x [9 x i32]]* %8, i32 0, i32 0
  %10 = getelementptr inbounds [9 x i32]* %9, i32 0, i32 8
  %11 = load i32* %10, align 4
  %12 = trunc i32 %11 to i16
  ret i16 %12
}

; Function Attrs: noinline nounwind
define internal i32 @func_15(i16 signext %p_16, i8 signext %p_17, i16 signext %p_18, i8 zeroext %p_19) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %l_43 = alloca i32, align 4
  %l_48 = alloca i32, align 4
  store i16 %p_16, i16* %1, align 2
  store i8 %p_17, i8* %2, align 1
  store i16 %p_18, i16* %3, align 2
  store i8 %p_19, i8* %4, align 1
  store i32 -10, i32* %l_43, align 4
  store i32 -8, i32* %l_48, align 4
  %5 = load i32* %l_43, align 4
  %6 = add i32 %5, 1
  store i32 %6, i32* %l_43, align 4
  store i16 -1, i16* @g_8, align 2
  br label %7

; <label>:7                                       ; preds = %19, %0
  %8 = load i16* @g_8, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp sgt i32 %9, 23
  br i1 %10, label %11, label %24

; <label>:11                                      ; preds = %7
  %12 = load i32* getelementptr inbounds ([5 x [10 x i32]]* @g_7, i32 0, i32 4, i32 5), align 4
  %13 = load i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sge i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = load i32* %l_48, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %l_48, align 4
  br label %19

; <label>:19                                      ; preds = %11
  %20 = load i16* @g_8, align 2
  %21 = zext i16 %20 to i32
  %22 = call i32 @safe_add_func_int32_t_s_s(i32 %21, i32 1) #3
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* @g_8, align 2
  br label %7

; <label>:24                                      ; preds = %7
  %25 = load volatile i32* getelementptr inbounds ([4 x i32]* @g_49, i32 0, i32 3), align 4
  %26 = add i32 %25, 1
  store volatile i32 %26, i32* getelementptr inbounds ([4 x i32]* @g_49, i32 0, i32 3), align 4
  store i32 0, i32* %l_43, align 4
  br label %27

; <label>:27                                      ; preds = %47, %24
  %28 = load i32* %l_43, align 4
  %29 = icmp ult i32 %28, 5
  br i1 %29, label %30, label %50

; <label>:30                                      ; preds = %27
  store i16 0, i16* %3, align 2
  br label %31

; <label>:31                                      ; preds = %41, %30
  %32 = load i16* %3, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %35, label %46

; <label>:35                                      ; preds = %31
  %36 = load i16* %3, align 2
  %37 = sext i16 %36 to i32
  %38 = load i32* %l_43, align 4
  %39 = getelementptr inbounds [5 x [10 x i32]]* @g_7, i32 0, i32 %38
  %40 = getelementptr inbounds [10 x i32]* %39, i32 0, i32 %37
  store i32 543781278, i32* %40, align 4
  br label %41

; <label>:41                                      ; preds = %35
  %42 = load i16* %3, align 2
  %43 = sext i16 %42 to i32
  %44 = add nsw i32 %43, 1
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %3, align 2
  br label %31

; <label>:46                                      ; preds = %31
  br label %47

; <label>:47                                      ; preds = %46
  %48 = load i32* %l_43, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %l_43, align 4
  br label %27

; <label>:50                                      ; preds = %27
  %51 = load i16* %1, align 2
  %52 = sext i16 %51 to i32
  ret i32 %52
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
define internal zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2
  store i32 %right, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i16* %1, align 2
  %10 = zext i16 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i16* %1, align 2
  %13 = zext i16 %12 to i32
  %14 = load i32* %2, align 4
  %15 = ashr i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i16
  ret i16 %18
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

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
