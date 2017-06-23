; ModuleID = 'moreTest89.prelto.1.bc'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %print_hash_value = alloca i32, align 4
  %checksum = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 4
  store i32 0, i32* %print_hash_value, align 4
  call void @platform_main_begin() #3
  call void @crc32_gentab() #3
  %4 = call i32 @func_1() #3
  %5 = load i32* @g_3, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %6, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %7) #3
  %8 = load volatile i8* @g_51, align 1
  %9 = zext i8 %8 to i64
  %10 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %9, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 %10) #3
  %11 = load i32* @g_54, align 4
  %12 = sext i32 %11 to i64
  %13 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %12, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 %13) #3
  %14 = load i16* @g_55, align 2
  %15 = sext i16 %14 to i64
  %16 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %15, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 %16) #3
  %17 = load i32* @g_59, align 4
  %18 = sext i32 %17 to i64
  %19 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %18, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 %19) #3
  %20 = load i16* @g_81, align 2
  %21 = zext i16 %20 to i64
  %22 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %21, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 %22) #3
  %23 = load i32* @g_119, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %24, i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), i32 %25) #3
  %26 = load i16* @g_123, align 2
  %27 = sext i16 %26 to i64
  %28 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %27, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i32 %28) #3
  %29 = load i32* @crc32_context, align 4
  %30 = xor i32 %29, -1
  %31 = load i32* %print_hash_value, align 4
  %32 = call i32 @platform_main_end(i32 %30, i32 %31) #3
  store i32 %32, i32* %checksum, align 4
  %33 = load i32* %checksum, align 4
  ret i32 %33
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
  %l_2 = alloca i16, align 2
  %l_4 = alloca i32, align 4
  %l_8 = alloca i32, align 4
  %l_20 = alloca i32, align 4
  %l_31 = alloca [6 x [3 x [6 x i32]]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i16 5100, i16* %l_2, align 2
  store i32 -212870642, i32* %l_4, align 4
  %1 = load i16* %l_2, align 2
  %2 = zext i16 %1 to i32
  store i32 %2, i32* @g_3, align 4
  store i32 %2, i32* %l_4, align 4
  store i32 0, i32* @g_3, align 4
  br label %3

; <label>:3                                       ; preds = %128, %0
  %4 = load i32* @g_3, align 4
  %5 = icmp ne i32 %4, 54
  br i1 %5, label %6, label %131

; <label>:6                                       ; preds = %3
  store i32 -1, i32* %l_8, align 4
  store i32 -402640470, i32* %l_20, align 4
  %7 = bitcast [6 x [3 x [6 x i32]]]* %l_31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* bitcast ([6 x [3 x [6 x i32]]]* @func_1.l_31 to i8*), i32 432, i32 4, i1 false)
  %8 = load i32* %l_8, align 4
  %9 = load i32* %l_8, align 4
  %10 = trunc i32 %9 to i16
  %11 = call zeroext i16 @func_11(i16 zeroext %10) #3
  %12 = load i16* %l_2, align 2
  %13 = call zeroext i16 @func_11(i16 zeroext %12) #3
  %14 = zext i16 %13 to i32
  %15 = load i32* @g_3, align 4
  %16 = trunc i32 %15 to i16
  %17 = load i32* @g_3, align 4
  %18 = load i32* @g_3, align 4
  %19 = load i32* @g_3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %6
  %22 = load i32* %l_20, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

; <label>:24                                      ; preds = %21, %6
  %25 = phi i1 [ false, %6 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = or i32 %18, %26
  %28 = trunc i32 %27 to i16
  %29 = load i32* %l_4, align 4
  %30 = trunc i32 %29 to i16
  %31 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %28, i16 zeroext %30) #3
  %32 = zext i16 %31 to i32
  %33 = call i32 @safe_mod_func_uint32_t_u_u(i32 %17, i32 %32) #3
  %34 = load i32* %l_20, align 4
  %35 = icmp ugt i32 74, %34
  %36 = zext i1 %35 to i32
  %37 = trunc i32 %36 to i16
  %38 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %16, i16 zeroext %37) #3
  %39 = zext i16 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

; <label>:41                                      ; preds = %24
  br label %42

; <label>:42                                      ; preds = %41, %24
  %43 = phi i1 [ true, %24 ], [ false, %41 ]
  %44 = zext i1 %43 to i32
  %45 = xor i32 %14, %44
  %46 = trunc i32 %45 to i16
  %47 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %11, i16 zeroext %46) #3
  %48 = zext i16 %47 to i32
  store i32 %48, i32* %l_4, align 4
  %49 = load i32* @g_3, align 4
  %50 = getelementptr inbounds [6 x [3 x [6 x i32]]]* %l_31, i32 0, i32 4
  %51 = getelementptr inbounds [3 x [6 x i32]]* %50, i32 0, i32 2
  %52 = getelementptr inbounds [6 x i32]* %51, i32 0, i32 5
  store i32 %49, i32* %52, align 4
  %53 = load i32* %l_8, align 4
  %54 = trunc i32 %53 to i8
  %55 = load i32* %l_4, align 4
  %56 = load i32* %l_8, align 4
  %57 = load i32* @g_3, align 4
  %58 = or i32 %56, %57
  %59 = load i32* @g_3, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i32* @g_3, align 4
  %62 = load i32* %l_4, align 4
  %63 = trunc i32 %62 to i8
  %64 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %63, i32 1) #3
  %65 = load i32* @g_3, align 4
  %66 = xor i32 %65, 0
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

; <label>:68                                      ; preds = %42
  br label %69

; <label>:69                                      ; preds = %68, %42
  %70 = phi i1 [ true, %42 ], [ true, %68 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @safe_div_func_int32_t_s_s(i32 %61, i32 %71) #3
  %73 = trunc i32 %72 to i8
  %74 = load i32* @g_3, align 4
  %75 = trunc i32 %74 to i8
  %76 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %73, i8 signext %75) #3
  %77 = load i32* @g_3, align 4
  %78 = icmp ne i32 %77, -1
  %79 = zext i1 %78 to i32
  %80 = load i32* @g_3, align 4
  %81 = trunc i32 %80 to i16
  %82 = load i32* @g_3, align 4
  %83 = trunc i32 %82 to i16
  %84 = call zeroext i8 @func_39(i8 zeroext %60, i16 zeroext %81, i16 signext %83) #3
  %85 = zext i8 %84 to i32
  %86 = xor i32 %85, 247
  %87 = trunc i32 %86 to i8
  %88 = load i32* @g_3, align 4
  %89 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %87, i32 %88) #3
  %90 = sext i8 %89 to i32
  %91 = and i32 %90, 54821
  %92 = trunc i32 %91 to i16
  %93 = load i32* %l_8, align 4
  %94 = trunc i32 %93 to i16
  %95 = load i32* %l_4, align 4
  %96 = call zeroext i8 @func_32(i8 signext %54, i16 signext %92, i16 signext %94, i32 %95) #3
  %97 = zext i8 %96 to i32
  %98 = load i32* @g_3, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = or i32 %49, %100
  %102 = trunc i32 %101 to i16
  %103 = load i16* @g_55, align 2
  %104 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %102, i16 zeroext %103) #3
  %105 = load i16* %l_2, align 2
  %106 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %105, i32 15) #3
  %107 = load i32* @g_3, align 4
  %108 = trunc i32 %107 to i16
  %109 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %106, i16 zeroext %108) #3
  %110 = load i32* %l_8, align 4
  %111 = trunc i32 %110 to i16
  %112 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %109, i16 zeroext %111) #3
  %113 = zext i16 %112 to i32
  %114 = icmp sge i32 %113, -2
  %115 = zext i1 %114 to i32
  %116 = load i32* @g_54, align 4
  %117 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext 25, i32 %116) #3
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = trunc i32 %120 to i16
  %122 = call zeroext i16 @func_11(i16 zeroext %121) #3
  %123 = zext i16 %122 to i32
  %124 = load i16* @g_123, align 2
  %125 = sext i16 %124 to i32
  %126 = and i32 %125, %123
  %127 = trunc i32 %126 to i16
  store i16 %127, i16* @g_123, align 2
  br label %128

; <label>:128                                     ; preds = %69
  %129 = load i32* @g_3, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* @g_3, align 4
  br label %3

; <label>:131                                     ; preds = %3
  %132 = load i16* @g_81, align 2
  %133 = zext i16 %132 to i32
  ret i32 %133
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
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str9, i32 0, i32 0), i8* %8, i32 %10) #3
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %crc, i32* %1, align 4
  store i32 %flag, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str8, i32 0, i32 0), i32 %3) #3
  %5 = load i32* %1, align 4
  ret i32 %5
}

declare i32 @printf(i8*, ...) #1

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
define internal zeroext i16 @func_11(i16 zeroext %p_12) #0 {
  %1 = alloca i16, align 2
  %l_13 = alloca i32, align 4
  store i16 %p_12, i16* %1, align 2
  store i32 -649635462, i32* %l_13, align 4
  %2 = load i16* %1, align 2
  %3 = zext i16 %2 to i32
  store i32 %3, i32* %l_13, align 4
  %4 = load i16* %1, align 2
  ret i16 %4
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2
  store i16 %ui2, i16* %2, align 2
  %3 = load i16* %1, align 2
  %4 = zext i16 %3 to i32
  %5 = load i16* %2, align 2
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: noinline nounwind
define internal i32 @safe_mod_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
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
  %10 = urem i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2
  store i16 %ui2, i16* %2, align 2
  %3 = load i16* %1, align 2
  %4 = zext i16 %3 to i32
  %5 = load i16* %2, align 2
  %6 = zext i16 %5 to i32
  %7 = mul i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i8* %1, align 1
  %10 = zext i8 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i8* %1, align 1
  %13 = zext i8 %12 to i32
  %14 = load i32* %2, align 4
  %15 = ashr i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2
  store i16 %ui2, i16* %2, align 2
  %3 = load i16* %2, align 2
  %4 = zext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i16* %1, align 2
  %8 = zext i16 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i16* %1, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16* %2, align 2
  %13 = zext i16 %12 to i32
  %14 = sdiv i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
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
define internal zeroext i8 @func_32(i8 signext %p_33, i16 signext %p_34, i16 signext %p_35, i32 %p_36) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %l_56 = alloca i32, align 4
  %l_82 = alloca i32, align 4
  %l_83 = alloca i32, align 4
  %l_120 = alloca i32, align 4
  %l_121 = alloca i8, align 1
  %l_122 = alloca i32, align 4
  store i8 %p_33, i8* %1, align 1
  store i16 %p_34, i16* %2, align 2
  store i16 %p_35, i16* %3, align 2
  store i32 %p_36, i32* %4, align 4
  store i32 -3, i32* %l_56, align 4
  store i32 1613989556, i32* %l_82, align 4
  store i32 1, i32* %l_83, align 4
  store i32 382641891, i32* %l_120, align 4
  store i8 -1, i8* %l_121, align 1
  store i32 5, i32* %l_122, align 4
  %5 = load i32* %l_56, align 4
  %6 = add i32 %5, -1
  store i32 %6, i32* %l_56, align 4
  store i32 %6, i32* @g_59, align 4
  %7 = icmp eq i32 %6, -644970565
  br i1 %7, label %8, label %79

; <label>:8                                       ; preds = %0
  %9 = load i32* %l_56, align 4
  %10 = load i32* @g_54, align 4
  %11 = icmp ult i32 5, %10
  %12 = zext i1 %11 to i32
  %13 = icmp ule i32 %9, %12
  %14 = zext i1 %13 to i32
  %15 = load i32* @g_54, align 4
  %16 = trunc i32 %15 to i16
  %17 = load i32* @g_54, align 4
  %18 = load i32* %l_56, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %53

; <label>:20                                      ; preds = %8
  %21 = load i16* %2, align 2
  %22 = load i32* %l_56, align 4
  %23 = load i32* @g_59, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = trunc i32 %25 to i16
  %27 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %21, i16 signext %26) #3
  %28 = load i8* %1, align 1
  %29 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext -31745) #3
  %30 = sext i16 %29 to i32
  %31 = load i16* @g_81, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %32, %30
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* @g_81, align 2
  %35 = zext i16 %34 to i32
  %36 = load i32* @g_54, align 4
  %37 = call i32 @safe_add_func_int32_t_s_s(i32 %35, i32 %36) #3
  %38 = call i32 @safe_sub_func_int32_t_s_s(i32 %37, i32 -5) #3
  store i32 %38, i32* %l_82, align 4
  %39 = and i32 %38, 0
  %40 = load i32* %l_56, align 4
  %41 = icmp uge i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = trunc i32 %42 to i8
  %44 = load i32* @g_3, align 4
  %45 = trunc i32 %44 to i8
  %46 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %43, i8 signext %45) #3
  %47 = sext i8 %46 to i16
  %48 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %47, i16 signext 1) #3
  %49 = trunc i16 %48 to i8
  %50 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %49, i32 1) #3
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br label %53

; <label>:53                                      ; preds = %20, %8
  %54 = phi i1 [ true, %8 ], [ %52, %20 ]
  %55 = zext i1 %54 to i32
  %56 = icmp sge i32 %17, %55
  %57 = zext i1 %56 to i32
  %58 = trunc i32 %57 to i16
  %59 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %58, i32 9) #3
  %60 = zext i16 %59 to i32
  %61 = load i16* %2, align 2
  %62 = sext i16 %61 to i32
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i32
  %65 = trunc i32 %64 to i16
  %66 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %16, i16 signext %65) #3
  %67 = trunc i16 %66 to i8
  %68 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %67, i32 1) #3
  %69 = zext i8 %68 to i32
  %70 = icmp ule i32 %69, 1
  %71 = zext i1 %70 to i32
  %72 = icmp eq i32 %71, 76
  %73 = zext i1 %72 to i32
  %74 = xor i32 %73, -1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %53
  br label %77

; <label>:77                                      ; preds = %76, %53
  %78 = phi i1 [ false, %53 ], [ true, %76 ]
  br label %79

; <label>:79                                      ; preds = %77, %0
  %80 = phi i1 [ false, %0 ], [ %78, %77 ]
  %81 = zext i1 %80 to i32
  %82 = load i32* %4, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext 106, i32 5) #3
  %85 = sext i8 %84 to i32
  %86 = load i16* @g_55, align 2
  %87 = sext i16 %86 to i32
  %88 = load i32* %4, align 4
  %89 = or i32 %88, -8
  store i32 %89, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 0, i32 7) #3
  %94 = sext i8 %93 to i32
  %95 = icmp sgt i32 %87, %94
  %96 = zext i1 %95 to i32
  %97 = icmp ne i32 %85, %96
  br i1 %97, label %191, label %98

; <label>:98                                      ; preds = %79
  %99 = load i16* @g_55, align 2
  %100 = sext i16 %99 to i32
  %101 = load i32* @g_59, align 4
  %102 = trunc i32 %101 to i16
  %103 = load i32* @g_59, align 4
  %104 = trunc i32 %103 to i16
  %105 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %102, i16 zeroext %104) #3
  %106 = zext i16 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %146

; <label>:108                                     ; preds = %98
  %109 = load i32* %4, align 4
  %110 = or i32 %109, 2
  %111 = trunc i32 %110 to i16
  %112 = load i8* %1, align 1
  %113 = sext i8 %112 to i16
  %114 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %111, i16 signext %113) #3
  %115 = trunc i16 %114 to i8
  %116 = load i32* %4, align 4
  %117 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %115, i32 %116) #3
  %118 = sext i8 %117 to i32
  %119 = load i32* %l_56, align 4
  %120 = icmp ule i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32* %l_56, align 4
  %123 = icmp ne i32 1, %122
  br i1 %123, label %124, label %127

; <label>:124                                     ; preds = %108
  %125 = load i32* %l_82, align 4
  %126 = icmp ne i32 %125, 0
  br label %127

; <label>:127                                     ; preds = %124, %108
  %128 = phi i1 [ false, %108 ], [ %126, %124 ]
  %129 = zext i1 %128 to i32
  %130 = trunc i32 %129 to i16
  %131 = load i16* %2, align 2
  %132 = sext i16 %131 to i32
  %133 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %130, i32 %132) #3
  %134 = load i32* %4, align 4
  %135 = load i16* @g_81, align 2
  %136 = zext i16 %135 to i32
  %137 = load i16* @g_81, align 2
  %138 = zext i16 %137 to i32
  %139 = call i32 @safe_add_func_uint32_t_u_u(i32 %136, i32 %138) #3
  %140 = load i32* @g_54, align 4
  %141 = xor i32 %139, %140
  %142 = trunc i32 %141 to i8
  %143 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %142, i8 signext 1) #3
  %144 = sext i8 %143 to i32
  %145 = icmp uge i32 %144, 8
  br label %146

; <label>:146                                     ; preds = %127, %98
  %147 = phi i1 [ false, %98 ], [ %145, %127 ]
  %148 = zext i1 %147 to i32
  %149 = trunc i32 %148 to i8
  %150 = load i32* @g_54, align 4
  %151 = trunc i32 %150 to i8
  %152 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %149, i8 zeroext %151) #3
  %153 = zext i8 %152 to i32
  store i32 %153, i32* @g_119, align 4
  %154 = icmp ugt i32 %153, 1
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %l_120, align 4
  %156 = trunc i32 %155 to i16
  %157 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %156, i32 11) #3
  %158 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %157, i32 4) #3
  %159 = zext i16 %158 to i32
  %160 = icmp ule i32 %159, 1
  %161 = zext i1 %160 to i32
  %162 = load i16* %3, align 2
  %163 = sext i16 %162 to i32
  %164 = icmp sge i32 %161, %163
  %165 = zext i1 %164 to i32
  %166 = load i32* %l_82, align 4
  %167 = call i32 @safe_mod_func_uint32_t_u_u(i32 %165, i32 %166) #3
  %168 = icmp ne i32 %100, %167
  %169 = zext i1 %168 to i32
  %170 = trunc i32 %169 to i16
  %171 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %170, i32 2) #3
  %172 = sext i16 %171 to i32
  %173 = load i32* %l_82, align 4
  %174 = icmp uge i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i16* %2, align 2
  %177 = sext i16 %176 to i32
  %178 = load i32* @g_54, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = load i32* %l_82, align 4
  %182 = load i32* @g_3, align 4
  %183 = load i8* %l_121, align 1
  %184 = zext i8 %183 to i32
  %185 = call i32 @safe_add_func_uint32_t_u_u(i32 %182, i32 %184) #3
  %186 = load i32* @g_3, align 4
  %187 = load i32* %l_82, align 4
  %188 = load i32* %4, align 4
  %189 = or i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br label %191

; <label>:191                                     ; preds = %146, %79
  %192 = phi i1 [ true, %79 ], [ %190, %146 ]
  %193 = zext i1 %192 to i32
  %194 = load i32* %l_56, align 4
  %195 = call i32 @safe_add_func_uint32_t_u_u(i32 %193, i32 %194) #3
  %196 = trunc i32 %195 to i16
  %197 = load i16* %2, align 2
  %198 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %196, i16 zeroext %197) #3
  %199 = zext i16 %198 to i32
  store i32 %199, i32* %l_122, align 4
  %200 = load i32* @g_119, align 4
  %201 = trunc i32 %200 to i8
  ret i8 %201
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i8* %1, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i8* %1, align 1
  %11 = sext i8 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i8* %1, align 1
  %14 = sext i8 %13 to i32
  %15 = load i32* %2, align 4
  %16 = ashr i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %12, %9
  %18 = phi i32 [ %11, %9 ], [ %16, %12 ]
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @func_39(i8 zeroext %p_40, i16 zeroext %p_41, i16 signext %p_42) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %l_49 = alloca i16, align 2
  %l_50 = alloca i32, align 4
  store i8 %p_40, i8* %1, align 1
  store i16 %p_41, i16* %2, align 2
  store i16 %p_42, i16* %3, align 2
  store i16 1, i16* %l_49, align 2
  store i32 -1841353885, i32* %l_50, align 4
  %4 = load i16* %3, align 2
  store i16 %4, i16* %l_49, align 2
  %5 = load volatile i8* @g_51, align 1
  %6 = add i8 %5, -1
  store volatile i8 %6, i8* @g_51, align 1
  %7 = load i32* %l_50, align 4
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
define internal i32 @safe_div_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4
  store i32 %si2, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32* %1, align 4
  %7 = icmp eq i32 %6, -2147483648
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32* %2, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i32* %1, align 4
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i32* %1, align 4
  %15 = load i32* %2, align 4
  %16 = sdiv i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  ret i32 %18
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
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2
  store i16 %si2, i16* %2, align 2
  %3 = load i16* %1, align 2
  %4 = sext i16 %3 to i32
  %5 = load i16* %2, align 2
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
define internal zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i8* %1, align 1
  %7 = zext i8 %6 to i32
  %8 = load i32* %2, align 4
  %9 = ashr i32 255, %8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %5, %0
  %12 = load i8* %1, align 1
  %13 = zext i8 %12 to i32
  br label %19

; <label>:14                                      ; preds = %5
  %15 = load i8* %1, align 1
  %16 = zext i8 %15 to i32
  %17 = load i32* %2, align 4
  %18 = shl i32 %16, %17
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ]
  %21 = trunc i32 %20 to i8
  ret i8 %21
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2
  store i16 %si2, i16* %2, align 2
  %3 = load i16* %1, align 2
  %4 = sext i16 %3 to i32
  %5 = load i16* %2, align 2
  %6 = sext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_div_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1
  store i8 %si2, i8* %2, align 1
  %3 = load i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8* %1, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, -128
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i8* %1, align 1
  %16 = sext i8 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i8* %1, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8* %2, align 1
  %21 = sext i8 %20 to i32
  %22 = sdiv i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

; Function Attrs: noinline nounwind
define internal i32 @safe_sub_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4
  store i32 %si2, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %2, align 4
  %5 = xor i32 %3, %4
  %6 = load i32* %1, align 4
  %7 = load i32* %1, align 4
  %8 = load i32* %2, align 4
  %9 = xor i32 %7, %8
  %10 = and i32 %9, -2147483648
  %11 = xor i32 %6, %10
  %12 = load i32* %2, align 4
  %13 = sub nsw i32 %11, %12
  %14 = load i32* %2, align 4
  %15 = xor i32 %13, %14
  %16 = and i32 %5, %15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %0
  %19 = load i32* %1, align 4
  br label %24

; <label>:20                                      ; preds = %0
  %21 = load i32* %1, align 4
  %22 = load i32* %2, align 4
  %23 = sub nsw i32 %21, %22
  br label %24

; <label>:24                                      ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  ret i32 %25
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

; Function Attrs: noinline nounwind
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = alloca i16, align 2
  store i16 %si, i16* %1, align 2
  %2 = load i16* %1, align 2
  %3 = sext i16 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i16
  ret i16 %5
}

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
define internal signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i8* %1, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32* %2, align 4
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %9
  %13 = load i8* %1, align 1
  %14 = sext i8 %13 to i32
  %15 = load i32* %2, align 4
  %16 = ashr i32 127, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %12, %9, %6, %0
  %19 = load i8* %1, align 1
  %20 = sext i8 %19 to i32
  br label %26

; <label>:21                                      ; preds = %12
  %22 = load i8* %1, align 1
  %23 = sext i8 %22 to i32
  %24 = load i32* %2, align 4
  %25 = shl i32 %23, %24
  br label %26

; <label>:26                                      ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i8
  ret i8 %28
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1
  store i32 %right, i32* %2, align 4
  %3 = load i8* %1, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %6
  %10 = load i8* %1, align 1
  %11 = sext i8 %10 to i32
  %12 = load i32* %2, align 4
  %13 = ashr i32 127, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %9, %6, %0
  %16 = load i8* %1, align 1
  %17 = sext i8 %16 to i32
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load i8* %1, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32* %2, align 4
  %22 = shl i32 %20, %21
  br label %23

; <label>:23                                      ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

; Function Attrs: noinline nounwind
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2
  store i32 %right, i32* %2, align 4
  %3 = load i16* %1, align 2
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32* %2, align 4
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %9, %6, %0
  %13 = load i16* %1, align 2
  %14 = sext i16 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i16* %1, align 2
  %17 = sext i16 %16 to i32
  %18 = load i32* %2, align 4
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i16
  ret i16 %22
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2
  store i32 %right, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i16* %1, align 2
  %7 = zext i16 %6 to i32
  %8 = load i32* %2, align 4
  %9 = ashr i32 65535, %8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %5, %0
  %12 = load i16* %1, align 2
  %13 = zext i16 %12 to i32
  br label %19

; <label>:14                                      ; preds = %5
  %15 = load i16* %1, align 2
  %16 = zext i16 %15 to i32
  %17 = load i32* %2, align 4
  %18 = shl i32 %16, %17
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ]
  %21 = trunc i32 %20 to i16
  ret i16 %21
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
define internal signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2
  store i32 %right, i32* %2, align 4
  %3 = load i16* %1, align 2
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32* %2, align 4
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %9
  %13 = load i16* %1, align 2
  %14 = sext i16 %13 to i32
  %15 = load i32* %2, align 4
  %16 = ashr i32 32767, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %12, %9, %6, %0
  %19 = load i16* %1, align 2
  %20 = sext i16 %19 to i32
  br label %26

; <label>:21                                      ; preds = %12
  %22 = load i16* %1, align 2
  %23 = sext i16 %22 to i32
  %24 = load i32* %2, align 4
  %25 = shl i32 %23, %24
  br label %26

; <label>:26                                      ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i16
  ret i16 %28
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

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
