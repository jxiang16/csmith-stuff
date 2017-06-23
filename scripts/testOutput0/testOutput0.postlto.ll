; ModuleID = 'testOutput0.postlto.bc'
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

; <label>:10                                      ; preds = %18, %0
  %i.0 = phi i32 [ 0, %0 ], [ %19, %18 ]
  %11 = icmp slt i32 %i.0, 3
  br i1 %11, label %12, label %20

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds [3 x i32]* @g_25, i32 0, i32 %i.0
  %14 = load i32* %13, align 4
  %15 = sext i32 %14 to i64
  call void @transparent_crc(i64 %15, i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0), i32 0) #3
  br i1 false, label %16, label %17

; <label>:16                                      ; preds = %12
  br label %17

; <label>:17                                      ; preds = %16, %12
  br label %18

; <label>:18                                      ; preds = %17
  %19 = add nsw i32 %i.0, 1
  br label %10

; <label>:20                                      ; preds = %10
  %21 = load i32* @crc32_context, align 4
  %22 = xor i32 %21, -1
  %23 = call i32 @platform_main_end(i32 %22, i32 0) #3
  ret i32 %23
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
  br label %8

; <label>:8                                       ; preds = %35, %7
  %storemerge = phi i32 [ 24, %7 ], [ %37, %35 ]
  %l_30.0 = phi i16 [ 0, %7 ], [ %l_30.1, %35 ]
  store i32 %storemerge, i32* @g_3, align 4
  %9 = icmp eq i32 %storemerge, -16
  br i1 %9, label %38, label %10

; <label>:10                                      ; preds = %8
  br label %11

; <label>:11                                      ; preds = %31, %10
  %storemerge1 = phi i32 [ 0, %10 ], [ %33, %31 ]
  %l_30.1 = phi i16 [ %l_30.0, %10 ], [ %28, %31 ]
  store i32 %storemerge1, i32* @g_6, align 4
  %12 = icmp slt i32 %storemerge1, 29
  br i1 %12, label %13, label %34

; <label>:13                                      ; preds = %11
  %14 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 0
  %15 = load i16* %14, align 2
  %16 = trunc i16 %15 to i8
  %17 = load volatile i32* @g_2, align 4
  store i32 -50606592, i32* @g_21, align 4
  %18 = call i32 @func_17(i8 signext 1, i32 %17, i32 -50606592) #3
  %19 = call i32 @func_13(i32 1, i32 %18) #3
  %20 = load i32* @g_3, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i8
  %23 = and i8 %16, %22
  %24 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %23, i8 zeroext 40) #3
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

; <label>:26                                      ; preds = %13
  %27 = bitcast [1 x [9 x i32]]* %l_26 to i8*
  call void @legup_memcpy_4(i8* %27, i8* bitcast ([1 x [9 x i32]]* @func_1.l_26 to i8*), i32 36)
  %28 = add i16 %l_30.1, -1
  br label %30

; <label>:29                                      ; preds = %13
  br label %81

; <label>:30                                      ; preds = %26
  br label %31

; <label>:31                                      ; preds = %30
  %32 = load i32* @g_6, align 4
  %33 = call i32 @safe_add_func_uint32_t_u_u(i32 %32, i32 4) #3
  br label %11

; <label>:34                                      ; preds = %11
  br label %35

; <label>:35                                      ; preds = %34
  %36 = load i32* @g_3, align 4
  %37 = add nsw i32 %36, -1
  br label %8

; <label>:38                                      ; preds = %8
  %39 = load i32* @g_6, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i32* @g_21, align 4
  %42 = call i32 @func_13(i32 %41, i32 -1368172156) #3
  %43 = trunc i32 %42 to i8
  br i1 true, label %44, label %64

; <label>:44                                      ; preds = %38
  %45 = load i32* @g_6, align 4
  %46 = trunc i32 %45 to i8
  %47 = zext i16 %l_30.0 to i32
  %48 = load i32* @g_21, align 4
  %49 = call i32 @func_17(i8 signext %46, i32 %47, i32 %48) #3
  %50 = trunc i32 %49 to i8
  %51 = load i32* @g_6, align 4
  %52 = trunc i32 %51 to i8
  %53 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %50, i8 zeroext %52) #3
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 0
  %56 = load i16* %55, align 2
  %57 = sext i16 %56 to i32
  %58 = icmp sge i32 %54, %57
  %59 = zext i1 %58 to i32
  %60 = load volatile i32* @g_2, align 4
  %61 = icmp sgt i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @func_13(i32 %45, i32 %62) #3
  br label %64

; <label>:64                                      ; preds = %44, %38
  %65 = load i32* getelementptr inbounds ([3 x i32]* @g_25, i32 0, i32 2), align 4
  %66 = trunc i32 %65 to i8
  %67 = call i32 @func_17(i8 signext %66, i32 %65, i32 %65) #3
  %68 = load i32* getelementptr inbounds ([3 x i32]* @g_25, i32 0, i32 2), align 4
  %69 = call i32 @func_13(i32 %67, i32 %68) #3
  %70 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %43, i32 %69) #3
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %73

; <label>:72                                      ; preds = %64
  br label %73

; <label>:73                                      ; preds = %72, %64
  %74 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 2
  %75 = load i16* %74, align 2
  %76 = sext i16 %75 to i32
  %77 = call i32 @func_17(i8 signext %40, i32 77, i32 %76) #3
  %78 = zext i16 %l_30.0 to i32
  %79 = or i32 %77, %78
  %80 = or i32 %79, 395942169
  br label %81

; <label>:81                                      ; preds = %73, %29
  %.0 = phi i32 [ -1, %29 ], [ %80, %73 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #3
  %1 = icmp eq i32 %flag, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str7, i32 0, i32 0), i8* %vname, i32 %4) #4
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str6, i32 0, i32 0), i32 %crc) #4
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
define internal i32 @func_13(i32 %p_14, i32 %p_15) #0 {
  %1 = load i32* @g_6, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind
define internal i32 @func_17(i8 signext %p_18, i32 %p_19, i32 %p_20) #0 {
  ret i32 %p_19
}

; Function Attrs: noinline nounwind
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = add i32 %ui1, %ui2
  ret i32 %1
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
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = add i8 %ui1, %ui2
  ret i8 %1
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
