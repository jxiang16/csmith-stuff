; ModuleID = 'deleteThis0.prelto.linked.bc'
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
  call void @platform_main_begin() #3
  call void @crc32_gentab() #3
  %1 = call zeroext i8 @func_1() #3
  %2 = load i8* @g_2, align 1
  %3 = sext i8 %2 to i64
  call void @transparent_crc(i64 %3, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 0) #3
  br label %4

; <label>:4                                       ; preds = %14, %0
  %i.0 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %5 = icmp slt i32 %i.0, 2
  br i1 %5, label %6, label %16

; <label>:6                                       ; preds = %4
  %7 = getelementptr inbounds [2 x i32]* @g_70, i32 0, i32 %i.0
  %8 = load i32* %7, align 4
  %9 = zext i32 %8 to i64
  call void @transparent_crc(i64 %9, i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0), i32 0) #3
  %10 = icmp ne i32 0, 0
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %6
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str2, i32 0, i32 0), i32 %i.0) #3
  br label %13

; <label>:13                                      ; preds = %11, %6
  br label %14

; <label>:14                                      ; preds = %13
  %15 = add nsw i32 %i.0, 1
  br label %4

; <label>:16                                      ; preds = %4
  %17 = load volatile i32* @g_74, align 4
  %18 = sext i32 %17 to i64
  call void @transparent_crc(i64 %18, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 0) #3
  %19 = load i32* @crc32_context, align 4
  %20 = xor i32 %19, -1
  %21 = call i32 @platform_main_end(i32 %20, i32 0) #3
  ret i32 %21
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
define internal zeroext i8 @func_1() #0 {
  %l_9 = alloca [9 x i16], align 2
  %1 = bitcast [9 x i16]* %l_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* bitcast ([9 x i16]* @func_1.l_9 to i8*), i32 18, i32 2, i1 false)
  %2 = load i8* @g_2, align 1
  %3 = sext i8 %2 to i32
  %4 = or i32 -1, %3
  %5 = load i8* @g_2, align 1
  %6 = sext i8 %5 to i32
  %7 = getelementptr inbounds [9 x i16]* %l_9, i32 0, i32 4
  %8 = load i16* %7, align 2
  %9 = sext i16 %8 to i32
  %10 = load i8* @g_2, align 1
  %11 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext -5) #3
  %12 = getelementptr inbounds [9 x i16]* %l_9, i32 0, i32 8
  %13 = load i16* %12, align 2
  %14 = load i8* @g_2, align 1
  %15 = trunc i32 6 to i8
  %16 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %14, i8 signext %15) #3
  %17 = sext i8 %16 to i32
  %18 = load i8* @g_2, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sgt i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = and i32 %21, %4
  %23 = trunc i32 %22 to i8
  %24 = trunc i32 6 to i8
  %25 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %23, i8 signext %24) #3
  %26 = getelementptr inbounds [9 x i16]* %l_9, i32 0, i32 0
  %27 = load i16* %26, align 2
  %28 = sext i16 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

; <label>:30                                      ; preds = %0
  %31 = icmp ne i32 6, 0
  br label %32

; <label>:32                                      ; preds = %30, %0
  %33 = phi i1 [ false, %0 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  %35 = trunc i32 %34 to i16
  %36 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %35, i32 6) #3
  %37 = load i8* @g_2, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8* @g_2, align 1
  %40 = sext i8 %39 to i32
  %41 = call zeroext i16 @func_16(i16 signext %11, i32 -1, i32 %38, i32 %40) #3
  %42 = load i8* @g_2, align 1
  %43 = sext i8 %42 to i16
  %44 = trunc i32 %4 to i8
  %45 = load i8* @g_2, align 1
  %46 = sext i8 %45 to i32
  %47 = getelementptr inbounds [9 x i16]* %l_9, i32 0, i32 3
  %48 = load i16* %47, align 2
  %49 = sext i16 %48 to i32
  %50 = call signext i16 @func_10(i16 zeroext %41, i16 signext %43, i8 zeroext %44, i32 %46, i32 %49) #3
  %51 = load i8* @g_2, align 1
  %52 = sext i8 %51 to i32
  %53 = call zeroext i8 @func_4(i32 %6, i32 %9, i16 signext %50, i32 %52) #3
  %54 = zext i8 %53 to i32
  %55 = load i8* @g_2, align 1
  %56 = sext i8 %55 to i32
  %57 = or i32 %54, %56
  %58 = load volatile i32* @g_74, align 4
  %59 = trunc i32 %58 to i8
  ret i8 %59
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #3
  %1 = icmp ne i32 %flag, 0
  br i1 %1, label %2, label %6

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str5, i32 0, i32 0), i8* %vname, i32 %4) #3
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0), i32 %crc) #3
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define internal zeroext i8 @func_4(i32 %p_5, i32 %p_6, i16 signext %p_7, i32 %p_8) #0 {
  %1 = zext i8 -69 to i32
  %2 = icmp sle i32 %1, 2
  %3 = zext i1 %2 to i32
  store volatile i32 -1, i32* @g_74, align 4
  %4 = load i32* getelementptr inbounds ([2 x i32]* @g_70, i32 0, i32 0), align 4
  %5 = trunc i32 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind
define internal signext i16 @func_10(i16 zeroext %p_11, i16 signext %p_12, i8 zeroext %p_13, i32 %p_14, i32 %p_15) #0 {
  %1 = load i32* getelementptr inbounds ([2 x i32]* @g_70, i32 0, i32 0), align 4
  %2 = trunc i32 %1 to i16
  ret i16 %2
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @func_16(i16 signext %p_17, i32 %p_18, i32 %p_19, i32 %p_20) #0 {
  %l_50 = alloca [10 x i32], align 4
  %1 = bitcast [10 x i32]* %l_50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* bitcast ([10 x i32]* @func_16.l_50 to i8*), i32 40, i32 4, i1 false)
  br label %2

; <label>:2                                       ; preds = %74, %0
  %l_51.0 = phi i32 [ 2107626899, %0 ], [ %71, %74 ]
  %.02 = phi i32 [ %p_19, %0 ], [ %73, %74 ]
  %.01 = phi i16 [ 12, %0 ], [ %77, %74 ]
  %3 = sext i16 %.01 to i32
  %4 = icmp ne i32 %3, -21
  br i1 %4, label %5, label %78

; <label>:5                                       ; preds = %2
  %6 = load i8* @g_2, align 1
  %7 = sext i8 %6 to i32
  %8 = trunc i32 %p_20 to i8
  %9 = load i8* @g_2, align 1
  %10 = sext i8 %9 to i16
  %11 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %10, i16 signext 0) #3
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %14 = load i32* %13, align 4
  %15 = icmp ult i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = icmp eq i32 %16, 1589333728
  %18 = zext i1 %17 to i32
  %19 = call i32 @safe_div_func_int32_t_s_s(i32 %18, i32 0) #3
  %20 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext 1, i32 0) #3
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, %p_18
  %23 = load i8* @g_2, align 1
  %24 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 7
  %25 = load i32* %24, align 4
  %26 = trunc i32 %25 to i8
  %27 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %23, i8 signext %26) #3
  %28 = load i8* @g_2, align 1
  %29 = sext i8 %28 to i32
  %30 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %27, i32 %29) #3
  %31 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %30, i32 2) #3
  %32 = zext i8 %31 to i32
  %33 = icmp slt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = trunc i32 %34 to i8
  %36 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %8, i8 zeroext %35) #3
  %37 = zext i8 %36 to i32
  %38 = icmp sgt i32 %37, 43426
  %39 = zext i1 %38 to i32
  %40 = trunc i32 %39 to i8
  %41 = load i8* @g_2, align 1
  %42 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %40, i8 zeroext %41) #3
  %43 = zext i8 %42 to i32
  %44 = icmp ugt i32 %43, -1747566724
  br i1 %44, label %45, label %49

; <label>:45                                      ; preds = %5
  %46 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 9
  %47 = load i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

; <label>:49                                      ; preds = %45, %5
  %50 = phi i1 [ false, %5 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = icmp sge i32 %7, %51
  br i1 %52, label %53, label %60

; <label>:53                                      ; preds = %49
  %54 = load i8* @g_2, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %53
  %58 = sext i16 %.01 to i32
  %59 = icmp ne i32 %58, 0
  br label %60

; <label>:60                                      ; preds = %57, %53, %49
  %61 = phi i1 [ false, %53 ], [ false, %49 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  %63 = load i8* @g_2, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

; <label>:66                                      ; preds = %60
  br label %67

; <label>:67                                      ; preds = %66, %60
  %68 = phi i1 [ true, %60 ], [ true, %66 ]
  %69 = zext i1 %68 to i32
  %70 = icmp eq i32 %69, %l_51.0
  %71 = zext i1 %70 to i32
  %72 = icmp eq i32 0, %71
  %73 = zext i1 %72 to i32
  br label %74

; <label>:74                                      ; preds = %67
  %75 = sext i16 %.01 to i32
  %76 = call i32 @safe_sub_func_int32_t_s_s(i32 %75, i32 5) #3
  %77 = trunc i32 %76 to i16
  br label %2

; <label>:78                                      ; preds = %2
  br label %79

; <label>:79                                      ; preds = %82, %78
  %80 = icmp eq i32 0, -1
  br i1 %80, label %81, label %85

; <label>:81                                      ; preds = %79
  br label %186
                                                  ; No predecessors!
  %83 = load i32* undef, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* undef, align 4
  br label %79

; <label>:85                                      ; preds = %79
  %86 = load i8* @g_2, align 1
  %87 = sext i8 %86 to i32
  %88 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %89 = load i32* %88, align 4
  %90 = load i8* @g_2, align 1
  %91 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %92 = load i32* %91, align 4
  %93 = load i8* @g_2, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %114, label %96

; <label>:96                                      ; preds = %85
  %97 = load i8* @g_2, align 1
  %98 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %99 = load i32* %98, align 4
  %100 = and i32 33329, %.02
  %101 = load i8* @g_2, align 1
  %102 = sext i8 %101 to i32
  %103 = or i32 %100, %102
  %104 = icmp ule i32 %103, -739161655
  %105 = zext i1 %104 to i32
  %106 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %107 = load i32* %106, align 4
  %108 = xor i32 %105, %107
  %109 = trunc i32 %108 to i16
  %110 = trunc i32 %.02 to i16
  %111 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %109, i16 zeroext %110) #3
  %112 = zext i16 %111 to i32
  %113 = icmp ne i32 %112, 0
  br label %114

; <label>:114                                     ; preds = %96, %85
  %115 = phi i1 [ true, %85 ], [ %113, %96 ]
  %116 = zext i1 %115 to i32
  %117 = icmp ne i32 %92, %116
  %118 = zext i1 %117 to i32
  %119 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %120 = load i32* %119, align 4
  %121 = icmp ult i32 44437, %120
  %122 = zext i1 %121 to i32
  %123 = trunc i32 %122 to i8
  %124 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %90, i8 signext %123) #3
  %125 = sext i8 %124 to i32
  %126 = load i8* @g_2, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sle i32 %125, %127
  %129 = zext i1 %128 to i32
  %130 = trunc i32 %129 to i16
  %131 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %130, i16 signext -24242) #3
  %132 = sext i16 %131 to i32
  %133 = icmp eq i32 %132, 31872
  %134 = zext i1 %133 to i32
  br i1 true, label %135, label %139

; <label>:135                                     ; preds = %114
  %136 = load i8* @g_2, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br label %139

; <label>:139                                     ; preds = %135, %114
  %140 = phi i1 [ false, %114 ], [ %138, %135 ]
  %141 = zext i1 %140 to i32
  %142 = load i8* @g_2, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp slt i32 %p_20, %143
  %145 = zext i1 %144 to i32
  %146 = trunc i32 %145 to i8
  %147 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %146, i8 signext -8) #3
  %148 = sext i8 %147 to i32
  %149 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %150 = load i32* %149, align 4
  %151 = icmp uge i32 %148, %150
  %152 = zext i1 %151 to i32
  %153 = icmp eq i32 %89, %152
  %154 = zext i1 %153 to i32
  %155 = trunc i32 %154 to i16
  %156 = trunc i32 %.02 to i16
  %157 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %155, i16 signext %156) #3
  %158 = load i8* @g_2, align 1
  %159 = sext i8 %158 to i32
  %160 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %157, i32 %159) #3
  %161 = sext i16 %160 to i32
  store i32 %161, i32* getelementptr inbounds ([2 x i32]* @g_70, i32 0, i32 0), align 4
  %162 = icmp uge i32 %161, 9837
  %163 = zext i1 %162 to i32
  %164 = icmp slt i32 %163, %p_20
  %165 = zext i1 %164 to i32
  %166 = xor i32 %165, -1
  %167 = icmp ult i32 %166, 9
  %168 = zext i1 %167 to i32
  %169 = icmp sge i32 %87, %168
  %170 = zext i1 %169 to i32
  %171 = load i8* @g_2, align 1
  %172 = sext i8 %171 to i32
  %173 = or i32 %170, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

; <label>:175                                     ; preds = %139
  %176 = load i32* getelementptr inbounds ([2 x i32]* @g_70, i32 0, i32 0), align 4
  %177 = icmp ne i32 %176, 0
  br label %178

; <label>:178                                     ; preds = %175, %139
  %179 = phi i1 [ true, %139 ], [ %177, %175 ]
  %180 = zext i1 %179 to i32
  %181 = trunc i32 %180 to i8
  %182 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %181, i8 zeroext -5) #3
  %183 = zext i8 %182 to i32
  %184 = and i32 1, %183
  %185 = trunc i32 %184 to i16
  br label %186

; <label>:186                                     ; preds = %178, %81
  %.0 = phi i16 [ 28421, %81 ], [ %185, %178 ]
  ret i16 %.0
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = sext i16 %si to i32
  %2 = sub nsw i32 0, %1
  %3 = trunc i32 %2 to i16
  ret i16 %3
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = icmp slt i32 %right, 0
  br i1 %1, label %8, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp sge i32 %right, 32
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %2
  %5 = zext i16 %left to i32
  %6 = ashr i32 65535, %right
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
define internal signext i8 @safe_add_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = sext i8 %si1 to i32
  %2 = sext i8 %si2 to i32
  %3 = add nsw i32 %1, %2
  %4 = trunc i32 %3 to i8
  ret i8 %4
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
define internal zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = zext i8 %ui2 to i32
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = zext i8 %ui1 to i32
  br label %9

; <label>:5                                       ; preds = %0
  %6 = zext i8 %ui1 to i32
  %7 = zext i8 %ui2 to i32
  %8 = srem i32 %6, %7
  br label %9

; <label>:9                                       ; preds = %5, %3
  %10 = phi i32 [ %4, %3 ], [ %8, %5 ]
  %11 = trunc i32 %10 to i8
  ret i8 %11
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
define internal signext i8 @safe_mod_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
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
  %14 = srem i32 %12, %13
  br label %15

; <label>:15                                      ; preds = %11, %9
  %16 = phi i32 [ %10, %9 ], [ %14, %11 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
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
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = sext i16 %si1 to i32
  %2 = sext i16 %si2 to i32
  %3 = add nsw i32 %1, %2
  %4 = trunc i32 %3 to i16
  ret i16 %4
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
define internal zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = zext i8 %ui1 to i32
  %2 = zext i8 %ui2 to i32
  %3 = sub nsw i32 %1, %2
  %4 = trunc i32 %3 to i8
  ret i8 %4
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
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = sext i16 %si1 to i32
  %2 = sext i16 %si2 to i32
  %3 = sub nsw i32 %1, %2
  %4 = trunc i32 %3 to i16
  ret i16 %4
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

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
