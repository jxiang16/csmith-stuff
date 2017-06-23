; ModuleID = 'testOutput0.prelto.bc'
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
  call void @platform_main_begin() #3
  call void @crc32_gentab() #3
  %1 = call i32 @func_1() #3
  %2 = load volatile i32* @g_2, align 4
  %3 = sext i32 %2 to i64
  call void @transparent_crc(i64 %3, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 0) #3
  %4 = load i32* @g_3, align 4
  %5 = sext i32 %4 to i64
  call void @transparent_crc(i64 %5, i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 0) #3
  %6 = load i32* @g_6, align 4
  %7 = sext i32 %6 to i64
  call void @transparent_crc(i64 %7, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i32 0) #3
  %8 = load i32* @g_21, align 4
  %9 = zext i32 %8 to i64
  call void @transparent_crc(i64 %9, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 0) #3
  br label %10

; <label>:10                                      ; preds = %20, %0
  %i.0 = phi i32 [ 0, %0 ], [ %21, %20 ]
  %11 = icmp slt i32 %i.0, 3
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds [3 x i32]* @g_25, i32 0, i32 %i.0
  %14 = load i32* %13, align 4
  %15 = sext i32 %14 to i64
  call void @transparent_crc(i64 %15, i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0), i32 0) #3
  %16 = icmp ne i32 0, 0
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %12
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str5, i32 0, i32 0), i32 %i.0) #3
  br label %19

; <label>:19                                      ; preds = %17, %12
  br label %20

; <label>:20                                      ; preds = %19
  %21 = add nsw i32 %i.0, 1
  br label %10

; <label>:22                                      ; preds = %10
  %23 = load i32* @crc32_context, align 4
  %24 = xor i32 %23, -1
  %25 = call i32 @platform_main_end(i32 %24, i32 0) #3
  ret i32 %25
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
  %l_12 = alloca [3 x i16], align 2
  %l_26 = alloca [1 x [9 x i32]], align 4
  br label %1

; <label>:1                                       ; preds = %5, %0
  %i.0 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %2 = icmp slt i32 %i.0, 3
  br i1 %2, label %3, label %7

; <label>:3                                       ; preds = %1
  %4 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 %i.0
  store i16 9015, i16* %4, align 2
  br label %5

; <label>:5                                       ; preds = %3
  %6 = add nsw i32 %i.0, 1
  br label %1

; <label>:7                                       ; preds = %1
  store i32 24, i32* @g_3, align 4
  br label %8

; <label>:8                                       ; preds = %41, %7
  %l_30.0 = phi i16 [ 0, %7 ], [ %l_30.1, %41 ]
  %9 = load i32* @g_3, align 4
  %10 = icmp ne i32 %9, -16
  br i1 %10, label %11, label %44

; <label>:11                                      ; preds = %8
  store i32 0, i32* @g_6, align 4
  br label %12

; <label>:12                                      ; preds = %37, %11
  %l_30.1 = phi i16 [ %l_30.0, %11 ], [ %34, %37 ]
  %13 = load i32* @g_6, align 4
  %14 = icmp sle i32 %13, 28
  br i1 %14, label %15, label %40

; <label>:15                                      ; preds = %12
  %16 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 0
  %17 = load i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = or i32 -327555470, %18
  %20 = zext i16 1 to i32
  %21 = trunc i16 1 to i8
  %22 = load volatile i32* @g_2, align 4
  store i32 -50606592, i32* @g_21, align 4
  %23 = call i32 @func_17(i8 signext %21, i32 %22, i32 -50606592) #3
  %24 = call i32 @func_13(i32 %20, i32 %23) #3
  %25 = load i32* @g_3, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = and i32 %19, %27
  %29 = trunc i32 %28 to i8
  %30 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %29, i8 zeroext 40) #3
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %35

; <label>:32                                      ; preds = %15
  %33 = bitcast [1 x [9 x i32]]* %l_26 to i8*
  call void @legup_memcpy_4(i8* %33, i8* bitcast ([1 x [9 x i32]]* @func_1.l_26 to i8*), i32 36)
  %34 = add i16 %l_30.1, -1
  br label %36

; <label>:35                                      ; preds = %15
  br label %105

; <label>:36                                      ; preds = %32
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load i32* @g_6, align 4
  %39 = call i32 @safe_add_func_uint32_t_u_u(i32 %38, i32 4) #3
  store i32 %39, i32* @g_6, align 4
  br label %12

; <label>:40                                      ; preds = %12
  br label %41

; <label>:41                                      ; preds = %40
  %42 = load i32* @g_3, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* @g_3, align 4
  br label %8

; <label>:44                                      ; preds = %8
  %45 = load i32* @g_6, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i32* @g_21, align 4
  %48 = call i32 @func_13(i32 %47, i32 -1368172156) #3
  %49 = trunc i32 %48 to i8
  %50 = zext i8 -7 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %78

; <label>:52                                      ; preds = %44
  %53 = load i32* @g_6, align 4
  %54 = load i32* @g_6, align 4
  %55 = trunc i32 %54 to i8
  %56 = zext i16 %l_30.0 to i32
  %57 = load i32* @g_21, align 4
  %58 = call i32 @func_17(i8 signext %55, i32 %56, i32 %57) #3
  %59 = trunc i32 %58 to i8
  %60 = load i32* @g_6, align 4
  %61 = trunc i32 %60 to i8
  %62 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %59, i8 zeroext %61) #3
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 0
  %65 = load i16* %64, align 2
  %66 = sext i16 %65 to i32
  %67 = icmp sge i32 %63, %66
  %68 = zext i1 %67 to i32
  %69 = load volatile i32* @g_2, align 4
  %70 = icmp sgt i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @func_13(i32 %53, i32 %71) #3
  %73 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 0
  %74 = load i16* %73, align 2
  %75 = sext i16 %74 to i32
  %76 = and i32 65535, %75
  %77 = icmp ne i32 %76, 0
  br label %78

; <label>:78                                      ; preds = %52, %44
  %79 = phi i1 [ false, %44 ], [ %77, %52 ]
  %80 = zext i1 %79 to i32
  %81 = load i32* getelementptr inbounds ([3 x i32]* @g_25, i32 0, i32 2), align 4
  %82 = trunc i32 %81 to i8
  %83 = load i32* getelementptr inbounds ([3 x i32]* @g_25, i32 0, i32 2), align 4
  %84 = load i32* getelementptr inbounds ([3 x i32]* @g_25, i32 0, i32 2), align 4
  %85 = call i32 @func_17(i8 signext %82, i32 %83, i32 %84) #3
  %86 = load i32* getelementptr inbounds ([3 x i32]* @g_25, i32 0, i32 2), align 4
  %87 = call i32 @func_13(i32 %85, i32 %86) #3
  %88 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %49, i32 %87) #3
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

; <label>:91                                      ; preds = %78
  %92 = zext i16 %l_30.0 to i32
  %93 = icmp ne i32 %92, 0
  br label %94

; <label>:94                                      ; preds = %91, %78
  %95 = phi i1 [ true, %78 ], [ %93, %91 ]
  %96 = zext i1 %95 to i32
  %97 = zext i8 77 to i32
  %98 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 2
  %99 = load i16* %98, align 2
  %100 = sext i16 %99 to i32
  %101 = call i32 @func_17(i8 signext %46, i32 %97, i32 %100) #3
  %102 = or i32 395942169, %101
  %103 = zext i16 %l_30.0 to i32
  %104 = or i32 %102, %103
  br label %105

; <label>:105                                     ; preds = %94, %35
  %.0 = phi i32 [ -1, %35 ], [ %104, %94 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #3
  %1 = icmp ne i32 %flag, 0
  br i1 %1, label %2, label %6

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str7, i32 0, i32 0), i8* %vname, i32 %4) #3
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str6, i32 0, i32 0), i32 %crc) #3
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
define internal i32 @func_13(i32 %p_14, i32 %p_15) #0 {
  %1 = load i32* @g_6, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind
define internal i32 @func_17(i8 signext %p_18, i32 %p_19, i32 %p_20) #0 {
  ret i32 %p_19
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: noinline nounwind
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = add i32 %ui1, %ui2
  ret i32 %1
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
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = zext i8 %ui1 to i32
  %2 = zext i8 %ui2 to i32
  %3 = add nsw i32 %1, %2
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

declare void @legup_memcpy_4(i8*, i8*, i32)

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
