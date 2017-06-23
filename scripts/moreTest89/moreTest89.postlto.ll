; ModuleID = 'moreTest89.postlto.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@g_3 = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_51 = internal global i8 22, align 1
@.str1 = private unnamed_addr constant [5 x i8] c"g_51\00", align 1
@g_54 = internal global i32 7, align 4
@.str2 = private unnamed_addr constant [5 x i8] c"g_54\00", align 1
@g_55 = internal global i16 14922, align 2
@.str3 = private unnamed_addr constant [5 x i8] c"g_55\00", align 1
@g_59 = internal global i32 592494949, align 4
@.str4 = private unnamed_addr constant [5 x i8] c"g_59\00", align 1
@g_81 = internal global i16 0, align 2
@.str5 = private unnamed_addr constant [5 x i8] c"g_81\00", align 1
@g_119 = internal global i32 0, align 4
@.str6 = private unnamed_addr constant [6 x i8] c"g_119\00", align 1
@g_123 = internal global i16 31555, align 2
@.str7 = private unnamed_addr constant [6 x i8] c"g_123\00", align 1
@crc32_context = internal global i32 -1, align 4
@.str8 = private unnamed_addr constant [15 x i8] c"checksum = %u\0A\00", align 1
@.str9 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@crc32_tab = internal global [256 x i32] zeroinitializer, align 4
@func_1.l_31 = private unnamed_addr constant [6 x [3 x [6 x i32]]] [[3 x [6 x i32]] [[6 x i32] [i32 -515530939, i32 -1660469940, i32 -1999301382, i32 -2008894257, i32 -1999301382, i32 -1660469940], [6 x i32] [i32 706674188, i32 -515530939, i32 -1999301382, i32 -610148999, i32 -969177055, i32 -2008894257], [6 x i32] [i32 -1836673886, i32 -610148999, i32 -1660469940, i32 -1660469940, i32 -610148999, i32 -1836673886]], [3 x [6 x i32]] [[6 x i32] [i32 -1660469940, i32 -610148999, i32 -1836673886, i32 931327177, i32 -969177055, i32 -1999301382], [6 x i32] [i32 -1999301382, i32 -515530939, i32 706674188, i32 -515530939, i32 -1999301382, i32 -610148999], [6 x i32] [i32 -1999301382, i32 -1660469940, i32 -515530939, i32 931327177, i32 -1, i32 -1]], [3 x [6 x i32]] [[6 x i32] [i32 -1660469940, i32 -969177055, i32 -969177055, i32 -1660469940, i32 706674188, i32 -1], [6 x i32] [i32 -1836673886, i32 -1, i32 -515530939, i32 -610148999, i32 -1, i32 -1660469940], [6 x i32] [i32 -610148999, i32 931327177, i32 -610148999, i32 -515530939, i32 -1, i32 -1836673886]], [3 x [6 x i32]] [[6 x i32] [i32 -5, i32 -1999301382, i32 706674188, i32 -610148999, i32 -610148999, i32 706674188], [6 x i32] [i32 -2008894257, i32 -2008894257, i32 -969177055, i32 -610148999, i32 -1999301382, i32 -515530939], [6 x i32] [i32 -5, i32 -969177055, i32 -1836673886, i32 -515530939, i32 -1836673886, i32 -969177055]], [3 x [6 x i32]] [[6 x i32] [i32 -610148999, i32 -5, i32 -1836673886, i32 -1660469940, i32 -2008894257, i32 -515530939], [6 x i32] [i32 706674188, i32 -1660469940, i32 -969177055, i32 -969177055, i32 -1660469940, i32 706674188], [6 x i32] [i32 -969177055, i32 -1660469940, i32 706674188, i32 -1, i32 -2008894257, i32 -1836673886]], [3 x [6 x i32]] [[6 x i32] [i32 -1836673886, i32 -5, i32 -610148999, i32 -5, i32 -1836673886, i32 -1660469940], [6 x i32] [i32 -1836673886, i32 -969177055, i32 -5, i32 -1, i32 -1999301382, i32 -1999301382], [6 x i32] [i32 -969177055, i32 -2008894257, i32 -2008894257, i32 -969177055, i32 -610148999, i32 -1999301382]]], align 4

; Function Attrs: noinline nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @platform_main_begin() #3
  call void @crc32_gentab() #3
  %1 = call i32 @func_1() #3
  %2 = load i32* @g_3, align 4
  %3 = zext i32 %2 to i64
  call void @transparent_crc(i64 %3, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 0) #3
  %4 = load volatile i8* @g_51, align 1
  %5 = zext i8 %4 to i64
  call void @transparent_crc(i64 %5, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 0) #3
  %6 = load i32* @g_54, align 4
  %7 = sext i32 %6 to i64
  call void @transparent_crc(i64 %7, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 0) #3
  %8 = load i16* @g_55, align 2
  %9 = sext i16 %8 to i64
  call void @transparent_crc(i64 %9, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 0) #3
  %10 = load i32* @g_59, align 4
  %11 = sext i32 %10 to i64
  call void @transparent_crc(i64 %11, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 0) #3
  %12 = load i16* @g_81, align 2
  %13 = zext i16 %12 to i64
  call void @transparent_crc(i64 %13, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 0) #3
  %14 = load i32* @g_119, align 4
  %15 = sext i32 %14 to i64
  call void @transparent_crc(i64 %15, i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), i32 0) #3
  %16 = load i16* @g_123, align 2
  %17 = sext i16 %16 to i64
  call void @transparent_crc(i64 %17, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i32 0) #3
  %18 = load i32* @crc32_context, align 4
  %19 = xor i32 %18, -1
  %20 = call i32 @platform_main_end(i32 %19, i32 0) #3
  ret i32 %20
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
  %l_31 = alloca [6 x [3 x [6 x i32]]], align 4
  br label %1

; <label>:1                                       ; preds = %71, %0
  %storemerge = phi i32 [ 0, %0 ], [ %73, %71 ]
  %l_4.0 = phi i16 [ 5100, %0 ], [ %24, %71 ]
  store i32 %storemerge, i32* @g_3, align 4
  %2 = icmp eq i32 %storemerge, 54
  br i1 %2, label %74, label %3

; <label>:3                                       ; preds = %1
  %4 = bitcast [6 x [3 x [6 x i32]]]* %l_31 to i8*
  call void @legup_memcpy_4(i8* %4, i8* bitcast ([6 x [3 x [6 x i32]]]* @func_1.l_31 to i8*), i32 432)
  %5 = call zeroext i16 @func_11(i16 zeroext -1) #3
  %6 = call zeroext i16 @func_11(i16 zeroext 5100) #3
  %7 = load i32* @g_3, align 4
  %8 = trunc i32 %7 to i16
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %11, label %10

; <label>:10                                      ; preds = %3
  br label %11

; <label>:11                                      ; preds = %10, %3
  %12 = phi i32 [ 0, %3 ], [ 1, %10 ]
  %13 = or i32 %7, %12
  %14 = trunc i32 %13 to i16
  %15 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %14, i16 zeroext %l_4.0) #3
  %16 = zext i16 %15 to i32
  %17 = call i32 @safe_mod_func_uint32_t_u_u(i32 %7, i32 %16) #3
  %18 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %8, i16 zeroext 0) #3
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %11
  br label %21

; <label>:21                                      ; preds = %20, %11
  %22 = phi i16 [ 1, %11 ], [ 0, %20 ]
  %23 = xor i16 %6, %22
  %24 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %5, i16 zeroext %23) #3
  %25 = zext i16 %24 to i32
  %26 = load i32* @g_3, align 4
  %27 = getelementptr inbounds [6 x [3 x [6 x i32]]]* %l_31, i32 0, i32 4, i32 2, i32 5
  store i32 %26, i32* %27, align 4
  %28 = load i32* @g_3, align 4
  %29 = trunc i32 %28 to i8
  %30 = trunc i16 %24 to i8
  %31 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %30, i32 1) #3
  %32 = load i32* @g_3, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %21
  br label %35

; <label>:35                                      ; preds = %34, %21
  %36 = call i32 @safe_div_func_int32_t_s_s(i32 %28, i32 1) #3
  %37 = trunc i32 %36 to i8
  %38 = load i32* @g_3, align 4
  %39 = trunc i32 %38 to i8
  %40 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %37, i8 signext %39) #3
  %41 = load i32* @g_3, align 4
  %42 = trunc i32 %41 to i16
  %43 = trunc i32 %41 to i16
  %44 = call zeroext i8 @func_39(i8 zeroext %29, i16 zeroext %42, i16 signext %43) #3
  %45 = xor i8 %44, -9
  %46 = load i32* @g_3, align 4
  %47 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %45, i32 %46) #3
  %48 = sext i8 %47 to i16
  %49 = and i16 %48, -10715
  %50 = call zeroext i8 @func_32(i8 signext -1, i16 signext %49, i16 signext -1, i32 %25) #3
  %51 = zext i8 %50 to i32
  %52 = load i32* @g_3, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = or i32 %26, %54
  %56 = trunc i32 %55 to i16
  %57 = load i16* @g_55, align 2
  %58 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %56, i16 zeroext %57) #3
  %59 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext 5100, i32 15) #3
  %60 = load i32* @g_3, align 4
  %61 = trunc i32 %60 to i16
  %62 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %59, i16 zeroext %61) #3
  %63 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %62, i16 zeroext -1) #3
  %64 = load i32* @g_54, align 4
  %65 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext 25, i32 %64) #3
  %66 = icmp eq i8 %65, 0
  %67 = zext i1 %66 to i16
  %68 = call zeroext i16 @func_11(i16 zeroext %67) #3
  %69 = load i16* @g_123, align 2
  %70 = and i16 %69, %68
  store i16 %70, i16* @g_123, align 2
  br label %71

; <label>:71                                      ; preds = %35
  %72 = load i32* @g_3, align 4
  %73 = add i32 %72, 1
  br label %1

; <label>:74                                      ; preds = %1
  %75 = load i16* @g_81, align 2
  %76 = zext i16 %75 to i32
  ret i32 %76
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #3
  %1 = icmp eq i32 %flag, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str9, i32 0, i32 0), i8* %vname, i32 %4) #4
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str8, i32 0, i32 0), i32 %crc) #4
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
define internal zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = add i16 %ui1, %ui2
  ret i16 %1
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @func_11(i16 zeroext %p_12) #0 {
  ret i16 %p_12
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = sub i16 %ui1, %ui2
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
define internal zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = mul i16 %ui1, %ui2
  ret i16 %1
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
define internal zeroext i8 @func_32(i8 signext %p_33, i16 signext %p_34, i16 signext %p_35, i32 %p_36) #0 {
  store i32 -4, i32* @g_59, align 4
  br i1 false, label %1, label %6

; <label>:1                                       ; preds = %0
  br i1 undef, label %2, label %3

; <label>:2                                       ; preds = %1
  br label %3

; <label>:3                                       ; preds = %2, %1
  br i1 undef, label %4, label %5

; <label>:4                                       ; preds = %3
  br label %5

; <label>:5                                       ; preds = %4, %3
  br label %6

; <label>:6                                       ; preds = %5, %0
  %7 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext 106, i32 5) #3
  %8 = sext i8 %7 to i32
  %9 = load i16* @g_55, align 2
  %10 = sext i16 %9 to i32
  %11 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 0, i32 7) #3
  %12 = sext i8 %11 to i32
  %13 = icmp sgt i32 %10, %12
  %14 = zext i1 %13 to i32
  %15 = icmp eq i32 %8, %14
  br i1 %15, label %16, label %65

; <label>:16                                      ; preds = %6
  %17 = load i16* @g_55, align 2
  %18 = sext i16 %17 to i32
  %19 = load i32* @g_59, align 4
  %20 = trunc i32 %19 to i16
  %21 = trunc i32 %19 to i16
  %22 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %20, i16 zeroext %21) #3
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %43, label %24

; <label>:24                                      ; preds = %16
  %25 = sext i8 %p_33 to i16
  %26 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext -6, i16 signext %25) #3
  %27 = trunc i16 %26 to i8
  %28 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %27, i32 -8) #3
  br i1 true, label %29, label %30

; <label>:29                                      ; preds = %24
  br label %30

; <label>:30                                      ; preds = %29, %24
  %31 = phi i16 [ 0, %24 ], [ 1, %29 ]
  %32 = sext i16 %p_34 to i32
  %33 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %31, i32 %32) #3
  %34 = load i16* @g_81, align 2
  %35 = zext i16 %34 to i32
  %36 = zext i16 %34 to i32
  %37 = call i32 @safe_add_func_uint32_t_u_u(i32 %35, i32 %36) #3
  %38 = load i32* @g_54, align 4
  %39 = xor i32 %37, %38
  %40 = trunc i32 %39 to i8
  %41 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %40, i8 signext 1) #3
  %42 = icmp ugt i8 %41, 7
  br label %43

; <label>:43                                      ; preds = %30, %16
  %44 = phi i1 [ false, %16 ], [ %42, %30 ]
  %45 = zext i1 %44 to i8
  %46 = load i32* @g_54, align 4
  %47 = trunc i32 %46 to i8
  %48 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %45, i8 zeroext %47) #3
  %49 = zext i8 %48 to i32
  store i32 %49, i32* @g_119, align 4
  %50 = icmp ugt i8 %48, 1
  %51 = zext i1 %50 to i16
  %52 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %51, i32 11) #3
  %53 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %52, i32 4) #3
  %54 = icmp ult i16 %53, 2
  %55 = zext i1 %54 to i32
  %56 = sext i16 %p_35 to i32
  %57 = icmp sge i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @safe_mod_func_uint32_t_u_u(i32 %58, i32 1613989556) #3
  %60 = icmp ne i32 %18, %59
  %61 = zext i1 %60 to i16
  %62 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %61, i32 2) #3
  %63 = load i32* @g_3, align 4
  %64 = call i32 @safe_add_func_uint32_t_u_u(i32 %63, i32 255) #3
  br label %65

; <label>:65                                      ; preds = %43, %6
  %66 = call i32 @safe_add_func_uint32_t_u_u(i32 1, i32 -4) #3
  %67 = trunc i32 %66 to i16
  %68 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %67, i16 zeroext %p_34) #3
  %69 = load i32* @g_119, align 4
  %70 = trunc i32 %69 to i8
  ret i8 %70
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

; Function Attrs: noinline nounwind
define internal zeroext i8 @func_39(i8 zeroext %p_40, i16 zeroext %p_41, i16 signext %p_42) #0 {
  %1 = load volatile i8* @g_51, align 1
  %2 = add i8 %1, -1
  store volatile i8 %2, i8* @g_51, align 1
  ret i8 99
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_add_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = add i8 %si1, %si2
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
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = add i16 %si1, %si2
  ret i16 %1
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
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = sub i16 %si1, %si2
  ret i16 %1
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
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = sub i16 0, %si
  ret i16 %1
}

; Function Attrs: noinline nounwind
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = add i32 %ui1, %ui2
  ret i32 %1
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
define internal zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = mul i8 %ui1, %ui2
  ret i8 %1
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = mul i8 %si1, %si2
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
