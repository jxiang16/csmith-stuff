; ModuleID = 'moreTest89.prelto.6.bc'
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
  %l_31 = alloca [6 x [3 x [6 x i32]]], align 4
  %1 = zext i16 5100 to i32
  store i32 %1, i32* @g_3, align 4
  store i32 0, i32* @g_3, align 4
  br label %2

; <label>:2                                       ; preds = %113, %0
  %l_4.0 = phi i32 [ %1, %0 ], [ %41, %113 ]
  %3 = load i32* @g_3, align 4
  %4 = icmp ne i32 %3, 54
  br i1 %4, label %5, label %116

; <label>:5                                       ; preds = %2
  %6 = bitcast [6 x [3 x [6 x i32]]]* %l_31 to i8*
  call void @legup_memcpy_4(i8* %6, i8* bitcast ([6 x [3 x [6 x i32]]]* @func_1.l_31 to i8*), i32 432)
  %7 = trunc i32 -1 to i16
  %8 = call zeroext i16 @func_11(i16 zeroext %7) #3
  %9 = call zeroext i16 @func_11(i16 zeroext 5100) #3
  %10 = zext i16 %9 to i32
  %11 = load i32* @g_3, align 4
  %12 = trunc i32 %11 to i16
  %13 = load i32* @g_3, align 4
  %14 = load i32* @g_3, align 4
  %15 = load i32* @g_3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %5
  %18 = icmp ne i32 -402640470, 0
  br label %19

; <label>:19                                      ; preds = %17, %5
  %20 = phi i1 [ false, %5 ], [ %18, %17 ]
  %21 = zext i1 %20 to i32
  %22 = or i32 %14, %21
  %23 = trunc i32 %22 to i16
  %24 = trunc i32 %l_4.0 to i16
  %25 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %23, i16 zeroext %24) #3
  %26 = zext i16 %25 to i32
  %27 = call i32 @safe_mod_func_uint32_t_u_u(i32 %13, i32 %26) #3
  %28 = icmp ugt i32 74, -402640470
  %29 = zext i1 %28 to i32
  %30 = trunc i32 %29 to i16
  %31 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %12, i16 zeroext %30) #3
  %32 = zext i16 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

; <label>:34                                      ; preds = %19
  br label %35

; <label>:35                                      ; preds = %34, %19
  %36 = phi i1 [ true, %19 ], [ false, %34 ]
  %37 = zext i1 %36 to i32
  %38 = xor i32 %10, %37
  %39 = trunc i32 %38 to i16
  %40 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %8, i16 zeroext %39) #3
  %41 = zext i16 %40 to i32
  %42 = load i32* @g_3, align 4
  %43 = getelementptr inbounds [6 x [3 x [6 x i32]]]* %l_31, i32 0, i32 4
  %44 = getelementptr inbounds [3 x [6 x i32]]* %43, i32 0, i32 2
  %45 = getelementptr inbounds [6 x i32]* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 4
  %46 = trunc i32 -1 to i8
  %47 = load i32* @g_3, align 4
  %48 = or i32 -1, %47
  %49 = load i32* @g_3, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i32* @g_3, align 4
  %52 = trunc i32 %41 to i8
  %53 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %52, i32 1) #3
  %54 = load i32* @g_3, align 4
  %55 = xor i32 %54, 0
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

; <label>:57                                      ; preds = %35
  br label %58

; <label>:58                                      ; preds = %57, %35
  %59 = phi i1 [ true, %35 ], [ true, %57 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @safe_div_func_int32_t_s_s(i32 %51, i32 %60) #3
  %62 = trunc i32 %61 to i8
  %63 = load i32* @g_3, align 4
  %64 = trunc i32 %63 to i8
  %65 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %62, i8 signext %64) #3
  %66 = load i32* @g_3, align 4
  %67 = icmp ne i32 %66, -1
  %68 = zext i1 %67 to i32
  %69 = load i32* @g_3, align 4
  %70 = trunc i32 %69 to i16
  %71 = load i32* @g_3, align 4
  %72 = trunc i32 %71 to i16
  %73 = call zeroext i8 @func_39(i8 zeroext %50, i16 zeroext %70, i16 signext %72) #3
  %74 = zext i8 %73 to i32
  %75 = xor i32 %74, 247
  %76 = trunc i32 %75 to i8
  %77 = load i32* @g_3, align 4
  %78 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %76, i32 %77) #3
  %79 = sext i8 %78 to i32
  %80 = and i32 %79, 54821
  %81 = trunc i32 %80 to i16
  %82 = trunc i32 -1 to i16
  %83 = call zeroext i8 @func_32(i8 signext %46, i16 signext %81, i16 signext %82, i32 %41) #3
  %84 = zext i8 %83 to i32
  %85 = load i32* @g_3, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = or i32 %42, %87
  %89 = trunc i32 %88 to i16
  %90 = load i16* @g_55, align 2
  %91 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %89, i16 zeroext %90) #3
  %92 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext 5100, i32 15) #3
  %93 = load i32* @g_3, align 4
  %94 = trunc i32 %93 to i16
  %95 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %92, i16 zeroext %94) #3
  %96 = trunc i32 -1 to i16
  %97 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %95, i16 zeroext %96) #3
  %98 = zext i16 %97 to i32
  %99 = icmp sge i32 %98, -2
  %100 = zext i1 %99 to i32
  %101 = load i32* @g_54, align 4
  %102 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext 25, i32 %101) #3
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = trunc i32 %105 to i16
  %107 = call zeroext i16 @func_11(i16 zeroext %106) #3
  %108 = zext i16 %107 to i32
  %109 = load i16* @g_123, align 2
  %110 = sext i16 %109 to i32
  %111 = and i32 %110, %108
  %112 = trunc i32 %111 to i16
  store i16 %112, i16* @g_123, align 2
  br label %113

; <label>:113                                     ; preds = %58
  %114 = load i32* @g_3, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* @g_3, align 4
  br label %2

; <label>:116                                     ; preds = %2
  %117 = load i16* @g_81, align 2
  %118 = zext i16 %117 to i32
  ret i32 %118
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #3
  %1 = icmp ne i32 %flag, 0
  br i1 %1, label %2, label %6

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str9, i32 0, i32 0), i8* %vname, i32 %4) #3
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str8, i32 0, i32 0), i32 %crc) #3
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = zext i16 %ui1 to i32
  %2 = zext i16 %ui2 to i32
  %3 = add nsw i32 %1, %2
  %4 = trunc i32 %3 to i16
  ret i16 %4
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @func_11(i16 zeroext %p_12) #0 {
  %1 = zext i16 %p_12 to i32
  ret i16 %p_12
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
  %1 = zext i16 %ui1 to i32
  %2 = zext i16 %ui2 to i32
  %3 = mul i32 %1, %2
  %4 = trunc i32 %3 to i16
  ret i16 %4
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
define internal zeroext i8 @func_32(i8 signext %p_33, i16 signext %p_34, i16 signext %p_35, i32 %p_36) #0 {
  %1 = add i32 -3, -1
  store i32 %1, i32* @g_59, align 4
  %2 = icmp eq i32 %1, -644970565
  br i1 %2, label %3, label %67

; <label>:3                                       ; preds = %0
  %4 = load i32* @g_54, align 4
  %5 = icmp ult i32 5, %4
  %6 = zext i1 %5 to i32
  %7 = icmp ule i32 %1, %6
  %8 = zext i1 %7 to i32
  %9 = load i32* @g_54, align 4
  %10 = trunc i32 %9 to i16
  %11 = load i32* @g_54, align 4
  %12 = icmp ne i32 %1, 0
  br i1 %12, label %13, label %42

; <label>:13                                      ; preds = %3
  %14 = load i32* @g_59, align 4
  %15 = icmp eq i32 %1, %14
  %16 = zext i1 %15 to i32
  %17 = trunc i32 %16 to i16
  %18 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %p_34, i16 signext %17) #3
  %19 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext -31745) #3
  %20 = sext i16 %19 to i32
  %21 = load i16* @g_81, align 2
  %22 = zext i16 %21 to i32
  %23 = or i32 %22, %20
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* @g_81, align 2
  %25 = zext i16 %24 to i32
  %26 = load i32* @g_54, align 4
  %27 = call i32 @safe_add_func_int32_t_s_s(i32 %25, i32 %26) #3
  %28 = call i32 @safe_sub_func_int32_t_s_s(i32 %27, i32 -5) #3
  %29 = and i32 %28, 0
  %30 = icmp uge i32 %29, %1
  %31 = zext i1 %30 to i32
  %32 = trunc i32 %31 to i8
  %33 = load i32* @g_3, align 4
  %34 = trunc i32 %33 to i8
  %35 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %32, i8 signext %34) #3
  %36 = sext i8 %35 to i16
  %37 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %36, i16 signext 1) #3
  %38 = trunc i16 %37 to i8
  %39 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %38, i32 1) #3
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br label %42

; <label>:42                                      ; preds = %13, %3
  %l_82.0 = phi i32 [ %28, %13 ], [ 1613989556, %3 ]
  %43 = phi i1 [ true, %3 ], [ %41, %13 ]
  %44 = zext i1 %43 to i32
  %45 = icmp sge i32 %11, %44
  %46 = zext i1 %45 to i32
  %47 = trunc i32 %46 to i16
  %48 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %47, i32 9) #3
  %49 = zext i16 %48 to i32
  %50 = sext i16 %p_34 to i32
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = trunc i32 %52 to i16
  %54 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %10, i16 signext %53) #3
  %55 = trunc i16 %54 to i8
  %56 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %55, i32 1) #3
  %57 = zext i8 %56 to i32
  %58 = icmp ule i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = icmp eq i32 %59, 76
  %61 = zext i1 %60 to i32
  %62 = xor i32 %61, -1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %42
  br label %65

; <label>:65                                      ; preds = %64, %42
  %66 = phi i1 [ false, %42 ], [ true, %64 ]
  br label %67

; <label>:67                                      ; preds = %65, %0
  %l_82.1 = phi i32 [ %l_82.0, %65 ], [ 1613989556, %0 ]
  %68 = phi i1 [ false, %0 ], [ %66, %65 ]
  %69 = zext i1 %68 to i32
  %70 = and i32 %p_36, %69
  %71 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext 106, i32 5) #3
  %72 = sext i8 %71 to i32
  %73 = load i16* @g_55, align 2
  %74 = sext i16 %73 to i32
  %75 = or i32 %70, -8
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 0, i32 7) #3
  %80 = sext i8 %79 to i32
  %81 = icmp sgt i32 %74, %80
  %82 = zext i1 %81 to i32
  %83 = icmp ne i32 %72, %82
  br i1 %83, label %161, label %84

; <label>:84                                      ; preds = %67
  %85 = load i16* @g_55, align 2
  %86 = sext i16 %85 to i32
  %87 = load i32* @g_59, align 4
  %88 = trunc i32 %87 to i16
  %89 = load i32* @g_59, align 4
  %90 = trunc i32 %89 to i16
  %91 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %88, i16 zeroext %90) #3
  %92 = zext i16 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %124

; <label>:94                                      ; preds = %84
  %95 = or i32 %75, 2
  %96 = trunc i32 %95 to i16
  %97 = sext i8 %p_33 to i16
  %98 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %96, i16 signext %97) #3
  %99 = trunc i16 %98 to i8
  %100 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %99, i32 %75) #3
  %101 = sext i8 %100 to i32
  %102 = icmp ule i32 %101, %1
  %103 = zext i1 %102 to i32
  %104 = icmp ne i32 1, %1
  br i1 %104, label %105, label %107

; <label>:105                                     ; preds = %94
  %106 = icmp ne i32 %l_82.1, 0
  br label %107

; <label>:107                                     ; preds = %105, %94
  %108 = phi i1 [ false, %94 ], [ %106, %105 ]
  %109 = zext i1 %108 to i32
  %110 = trunc i32 %109 to i16
  %111 = sext i16 %p_34 to i32
  %112 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %110, i32 %111) #3
  %113 = load i16* @g_81, align 2
  %114 = zext i16 %113 to i32
  %115 = load i16* @g_81, align 2
  %116 = zext i16 %115 to i32
  %117 = call i32 @safe_add_func_uint32_t_u_u(i32 %114, i32 %116) #3
  %118 = load i32* @g_54, align 4
  %119 = xor i32 %117, %118
  %120 = trunc i32 %119 to i8
  %121 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %120, i8 signext 1) #3
  %122 = sext i8 %121 to i32
  %123 = icmp uge i32 %122, 8
  br label %124

; <label>:124                                     ; preds = %107, %84
  %125 = phi i1 [ false, %84 ], [ %123, %107 ]
  %126 = zext i1 %125 to i32
  %127 = trunc i32 %126 to i8
  %128 = load i32* @g_54, align 4
  %129 = trunc i32 %128 to i8
  %130 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %127, i8 zeroext %129) #3
  %131 = zext i8 %130 to i32
  store i32 %131, i32* @g_119, align 4
  %132 = icmp ugt i32 %131, 1
  %133 = zext i1 %132 to i32
  %134 = trunc i32 %133 to i16
  %135 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %134, i32 11) #3
  %136 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %135, i32 4) #3
  %137 = zext i16 %136 to i32
  %138 = icmp ule i32 %137, 1
  %139 = zext i1 %138 to i32
  %140 = sext i16 %p_35 to i32
  %141 = icmp sge i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @safe_mod_func_uint32_t_u_u(i32 %142, i32 %l_82.1) #3
  %144 = icmp ne i32 %86, %143
  %145 = zext i1 %144 to i32
  %146 = trunc i32 %145 to i16
  %147 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %146, i32 2) #3
  %148 = sext i16 %147 to i32
  %149 = icmp uge i32 %148, %l_82.1
  %150 = zext i1 %149 to i32
  %151 = sext i16 %p_34 to i32
  %152 = load i32* @g_54, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i32* @g_3, align 4
  %156 = zext i8 -1 to i32
  %157 = call i32 @safe_add_func_uint32_t_u_u(i32 %155, i32 %156) #3
  %158 = load i32* @g_3, align 4
  %159 = or i32 %l_82.1, %75
  %160 = icmp ne i32 %159, 0
  br label %161

; <label>:161                                     ; preds = %124, %67
  %162 = phi i1 [ true, %67 ], [ %160, %124 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @safe_add_func_uint32_t_u_u(i32 %163, i32 %1) #3
  %165 = trunc i32 %164 to i16
  %166 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %165, i16 zeroext %p_34) #3
  %167 = zext i16 %166 to i32
  %168 = load i32* @g_119, align 4
  %169 = trunc i32 %168 to i8
  ret i8 %169
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

; Function Attrs: noinline nounwind
define internal zeroext i8 @func_39(i8 zeroext %p_40, i16 zeroext %p_41, i16 signext %p_42) #0 {
  %1 = load volatile i8* @g_51, align 1
  %2 = add i8 %1, -1
  store volatile i8 %2, i8* @g_51, align 1
  %3 = trunc i32 -1841353885 to i8
  ret i8 %3
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
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = sext i16 %si1 to i32
  %2 = sext i16 %si2 to i32
  %3 = add nsw i32 %1, %2
  %4 = trunc i32 %3 to i16
  ret i16 %4
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
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = sext i16 %si1 to i32
  %2 = sext i16 %si2 to i32
  %3 = sub nsw i32 %1, %2
  %4 = trunc i32 %3 to i16
  ret i16 %4
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
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = sext i16 %si to i32
  %2 = sub nsw i32 0, %1
  %3 = trunc i32 %2 to i16
  ret i16 %3
}

; Function Attrs: noinline nounwind
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = add i32 %ui1, %ui2
  ret i32 %1
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
define internal zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = zext i8 %ui1 to i32
  %2 = zext i8 %ui2 to i32
  %3 = mul i32 %1, %2
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

declare void @legup_memcpy_4(i8*, i8*, i32)

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
