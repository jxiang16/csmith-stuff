; ModuleID = 'testOutput0.prelto.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@g_2 = internal global i32 -1324299973, align 4
@.str = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_3 = internal global i32 9, align 4
@.str1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_6 = internal global i32 1, align 4
@.str2 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_21 = internal global i32 0, align 4
@.str3 = private unnamed_addr constant [5 x i8] c"g_21\00", align 1
@g_25 = internal global [3 x i32] [i32 -8, i32 -8, i32 -8], align 4
@.str4 = private unnamed_addr constant [8 x i8] c"g_25[i]\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@crc32_context = internal global i32 -1, align 4
@.str6 = private unnamed_addr constant [15 x i8] c"checksum = %u\0A\00", align 1
@.str7 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@crc32_tab = internal global [256 x i32] zeroinitializer, align 4
@func_1.l_26 = private unnamed_addr constant [1 x [9 x i32]] [[9 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2]], align 4

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
  %5 = load volatile i32* @g_2, align 4
  %6 = sext i32 %5 to i64
  %7 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %6, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %7) #3
  %8 = load i32* @g_3, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %9, i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %10) #3
  %11 = load i32* @g_6, align 4
  %12 = sext i32 %11 to i64
  %13 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %12, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i32 %13) #3
  %14 = load i32* @g_21, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %15, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 %16) #3
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %32, %0
  %18 = load i32* %i, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %35

; <label>:20                                      ; preds = %17
  %21 = load i32* %i, align 4
  %22 = getelementptr inbounds [3 x i32]* @g_25, i32 0, i32 %21
  %23 = load i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %24, i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0), i32 %25) #3
  %26 = load i32* %print_hash_value, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

; <label>:28                                      ; preds = %20
  %29 = load i32* %i, align 4
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str5, i32 0, i32 0), i32 %29) #3
  br label %31

; <label>:31                                      ; preds = %28, %20
  br label %32

; <label>:32                                      ; preds = %31
  %33 = load i32* %i, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %i, align 4
  br label %17

; <label>:35                                      ; preds = %17
  %36 = load i32* @crc32_context, align 4
  %37 = xor i32 %36, -1
  %38 = load i32* %print_hash_value, align 4
  %39 = call i32 @platform_main_end(i32 %37, i32 %38) #3
  store i32 %39, i32* %checksum, align 4
  %40 = load i32* %checksum, align 4
  ret i32 %40
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
  %1 = alloca i32, align 4
  %l_12 = alloca [3 x i16], align 2
  %l_27 = alloca i32, align 4
  %l_30 = alloca i16, align 2
  %l_35 = alloca i8, align 1
  %l_38 = alloca i8, align 1
  %l_39 = alloca i32, align 4
  %i = alloca i32, align 4
  %l_11 = alloca i32, align 4
  %l_23 = alloca i32, align 4
  %l_24 = alloca i32, align 4
  %l_28 = alloca i32, align 4
  %l_29 = alloca i32, align 4
  %l_16 = alloca i16, align 2
  %l_22 = alloca i8, align 1
  %l_26 = alloca [1 x [9 x i32]], align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 -1368172156, i32* %l_27, align 4
  store i16 0, i16* %l_30, align 2
  store i8 -7, i8* %l_35, align 1
  store i8 77, i8* %l_38, align 1
  store i32 395942169, i32* %l_39, align 4
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %8, %0
  %3 = load i32* %i, align 4
  %4 = icmp slt i32 %3, 3
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4
  %7 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 %6
  store i16 9015, i16* %7, align 2
  br label %8

; <label>:8                                       ; preds = %5
  %9 = load i32* %i, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %i, align 4
  br label %2

; <label>:11                                      ; preds = %2
  store i32 24, i32* @g_3, align 4
  br label %12

; <label>:12                                      ; preds = %51, %11
  %13 = load i32* @g_3, align 4
  %14 = icmp ne i32 %13, -16
  br i1 %14, label %15, label %54

; <label>:15                                      ; preds = %12
  store i32 -327555470, i32* %l_11, align 4
  store i32 -2119684489, i32* %l_23, align 4
  store i32 1112927194, i32* %l_24, align 4
  store i32 -1637698208, i32* %l_28, align 4
  store i32 -1, i32* %l_29, align 4
  store i32 0, i32* @g_6, align 4
  br label %16

; <label>:16                                      ; preds = %47, %15
  %17 = load i32* @g_6, align 4
  %18 = icmp sle i32 %17, 28
  br i1 %18, label %19, label %50

; <label>:19                                      ; preds = %16
  store i16 1, i16* %l_16, align 2
  %20 = load i32* %l_11, align 4
  %21 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 0
  %22 = load i16* %21, align 2
  %23 = sext i16 %22 to i32
  %24 = or i32 %20, %23
  %25 = load i16* %l_16, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16* %l_16, align 2
  %28 = trunc i16 %27 to i8
  %29 = load volatile i32* @g_2, align 4
  %30 = load i32* %l_11, align 4
  store i32 -50606592, i32* @g_21, align 4
  %31 = call i32 @func_17(i8 signext %28, i32 %29, i32 -50606592) #3
  %32 = call i32 @func_13(i32 %26, i32 %31) #3
  %33 = load i32* @g_3, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = and i32 %24, %35
  %37 = trunc i32 %36 to i8
  %38 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %37, i8 zeroext 40) #3
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %44

; <label>:40                                      ; preds = %19
  store i8 -10, i8* %l_22, align 1
  %41 = bitcast [1 x [9 x i32]]* %l_26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %41, i8* bitcast ([1 x [9 x i32]]* @func_1.l_26 to i8*), i32 36, i32 4, i1 false)
  %42 = load i16* %l_30, align 2
  %43 = add i16 %42, -1
  store i16 %43, i16* %l_30, align 2
  br label %46

; <label>:44                                      ; preds = %19
  %45 = load i32* %l_29, align 4
  store i32 %45, i32* %1
  br label %123

; <label>:46                                      ; preds = %40
  br label %47

; <label>:47                                      ; preds = %46
  %48 = load i32* @g_6, align 4
  %49 = call i32 @safe_add_func_uint32_t_u_u(i32 %48, i32 4) #3
  store i32 %49, i32* @g_6, align 4
  br label %16

; <label>:50                                      ; preds = %16
  br label %51

; <label>:51                                      ; preds = %50
  %52 = load i32* @g_3, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* @g_3, align 4
  br label %12

; <label>:54                                      ; preds = %12
  %55 = load i32* @g_6, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i32* @g_21, align 4
  %58 = load i32* %l_27, align 4
  %59 = call i32 @func_13(i32 %57, i32 %58) #3
  %60 = trunc i32 %59 to i8
  %61 = load i8* %l_35, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %91

; <label>:64                                      ; preds = %54
  %65 = load i32* @g_6, align 4
  %66 = load i32* @g_6, align 4
  %67 = trunc i32 %66 to i8
  %68 = load i16* %l_30, align 2
  %69 = zext i16 %68 to i32
  %70 = load i32* @g_21, align 4
  %71 = call i32 @func_17(i8 signext %67, i32 %69, i32 %70) #3
  %72 = trunc i32 %71 to i8
  %73 = load i32* @g_6, align 4
  %74 = trunc i32 %73 to i8
  %75 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %72, i8 zeroext %74) #3
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 0
  %78 = load i16* %77, align 2
  %79 = sext i16 %78 to i32
  %80 = icmp sge i32 %76, %79
  %81 = zext i1 %80 to i32
  %82 = load volatile i32* @g_2, align 4
  %83 = icmp sgt i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @func_13(i32 %65, i32 %84) #3
  %86 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 0
  %87 = load i16* %86, align 2
  %88 = sext i16 %87 to i32
  %89 = and i32 65535, %88
  %90 = icmp ne i32 %89, 0
  br label %91

; <label>:91                                      ; preds = %64, %54
  %92 = phi i1 [ false, %54 ], [ %90, %64 ]
  %93 = zext i1 %92 to i32
  %94 = load i32* getelementptr inbounds ([3 x i32]* @g_25, i32 0, i32 2), align 4
  %95 = trunc i32 %94 to i8
  %96 = load i32* getelementptr inbounds ([3 x i32]* @g_25, i32 0, i32 2), align 4
  %97 = load i32* getelementptr inbounds ([3 x i32]* @g_25, i32 0, i32 2), align 4
  %98 = call i32 @func_17(i8 signext %95, i32 %96, i32 %97) #3
  %99 = load i32* getelementptr inbounds ([3 x i32]* @g_25, i32 0, i32 2), align 4
  %100 = call i32 @func_13(i32 %98, i32 %99) #3
  %101 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %60, i32 %100) #3
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

; <label>:104                                     ; preds = %91
  %105 = load i16* %l_30, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp ne i32 %106, 0
  br label %108

; <label>:108                                     ; preds = %104, %91
  %109 = phi i1 [ true, %91 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = load i8* %l_38, align 1
  %112 = zext i8 %111 to i32
  %113 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 2
  %114 = load i16* %113, align 2
  %115 = sext i16 %114 to i32
  %116 = call i32 @func_17(i8 signext %56, i32 %112, i32 %115) #3
  %117 = load i32* %l_39, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %l_39, align 4
  %119 = load i16* %l_30, align 2
  %120 = zext i16 %119 to i32
  %121 = or i32 %118, %120
  store i32 %121, i32* %l_27, align 4
  %122 = load i32* %l_27, align 4
  store i32 %122, i32* %1
  br label %123

; <label>:123                                     ; preds = %108, %44
  %124 = load i32* %1
  ret i32 %124
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
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str7, i32 0, i32 0), i8* %8, i32 %10) #3
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
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str6, i32 0, i32 0), i32 %3) #3
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
define internal i32 @func_13(i32 %p_14, i32 %p_15) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %p_14, i32* %1, align 4
  store i32 %p_15, i32* %2, align 4
  %3 = load i32* @g_6, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind
define internal i32 @func_17(i8 signext %p_18, i32 %p_19, i32 %p_20) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i8 %p_18, i8* %1, align 1
  store i32 %p_19, i32* %2, align 4
  store i32 %p_20, i32* %3, align 4
  %4 = load i32* %2, align 4
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

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

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
