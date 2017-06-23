; ModuleID = 'testOutput0.bc'
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

; <label>:10                                      ; preds = %17, %0
  %11 = phi i32 [ 0, %0 ], [ %18, %17 ]
  %exitcond = icmp eq i32 %11, 3
  br i1 %exitcond, label %19, label %12

; <label>:12                                      ; preds = %10
  %scevgep = getelementptr [3 x i32]* @g_25, i32 0, i32 %11
  %13 = load i32* %scevgep, align 4
  %14 = sext i32 %13 to i64
  call void @transparent_crc(i64 %14, i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0), i32 0) #3
  br i1 false, label %15, label %16

; <label>:15                                      ; preds = %12
  br label %16

; <label>:16                                      ; preds = %15, %12
  br label %17

; <label>:17                                      ; preds = %16
  %18 = add nsw i32 %11, 1
  br label %10

; <label>:19                                      ; preds = %10
  %20 = load i32* @crc32_context, align 4
  %21 = xor i32 %20, -1
  %22 = call i32 @platform_main_end(i32 %21, i32 0) #3
  ret i32 %22
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
  %l_12 = alloca [3 x i16], align 2
  %l_26 = alloca [1 x [9 x i32]], align 4
  br label %1

; <label>:1                                       ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %exitcond = icmp eq i32 %2, 3
  br i1 %exitcond, label %6, label %3

; <label>:3                                       ; preds = %1
  %scevgep = getelementptr [3 x i16]* %l_12, i32 0, i32 %2
  store i16 9015, i16* %scevgep, align 2
  br label %4

; <label>:4                                       ; preds = %3
  %5 = add nsw i32 %2, 1
  br label %1

; <label>:6                                       ; preds = %1
  br label %7

; <label>:7                                       ; preds = %33, %6
  %storemerge = phi i32 [ 24, %6 ], [ %35, %33 ]
  %l_30.0 = phi i16 [ 0, %6 ], [ %l_30.1, %33 ]
  store i32 %storemerge, i32* @g_3, align 4
  %8 = icmp eq i32 %storemerge, -16
  br i1 %8, label %36, label %9

; <label>:9                                       ; preds = %7
  br label %10

; <label>:10                                      ; preds = %29, %9
  %indvar = phi i16 [ %indvar.next, %29 ], [ 0, %9 ]
  %storemerge1 = phi i32 [ %31, %29 ], [ 0, %9 ]
  %l_30.1 = sub i16 %l_30.0, %indvar
  store i32 %storemerge1, i32* @g_6, align 4
  %11 = icmp slt i32 %storemerge1, 29
  br i1 %11, label %12, label %32

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 0
  %14 = load i16* %13, align 2
  %15 = trunc i16 %14 to i8
  %16 = load volatile i32* @g_2, align 4
  store i32 -50606592, i32* @g_21, align 4
  %17 = call i32 @func_17(i8 signext 1, i32 %16, i32 -50606592) #3
  %18 = call i32 @func_13(i32 1, i32 %17) #3
  %19 = load i32* @g_3, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i8
  %22 = and i8 %15, %21
  %23 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %22, i8 zeroext 40) #3
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

; <label>:25                                      ; preds = %12
  %26 = bitcast [1 x [9 x i32]]* %l_26 to i8*
  call void @legup_memcpy_4(i8* %26, i8* bitcast ([1 x [9 x i32]]* @func_1.l_26 to i8*), i32 36)
  br label %28

; <label>:27                                      ; preds = %12
  br label %79

; <label>:28                                      ; preds = %25
  br label %29

; <label>:29                                      ; preds = %28
  %30 = load i32* @g_6, align 4
  %31 = call i32 @safe_add_func_uint32_t_u_u(i32 %30, i32 4) #3
  %indvar.next = add i16 %indvar, 1
  br label %10

; <label>:32                                      ; preds = %10
  br label %33

; <label>:33                                      ; preds = %32
  %34 = load i32* @g_3, align 4
  %35 = add nsw i32 %34, -1
  br label %7

; <label>:36                                      ; preds = %7
  %37 = load i32* @g_6, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i32* @g_21, align 4
  %40 = call i32 @func_13(i32 %39, i32 -1368172156) #3
  %41 = trunc i32 %40 to i8
  br i1 true, label %42, label %62

; <label>:42                                      ; preds = %36
  %43 = load i32* @g_6, align 4
  %44 = trunc i32 %43 to i8
  %45 = zext i16 %l_30.0 to i32
  %46 = load i32* @g_21, align 4
  %47 = call i32 @func_17(i8 signext %44, i32 %45, i32 %46) #3
  %48 = trunc i32 %47 to i8
  %49 = load i32* @g_6, align 4
  %50 = trunc i32 %49 to i8
  %51 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %48, i8 zeroext %50) #3
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 0
  %54 = load i16* %53, align 2
  %55 = sext i16 %54 to i32
  %56 = icmp sge i32 %52, %55
  %57 = zext i1 %56 to i32
  %58 = load volatile i32* @g_2, align 4
  %59 = icmp sgt i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @func_13(i32 %43, i32 %60) #3
  br label %62

; <label>:62                                      ; preds = %42, %36
  %63 = load i32* getelementptr inbounds ([3 x i32]* @g_25, i32 0, i32 2), align 4
  %64 = trunc i32 %63 to i8
  %65 = call i32 @func_17(i8 signext %64, i32 %63, i32 %63) #3
  %66 = load i32* getelementptr inbounds ([3 x i32]* @g_25, i32 0, i32 2), align 4
  %67 = call i32 @func_13(i32 %65, i32 %66) #3
  %68 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %41, i32 %67) #3
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %62
  br label %71

; <label>:71                                      ; preds = %70, %62
  %72 = getelementptr inbounds [3 x i16]* %l_12, i32 0, i32 2
  %73 = load i16* %72, align 2
  %74 = sext i16 %73 to i32
  %75 = call i32 @func_17(i8 signext %38, i32 77, i32 %74) #3
  %76 = zext i16 %l_30.0 to i32
  %77 = or i32 %75, %76
  %78 = or i32 %77, 395942169
  br label %79

; <label>:79                                      ; preds = %71, %27
  %.0 = phi i32 [ -1, %27 ], [ %78, %71 ]
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
