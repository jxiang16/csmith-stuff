; ModuleID = 'deleteThis0.1.bc'
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

; <label>:4                                       ; preds = %11, %0
  %5 = phi i32 [ 0, %0 ], [ %12, %11 ]
  %scevgep = getelementptr [2 x i32]* @g_70, i32 0, i32 %5
  %exitcond = icmp ne i32 %5, 2
  br i1 %exitcond, label %6, label %13

; <label>:6                                       ; preds = %4
  %7 = load i32* %scevgep, align 4
  %8 = zext i32 %7 to i64
  call void @transparent_crc(i64 %8, i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0), i32 0) #3
  br i1 false, label %9, label %10

; <label>:9                                       ; preds = %6
  br label %10

; <label>:10                                      ; preds = %9, %6
  br label %11

; <label>:11                                      ; preds = %10
  %12 = add nsw i32 %5, 1
  br label %4

; <label>:13                                      ; preds = %4
  %14 = load volatile i32* @g_74, align 4
  %15 = sext i32 %14 to i64
  call void @transparent_crc(i64 %15, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 0) #3
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
define internal zeroext i8 @func_1() #0 {
  %l_9 = alloca [9 x i16], align 2
  %1 = bitcast [9 x i16]* %l_9 to i8*
  call void @legup_memcpy_2(i8* %1, i8* bitcast ([9 x i16]* @func_1.l_9 to i8*), i32 18)
  %2 = load i8* @g_2, align 1
  %3 = sext i8 %2 to i32
  %4 = getelementptr inbounds [9 x i16]* %l_9, i32 0, i32 4
  %5 = load i16* %4, align 2
  %6 = sext i16 %5 to i32
  %7 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext -5) #3
  %8 = load i8* @g_2, align 1
  %9 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %8, i8 signext 6) #3
  %10 = load i8* @g_2, align 1
  %11 = icmp sgt i8 %9, %10
  %12 = zext i1 %11 to i8
  %13 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %12, i8 signext 6) #3
  %14 = getelementptr inbounds [9 x i16]* %l_9, i32 0, i32 0
  %15 = load i16* %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %18, label %17

; <label>:17                                      ; preds = %0
  br label %18

; <label>:18                                      ; preds = %17, %0
  %19 = phi i16 [ 0, %0 ], [ 1, %17 ]
  %20 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %19, i32 6) #3
  %21 = load i8* @g_2, align 1
  %22 = sext i8 %21 to i32
  %23 = sext i8 %21 to i32
  %24 = call zeroext i16 @func_16(i16 signext %7, i32 -1, i32 %22, i32 %23) #3
  %25 = load i8* @g_2, align 1
  %26 = sext i8 %25 to i16
  %27 = sext i8 %25 to i32
  %28 = getelementptr inbounds [9 x i16]* %l_9, i32 0, i32 3
  %29 = load i16* %28, align 2
  %30 = sext i16 %29 to i32
  %31 = call signext i16 @func_10(i16 zeroext %24, i16 signext %26, i8 zeroext -1, i32 %27, i32 %30) #3
  %32 = load i8* @g_2, align 1
  %33 = sext i8 %32 to i32
  %34 = call zeroext i8 @func_4(i32 %3, i32 %6, i16 signext %31, i32 %33) #3
  %35 = load volatile i32* @g_74, align 4
  %36 = trunc i32 %35 to i8
  ret i8 %36
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #3
  %1 = icmp eq i32 %flag, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str5, i32 0, i32 0), i8* %vname, i32 %4) #4
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0), i32 %crc) #4
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
define internal zeroext i8 @func_4(i32 %p_5, i32 %p_6, i16 signext %p_7, i32 %p_8) #0 {
  store volatile i32 -1, i32* @g_74, align 4
  %1 = load i32* getelementptr inbounds ([2 x i32]* @g_70, i32 0, i32 0), align 4
  %2 = trunc i32 %1 to i8
  ret i8 %2
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
  call void @legup_memcpy_4(i8* %1, i8* bitcast ([10 x i32]* @func_16.l_50 to i8*), i32 40)
  br label %2

; <label>:2                                       ; preds = %36, %0
  %l_51.0 = phi i32 [ 2107626899, %0 ], [ %39, %36 ]
  %.02 = phi i32 [ %p_19, %0 ], [ %38, %36 ]
  %.01 = phi i32 [ 12, %0 ], [ %phitmp, %36 ]
  %3 = icmp eq i32 %.01, -21
  br i1 %3, label %41, label %4

; <label>:4                                       ; preds = %2
  %5 = load i8* @g_2, align 1
  %6 = trunc i32 %p_20 to i8
  %7 = sext i8 %5 to i16
  %8 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %7, i16 signext 0) #3
  %9 = call i32 @safe_div_func_int32_t_s_s(i32 0, i32 0) #3
  %10 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext 1, i32 0) #3
  %11 = load i8* @g_2, align 1
  %12 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 7
  %13 = load i32* %12, align 4
  %14 = trunc i32 %13 to i8
  %15 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %11, i8 signext %14) #3
  %16 = load i8* @g_2, align 1
  %17 = sext i8 %16 to i32
  %18 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %15, i32 %17) #3
  %19 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %18, i32 2) #3
  %20 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %6, i8 zeroext 0) #3
  %21 = load i8* @g_2, align 1
  %22 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext 0, i8 zeroext %21) #3
  br i1 false, label %23, label %24

; <label>:23                                      ; preds = %4
  br label %24

; <label>:24                                      ; preds = %23, %4
  %25 = icmp slt i8 %5, 0
  br i1 %25, label %30, label %26

; <label>:26                                      ; preds = %24
  %27 = load i8* @g_2, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

; <label>:29                                      ; preds = %26
  br label %30

; <label>:30                                      ; preds = %29, %26, %24
  %31 = load i8* @g_2, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %30
  br label %34

; <label>:34                                      ; preds = %33, %30
  %35 = icmp eq i32 %l_51.0, 1
  br label %36

; <label>:36                                      ; preds = %34
  %37 = zext i1 %35 to i32
  %38 = xor i32 %37, 1
  %39 = zext i1 %35 to i32
  %40 = call i32 @safe_sub_func_int32_t_s_s(i32 %.01, i32 5) #3
  %sext = shl i32 %40, 16
  %phitmp = ashr exact i32 %sext, 16
  br label %2

; <label>:41                                      ; preds = %2
  %.02.lcssa = phi i32 [ %.02, %2 ]
  br label %42

; <label>:42                                      ; preds = %44, %41
  %.021 = phi i32 [ undef, %44 ], [ %.02.lcssa, %41 ]
  br i1 false, label %43, label %45

; <label>:43                                      ; preds = %42
  br label %107
                                                  ; No predecessors!
  br label %42

; <label>:45                                      ; preds = %42
  %46 = load i8* @g_2, align 1
  %47 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %48 = load i32* %47, align 4
  %49 = icmp eq i8 %46, 0
  br i1 %49, label %50, label %63

; <label>:50                                      ; preds = %45
  %51 = and i32 %.021, 33328
  %52 = load i8* @g_2, align 1
  %53 = sext i8 %52 to i32
  %54 = or i32 %51, %53
  %55 = icmp ult i32 %54, -739161654
  %56 = zext i1 %55 to i32
  %57 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %58 = load i32* %57, align 4
  %59 = xor i32 %56, %58
  %60 = trunc i32 %59 to i16
  %61 = trunc i32 %.021 to i16
  %62 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %60, i16 zeroext %61) #3
  br label %63

; <label>:63                                      ; preds = %50, %45
  %64 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %65 = load i32* %64, align 4
  %66 = icmp ugt i32 %65, 44437
  %67 = zext i1 %66 to i8
  %68 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %46, i8 signext %67) #3
  %69 = load i8* @g_2, align 1
  %70 = icmp sle i8 %68, %69
  %71 = zext i1 %70 to i16
  %72 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %71, i16 signext -24242) #3
  br i1 true, label %73, label %74

; <label>:73                                      ; preds = %63
  br label %74

; <label>:74                                      ; preds = %73, %63
  %75 = load i8* @g_2, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sgt i32 %76, %p_20
  %78 = zext i1 %77 to i8
  %79 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %78, i8 signext -8) #3
  %80 = sext i8 %79 to i32
  %81 = getelementptr inbounds [10 x i32]* %l_50, i32 0, i32 6
  %82 = load i32* %81, align 4
  %83 = icmp uge i32 %80, %82
  %84 = zext i1 %83 to i32
  %85 = icmp eq i32 %48, %84
  %86 = zext i1 %85 to i16
  %87 = trunc i32 %.021 to i16
  %88 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %86, i16 signext %87) #3
  %89 = load i8* @g_2, align 1
  %90 = sext i8 %89 to i32
  %91 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %88, i32 %90) #3
  %92 = sext i16 %91 to i32
  store i32 %92, i32* getelementptr inbounds ([2 x i32]* @g_70, i32 0, i32 0), align 4
  %.lobit = lshr i8 %46, 7
  %93 = zext i8 %.lobit to i32
  %.not = xor i32 %93, 1
  %94 = load i8* @g_2, align 1
  %95 = sext i8 %94 to i32
  %96 = or i32 %.not, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

; <label>:98                                      ; preds = %74
  %99 = load i32* getelementptr inbounds ([2 x i32]* @g_70, i32 0, i32 0), align 4
  %100 = icmp ne i32 %99, 0
  br label %101

; <label>:101                                     ; preds = %98, %74
  %102 = phi i1 [ true, %74 ], [ %100, %98 ]
  %103 = zext i1 %102 to i8
  %104 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %103, i8 zeroext -5) #3
  %105 = zext i8 %104 to i16
  %106 = and i16 %105, 1
  br label %107

; <label>:107                                     ; preds = %101, %43
  %.0 = phi i16 [ 28421, %43 ], [ %106, %101 ]
  ret i16 %.0
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = sub i16 0, %si
  ret i16 %1
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
define internal signext i8 @safe_add_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = add i8 %si1, %si2
  ret i8 %1
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = mul i8 %si1, %si2
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
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = add i8 %ui1, %ui2
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
define internal signext i8 @safe_mod_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
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
  %11 = srem i32 %9, %10
  br label %12

; <label>:12                                      ; preds = %8, %6
  %13 = phi i32 [ %7, %6 ], [ %11, %8 ]
  %14 = trunc i32 %13 to i8
  ret i8 %14
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
  %1 = add i16 %si1, %si2
  ret i16 %1
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
define internal zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = sub i8 %ui1, %ui2
  ret i8 %1
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
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = sub i16 %si1, %si2
  ret i16 %1
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_sub_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = sub i8 %si1, %si2
  ret i8 %1
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
