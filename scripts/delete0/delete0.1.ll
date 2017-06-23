; ModuleID = 'delete0.1.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@g_2 = internal global i32 5, align 4
@.str = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_12 = internal global i8 -9, align 1
@.str1 = private unnamed_addr constant [5 x i8] c"g_12\00", align 1
@g_34 = internal global [7 x [6 x i32]] [[6 x i32] [i32 -1493613348, i32 8, i32 -1493613348, i32 -1493613348, i32 8, i32 -1493613348], [6 x i32] [i32 -1493613348, i32 8, i32 -1493613348, i32 -1493613348, i32 8, i32 -1493613348], [6 x i32] [i32 -1493613348, i32 8, i32 -1493613348, i32 -1493613348, i32 8, i32 -1493613348], [6 x i32] [i32 -1493613348, i32 8, i32 -1493613348, i32 -1493613348, i32 8, i32 -1493613348], [6 x i32] [i32 -1493613348, i32 8, i32 -1493613348, i32 -1493613348, i32 8, i32 -1493613348], [6 x i32] [i32 -1493613348, i32 8, i32 -1493613348, i32 -1493613348, i32 8, i32 -1493613348], [6 x i32] [i32 -1493613348, i32 8, i32 -1493613348, i32 -1493613348, i32 8, i32 -1493613348]], align 4
@.str2 = private unnamed_addr constant [11 x i8] c"g_34[i][j]\00", align 1
@.str3 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_44 = internal global i32 -7, align 4
@.str4 = private unnamed_addr constant [5 x i8] c"g_44\00", align 1
@g_61 = internal global [3 x i32] [i32 -605769139, i32 -605769139, i32 -605769139], align 4
@.str5 = private unnamed_addr constant [8 x i8] c"g_61[i]\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_77 = internal global i32 2, align 4
@.str7 = private unnamed_addr constant [5 x i8] c"g_77\00", align 1
@g_113 = internal global i16 0, align 2
@.str8 = private unnamed_addr constant [6 x i8] c"g_113\00", align 1
@g_114 = internal global i32 -621025515, align 4
@.str9 = private unnamed_addr constant [6 x i8] c"g_114\00", align 1
@g_116 = internal global [9 x [1 x i16]] [[1 x i16] [i16 -19454], [1 x i16] [i16 -19454], [1 x i16] [i16 -19454], [1 x i16] [i16 -19454], [1 x i16] [i16 -19454], [1 x i16] [i16 -19454], [1 x i16] [i16 -19454], [1 x i16] [i16 -19454], [1 x i16] [i16 -19454]], align 2
@.str10 = private unnamed_addr constant [12 x i8] c"g_116[i][j]\00", align 1
@crc32_context = internal global i32 -1, align 4
@.str11 = private unnamed_addr constant [15 x i8] c"checksum = %u\0A\00", align 1
@.str12 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@crc32_tab = internal global [256 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @platform_main_begin() #2
  call void @crc32_gentab() #2
  %1 = call signext i8 @func_1() #2
  %2 = load i32* @g_2, align 4
  %3 = sext i32 %2 to i64
  call void @transparent_crc(i64 %3, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 0) #2
  %4 = load i8* @g_12, align 1
  %5 = zext i8 %4 to i64
  call void @transparent_crc(i64 %5, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 0) #2
  br label %6

; <label>:6                                       ; preds = %19, %0
  %7 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %exitcond7 = icmp ne i32 %7, 7
  br i1 %exitcond7, label %8, label %21

; <label>:8                                       ; preds = %6
  br label %9

; <label>:9                                       ; preds = %16, %8
  %10 = phi i32 [ 0, %8 ], [ %17, %16 ]
  %scevgep6 = getelementptr [7 x [6 x i32]]* @g_34, i32 0, i32 %7, i32 %10
  %exitcond5 = icmp ne i32 %10, 6
  br i1 %exitcond5, label %11, label %18

; <label>:11                                      ; preds = %9
  %12 = load i32* %scevgep6, align 4
  %13 = zext i32 %12 to i64
  call void @transparent_crc(i64 %13, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), i32 0) #2
  br i1 false, label %14, label %15

; <label>:14                                      ; preds = %11
  br label %15

; <label>:15                                      ; preds = %14, %11
  br label %16

; <label>:16                                      ; preds = %15
  %17 = add nsw i32 %10, 1
  br label %9

; <label>:18                                      ; preds = %9
  br label %19

; <label>:19                                      ; preds = %18
  %20 = add nsw i32 %7, 1
  br label %6

; <label>:21                                      ; preds = %6
  %22 = load i32* @g_44, align 4
  %23 = sext i32 %22 to i64
  call void @transparent_crc(i64 %23, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 0) #2
  br label %24

; <label>:24                                      ; preds = %31, %21
  %25 = phi i32 [ 0, %21 ], [ %32, %31 ]
  %scevgep4 = getelementptr [3 x i32]* @g_61, i32 0, i32 %25
  %exitcond3 = icmp ne i32 %25, 3
  br i1 %exitcond3, label %26, label %33

; <label>:26                                      ; preds = %24
  %27 = load i32* %scevgep4, align 4
  %28 = sext i32 %27 to i64
  call void @transparent_crc(i64 %28, i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0), i32 0) #2
  br i1 false, label %29, label %30

; <label>:29                                      ; preds = %26
  br label %30

; <label>:30                                      ; preds = %29, %26
  br label %31

; <label>:31                                      ; preds = %30
  %32 = add nsw i32 %25, 1
  br label %24

; <label>:33                                      ; preds = %24
  %34 = load i32* @g_77, align 4
  %35 = sext i32 %34 to i64
  call void @transparent_crc(i64 %35, i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i32 0) #2
  %36 = load i16* @g_113, align 2
  %37 = sext i16 %36 to i64
  call void @transparent_crc(i64 %37, i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i32 0) #2
  %38 = load i32* @g_114, align 4
  %39 = sext i32 %38 to i64
  call void @transparent_crc(i64 %39, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 0) #2
  br label %40

; <label>:40                                      ; preds = %54, %33
  %41 = phi i32 [ 0, %33 ], [ %55, %54 ]
  %exitcond1 = icmp ne i32 %41, 9
  br i1 %exitcond1, label %42, label %56

; <label>:42                                      ; preds = %40
  br label %43

; <label>:43                                      ; preds = %51, %42
  %44 = phi i32 [ 0, %42 ], [ %52, %51 ]
  %45 = add i32 %41, %44
  %scevgep = getelementptr [9 x [1 x i16]]* @g_116, i32 0, i32 %45, i32 0
  %exitcond = icmp ne i32 %44, 1
  br i1 %exitcond, label %46, label %53

; <label>:46                                      ; preds = %43
  %47 = load i16* %scevgep, align 2
  %48 = zext i16 %47 to i64
  call void @transparent_crc(i64 %48, i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0), i32 0) #2
  br i1 false, label %49, label %50

; <label>:49                                      ; preds = %46
  br label %50

; <label>:50                                      ; preds = %49, %46
  br label %51

; <label>:51                                      ; preds = %50
  %52 = add nsw i32 %44, 1
  br label %43

; <label>:53                                      ; preds = %43
  br label %54

; <label>:54                                      ; preds = %53
  %55 = add nsw i32 %41, 1
  br label %40

; <label>:56                                      ; preds = %40
  %57 = load i32* @crc32_context, align 4
  %58 = xor i32 %57, -1
  %59 = call i32 @platform_main_end(i32 %58, i32 0) #2
  ret i32 %59
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
define internal signext i8 @func_1() #0 {
  %l_46 = alloca [4 x i32], align 4
  %l_9 = alloca [2 x i32], align 4
  br label %1

; <label>:1                                       ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %scevgep5 = getelementptr [4 x i32]* %l_46, i32 0, i32 %2
  %exitcond4 = icmp ne i32 %2, 4
  br i1 %exitcond4, label %3, label %6

; <label>:3                                       ; preds = %1
  store i32 4, i32* %scevgep5, align 4
  br label %4

; <label>:4                                       ; preds = %3
  %5 = add nsw i32 %2, 1
  br label %1

; <label>:6                                       ; preds = %1
  br label %7

; <label>:7                                       ; preds = %304, %6
  %storemerge = phi i32 [ 0, %6 ], [ %306, %304 ]
  %l_60.0 = phi i32 [ -1, %6 ], [ %l_60.3, %304 ]
  store i32 %storemerge, i32* @g_2, align 4
  %8 = icmp sgt i32 %storemerge, -8
  br i1 %8, label %9, label %307

; <label>:9                                       ; preds = %7
  %10 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext 22550, i32 1) #2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

; <label>:12                                      ; preds = %9
  br label %303

; <label>:13                                      ; preds = %9
  br label %14

; <label>:14                                      ; preds = %17, %13
  %15 = phi i32 [ 0, %13 ], [ %18, %17 ]
  %scevgep = getelementptr [2 x i32]* %l_9, i32 0, i32 %15
  %exitcond = icmp ne i32 %15, 2
  br i1 %exitcond, label %16, label %19

; <label>:16                                      ; preds = %14
  store i32 5790591, i32* %scevgep, align 4
  br label %17

; <label>:17                                      ; preds = %16
  %18 = add nsw i32 %15, 1
  br label %14

; <label>:19                                      ; preds = %14
  br label %20

; <label>:20                                      ; preds = %285, %19
  %l_110.0 = phi i32 [ 0, %19 ], [ %l_110.1, %285 ]
  %21 = phi i32 [ 0, %19 ], [ %286, %285 ]
  %l_60.1 = phi i32 [ %l_60.0, %19 ], [ %l_60.2, %285 ]
  %22 = trunc i32 %21 to i16
  %23 = trunc i32 %21 to i8
  %scevgep3 = getelementptr [2 x i32]* %l_9, i32 0, i32 %21
  %exitcond2 = icmp ne i32 %21, 2
  br i1 %exitcond2, label %24, label %287

; <label>:24                                      ; preds = %20
  %25 = load i32* %scevgep3, align 4
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* @g_12, align 1
  %27 = trunc i32 %25 to i16
  %28 = and i16 %27, 255
  %29 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 1
  %30 = load i32* %29, align 4
  %31 = load i32* @g_2, align 4
  %32 = call signext i8 @func_19(i16 signext %28, i8 signext %26, i32 %30, i32 %31) #2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %54, label %34

; <label>:34                                      ; preds = %24
  %35 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 4, i32 3), align 4
  %36 = trunc i32 %35 to i8
  %37 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %38 = trunc i32 %37 to i16
  %39 = load i8* @g_12, align 1
  %40 = zext i8 %39 to i32
  %41 = call signext i16 @func_39(i16 signext %38, i32 %40) #2
  %42 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %43 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %41, i32 %42) #2
  %44 = sext i16 %43 to i32
  %45 = xor i32 %44, 205
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* @g_12, align 1
  %47 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %36, i8 signext %46) #2
  %48 = sext i8 %47 to i16
  %49 = load i32* %scevgep3, align 4
  %50 = trunc i32 %49 to i16
  %51 = load i32* @g_2, align 4
  %52 = trunc i32 %51 to i8
  %53 = call zeroext i16 @func_24(i16 zeroext %48, i32 %21, i16 zeroext %50, i8 signext %52) #2
  br label %54

; <label>:54                                      ; preds = %34, %24
  %l_45.0 = phi i32 [ %45, %34 ], [ -10, %24 ]
  %55 = phi i32 [ 1, %34 ], [ 0, %24 ]
  %56 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %57 = load i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = icmp ugt i32 %58, -6
  %60 = zext i1 %59 to i32
  %61 = call i32 @safe_sub_func_int32_t_s_s(i32 %60, i32 -384561695) #2
  %62 = trunc i32 %61 to i8
  %63 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %62, i8 signext -78) #2
  %64 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -49, i8 signext %63) #2
  %.lobit = lshr i8 %64, 7
  %65 = zext i8 %.lobit to i32
  %.not = xor i32 %65, 1
  %66 = load i32* @g_2, align 4
  %67 = icmp slt i32 %.not, %66
  %68 = zext i1 %67 to i16
  %69 = trunc i32 %66 to i16
  %70 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %68, i16 zeroext %69) #2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %92, label %72

; <label>:72                                      ; preds = %54
  br label %73

; <label>:73                                      ; preds = %88, %72
  %storemerge1 = phi i8 [ 0, %72 ], [ %90, %88 ]
  store i8 %storemerge1, i8* @g_12, align 1
  %74 = icmp ult i8 %storemerge1, 2
  br i1 %74, label %75, label %.loopexit

; <label>:75                                      ; preds = %73
  %76 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 5), align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

; <label>:78                                      ; preds = %75
  br label %91

; <label>:79                                      ; preds = %75
  %80 = load i32* @g_44, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

; <label>:82                                      ; preds = %79
  br label %91

; <label>:83                                      ; preds = %79
  %84 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

; <label>:86                                      ; preds = %83
  br label %88

; <label>:87                                      ; preds = %83
  br label %88

; <label>:88                                      ; preds = %87, %86
  %89 = load i8* @g_12, align 1
  %90 = add i8 %89, 1
  br label %73

.loopexit:                                        ; preds = %73
  br label %91

; <label>:91                                      ; preds = %.loopexit, %82, %78
  br label %135

; <label>:92                                      ; preds = %54
  br i1 true, label %93, label %115

; <label>:93                                      ; preds = %92
  %94 = load i32* @g_44, align 4
  %95 = trunc i32 %94 to i16
  %96 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 1
  %97 = load i32* %96, align 4
  %98 = trunc i32 %97 to i16
  %99 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %95, i16 zeroext %98) #2
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %102, label %101

; <label>:101                                     ; preds = %93
  br label %102

; <label>:102                                     ; preds = %101, %93
  %103 = xor i32 %21, 2
  %104 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 2, i32 5), align 4
  %105 = icmp ule i32 %103, %104
  %tmp = icmp ult i32 %94, -1627762983
  %106 = or i1 %105, %tmp
  %107 = zext i1 %106 to i32
  %108 = or i32 %107, %21
  %109 = load i32* @g_44, align 4
  %110 = and i32 %108, %109
  %111 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 6, i32 5), align 4
  %112 = icmp ule i32 %110, %111
  %113 = zext i1 %112 to i16
  %114 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %113, i16 signext 0) #2
  br label %115

; <label>:115                                     ; preds = %102, %92
  %116 = phi i16 [ 0, %92 ], [ 1, %102 ]
  %117 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %116, i32 11) #2
  %118 = zext i16 %117 to i32
  %119 = load i32* @g_44, align 4
  %120 = xor i32 %118, %119
  %121 = and i32 %120, 76
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

; <label>:123                                     ; preds = %115
  %124 = load i32* @g_2, align 4
  %125 = icmp ne i32 %124, 0
  br label %126

; <label>:126                                     ; preds = %123, %115
  %127 = phi i1 [ true, %115 ], [ %125, %123 ]
  %128 = zext i1 %127 to i32
  %129 = icmp sgt i32 %128, %21
  %130 = zext i1 %129 to i16
  %131 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %130, i16 zeroext %22) #2
  %132 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %131, i32 -3) #2
  %133 = icmp ult i16 %132, 187
  %134 = zext i1 %133 to i32
  store i32 %134, i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  br label %135

; <label>:135                                     ; preds = %126, %91
  %l_60.2 = phi i32 [ %l_60.1, %91 ], [ %134, %126 ]
  %136 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 0
  %137 = load i32* %136, align 4
  %138 = trunc i32 %137 to i8
  %139 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext 1, i32 12) #2
  %140 = zext i16 %139 to i32
  %141 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %138, i32 %140) #2
  %142 = sext i8 %141 to i32
  %143 = xor i32 %142, 1
  %144 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 5, i32 5), align 4
  %145 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 0
  %146 = load i32* %145, align 4
  %147 = load i32* @g_44, align 4
  %148 = trunc i32 %147 to i16
  %149 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 3, i32 1), align 4
  %150 = trunc i32 %149 to i16
  %151 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %148, i16 signext %150) #2
  %152 = sext i16 %151 to i32
  %153 = icmp sgt i32 %146, %152
  %154 = zext i1 %153 to i32
  %155 = icmp slt i32 %154, %21
  %156 = zext i1 %155 to i16
  %157 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %156, i32 9) #2
  %158 = zext i16 %157 to i32
  %159 = and i32 %144, %158
  %160 = xor i32 %l_45.0, %159
  %161 = trunc i32 %160 to i8
  %162 = load i32* @g_44, align 4
  %163 = trunc i32 %162 to i8
  %164 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %161, i8 zeroext %163) #2
  %165 = load i8* @g_12, align 1
  %166 = and i8 %164, %165
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %169, label %168

; <label>:168                                     ; preds = %135
  br label %169

; <label>:169                                     ; preds = %168, %135
  %170 = phi i32 [ 0, %135 ], [ 1, %168 ]
  %171 = icmp sle i32 %143, %170
  %172 = zext i1 %171 to i16
  %173 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 1
  %174 = load i32* %173, align 4
  %175 = trunc i32 %174 to i16
  %176 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %172, i16 zeroext %175) #2
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %179, label %178

; <label>:178                                     ; preds = %169
  br label %179

; <label>:179                                     ; preds = %178, %169
  %180 = phi i32 [ 0, %169 ], [ 1, %178 ]
  store i32 %180, i32* @g_77, align 4
  br label %181

; <label>:181                                     ; preds = %190, %179
  %indvar = phi i32 [ %indvar.next, %190 ], [ 0, %179 ]
  %exitcond1 = icmp ne i32 %indvar, 2
  br i1 %exitcond1, label %182, label %191

; <label>:182                                     ; preds = %181
  %183 = trunc i32 %l_60.2 to i8
  %184 = load i32* @g_2, align 4
  %185 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 4, i32 5), align 4
  %186 = icmp ugt i32 %184, %185
  %187 = zext i1 %186 to i8
  %188 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %183, i8 signext %187) #2
  %189 = sext i8 %188 to i32
  store i32 %189, i32* @g_77, align 4
  br label %190

; <label>:190                                     ; preds = %182
  %indvar.next = add i32 %indvar, 1
  br label %181

; <label>:191                                     ; preds = %181
  %192 = load i32* @g_77, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %236, label %194

; <label>:194                                     ; preds = %191
  %195 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 0, i32 2), align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %204, label %197

; <label>:197                                     ; preds = %194
  %198 = icmp ne i32 %21, 1
  %199 = zext i1 %198 to i8
  %200 = or i8 %199, -94
  %201 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %200, i32 0) #2
  %202 = zext i8 %201 to i16
  store i16 %202, i16* @g_113, align 2
  %203 = icmp ne i8 %201, 0
  br label %204

; <label>:204                                     ; preds = %197, %194
  %205 = phi i1 [ false, %194 ], [ %203, %197 ]
  %206 = zext i1 %205 to i32
  store i32 %206, i32* @g_77, align 4
  br i1 %205, label %210, label %207

; <label>:207                                     ; preds = %204
  %208 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %209 = icmp ne i32 %208, 0
  br label %210

; <label>:210                                     ; preds = %207, %204
  %211 = phi i1 [ true, %204 ], [ %209, %207 ]
  %212 = zext i1 %211 to i8
  %213 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %212, i8 zeroext -7) #2
  %214 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %215 = icmp eq i32 %214, 0
  %216 = zext i1 %215 to i32
  %217 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  %218 = icmp slt i32 %216, %217
  %219 = zext i1 %218 to i8
  %220 = trunc i32 -1 to i8
  %221 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %219, i8 signext %220) #2
  %222 = trunc i32 %195 to i8
  %223 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %222, i8 signext %23) #2
  %224 = load i32* @g_114, align 4
  %225 = trunc i32 %224 to i8
  %226 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %223, i8 signext %225) #2
  %227 = zext i1 true to i8
  %228 = load i32* %scevgep3, align 4
  %229 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %227, i32 %228) #2
  %230 = zext i8 %229 to i32
  %231 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %232 = load i32* %231, align 4
  %233 = and i32 %230, %232
  %234 = trunc i32 %233 to i16
  %235 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %234, i32 %21) #2
  br label %236

; <label>:236                                     ; preds = %210, %191
  %l_110.1 = phi i32 [ %195, %210 ], [ %l_110.0, %191 ]
  %237 = phi i32 [ 1, %210 ], [ 0, %191 ]
  %238 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 0, i32 5), align 4
  %239 = icmp ugt i32 %237, %238
  %240 = zext i1 %239 to i32
  %241 = icmp sle i32 %240, %21
  %242 = zext i1 %241 to i16
  %243 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %242, i32 1) #2
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %248, label %245

; <label>:245                                     ; preds = %236
  %246 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 0), align 4
  %247 = icmp ne i32 %246, 0
  br label %248

; <label>:248                                     ; preds = %245, %236
  %249 = phi i1 [ false, %236 ], [ %247, %245 ]
  %250 = zext i1 %249 to i16
  %251 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %252 = load i32* %251, align 4
  %253 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %250, i32 %252) #2
  %254 = call i32 @safe_add_func_uint32_t_u_u(i32 -989156845, i32 0) #2
  %255 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 2
  %256 = load i32* %255, align 4
  %257 = or i32 %254, %256
  %258 = trunc i32 %257 to i8
  %259 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %258, i32 17530) #2
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %261, label %262

; <label>:261                                     ; preds = %248
  br label %262

; <label>:262                                     ; preds = %261, %248
  %263 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 1), align 4
  %.tr = trunc i32 %263 to i16
  %264 = and i16 %.tr, 1
  store i16 %264, i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 2, i32 0), align 2
  %265 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %264, i32 13) #2
  %266 = load i32* %scevgep3, align 4
  %267 = icmp slt i32 %l_110.1, %266
  %268 = zext i1 %267 to i8
  %269 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  %270 = trunc i32 %269 to i8
  %271 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %268, i8 signext %270) #2
  %272 = load i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 7, i32 0), align 2
  %273 = trunc i16 %272 to i8
  %274 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %273, i8 zeroext -1) #2
  br i1 true, label %275, label %278

; <label>:275                                     ; preds = %262
  %276 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  %277 = icmp ne i32 %276, 0
  br label %278

; <label>:278                                     ; preds = %275, %262
  %279 = phi i1 [ false, %262 ], [ %277, %275 ]
  %280 = zext i1 %279 to i16
  %281 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %280, i16 zeroext 0) #2
  %282 = icmp eq i16 %281, 0
  br i1 %282, label %283, label %284

; <label>:283                                     ; preds = %278
  br label %284

; <label>:284                                     ; preds = %283, %278
  br label %285

; <label>:285                                     ; preds = %284
  %286 = add nsw i32 %21, 1
  br label %20

; <label>:287                                     ; preds = %20
  %l_60.1.lcssa = phi i32 [ %l_60.1, %20 ]
  %l_110.0.lcssa = phi i32 [ %l_110.0, %20 ]
  %288 = and i32 %l_110.0.lcssa, 255
  store i32 0, i32* @g_77, align 4
  %289 = load i8* @g_12, align 1
  %290 = icmp ne i8 %289, 0
  %291 = zext i1 %290 to i32
  %292 = call i32 @safe_sub_func_int32_t_s_s(i32 %291, i32 %l_110.0.lcssa) #2
  %293 = call i32 @safe_div_func_int32_t_s_s(i32 0, i32 %292) #2
  %294 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %295 = and i32 %294, %293
  store i32 %295, i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %296 = xor i32 %l_60.1.lcssa, %295
  %297 = icmp ult i32 %288, %296
  %298 = zext i1 %297 to i16
  %299 = load i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 7, i32 0), align 2
  %300 = and i16 %299, %298
  store i16 %300, i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 7, i32 0), align 2
  %301 = load i32* @g_114, align 4
  %302 = and i32 %301, 1
  store i32 %302, i32* @g_114, align 4
  br label %303

; <label>:303                                     ; preds = %287, %12
  %l_60.3 = phi i32 [ %l_60.0, %12 ], [ %l_60.1.lcssa, %287 ]
  br label %304

; <label>:304                                     ; preds = %303
  %305 = load i32* @g_2, align 4
  %306 = add nsw i32 %305, -1
  br label %7

; <label>:307                                     ; preds = %7
  %308 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %309 = load i32* %308, align 4
  %310 = trunc i32 %309 to i8
  ret i8 %310
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #2
  %1 = icmp eq i32 %flag, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str12, i32 0, i32 0), i8* %vname, i32 %4) #3
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str11, i32 0, i32 0), i32 %crc) #3
  ret i32 %crc
}

; Function Attrs: noinline nounwind
define internal void @crc32_8bytes(i64 %val) #0 {
  %1 = trunc i64 %val to i8
  call void @crc32_byte(i8 zeroext %1) #2
  %2 = lshr i64 %val, 8
  %3 = trunc i64 %2 to i8
  call void @crc32_byte(i8 zeroext %3) #2
  %4 = lshr i64 %val, 16
  %5 = trunc i64 %4 to i8
  call void @crc32_byte(i8 zeroext %5) #2
  %6 = lshr i64 %val, 24
  %7 = trunc i64 %6 to i8
  call void @crc32_byte(i8 zeroext %7) #2
  %8 = lshr i64 %val, 32
  %9 = trunc i64 %8 to i8
  call void @crc32_byte(i8 zeroext %9) #2
  %10 = lshr i64 %val, 40
  %11 = trunc i64 %10 to i8
  call void @crc32_byte(i8 zeroext %11) #2
  %12 = lshr i64 %val, 48
  %13 = trunc i64 %12 to i8
  call void @crc32_byte(i8 zeroext %13) #2
  %14 = lshr i64 %val, 56
  %15 = trunc i64 %14 to i8
  call void @crc32_byte(i8 zeroext %15) #2
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
define internal zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = icmp slt i32 %right, 0
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp sgt i32 %right, 31
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %2, %0
  %5 = zext i16 %left to i32
  br label %9

; <label>:6                                       ; preds = %2
  %7 = zext i16 %left to i32
  %8 = lshr i32 %7, %right
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  %11 = trunc i32 %10 to i16
  ret i16 %11
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = mul i16 %ui1, %ui2
  ret i16 %1
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = mul i8 %si1, %si2
  ret i8 %1
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
define internal signext i8 @func_19(i16 signext %p_20, i8 signext %p_21, i32 %p_22, i32 %p_23) #0 {
  %1 = load i32* @g_2, align 4
  %2 = trunc i32 %1 to i16
  %3 = load i8* @g_12, align 1
  %4 = zext i8 %3 to i32
  %5 = trunc i32 %p_22 to i8
  %6 = call zeroext i16 @func_24(i16 zeroext %2, i32 %4, i16 zeroext -15459, i8 signext %5) #2
  %7 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %8 = xor i32 %7, 5680
  store i32 %8, i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %9 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 5, i32 1), align 4
  %10 = load i32* @g_2, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %13, label %12

; <label>:12                                      ; preds = %0
  br label %13

; <label>:13                                      ; preds = %12, %0
  %14 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @func_24(i16 zeroext %p_25, i32 %p_26, i16 zeroext %p_27, i8 signext %p_28) #0 {
  ret i16 24226
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
define internal signext i16 @func_39(i16 signext %p_40, i32 %p_41) #0 {
  %1 = load i8* @g_12, align 1
  %2 = zext i8 %1 to i32
  %3 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 5, i32 4), align 4
  %4 = call i32 @safe_add_func_int32_t_s_s(i32 %2, i32 %3) #2
  store i32 %4, i32* @g_44, align 4
  ret i16 %p_40
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
define internal zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = add i16 %ui1, %ui2
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
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = mul i16 %si1, %si2
  ret i16 %1
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = sub i16 %ui1, %ui2
  ret i16 %1
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
define internal zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = sub i8 %ui1, %ui2
  ret i8 %1
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
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = add i32 %ui1, %ui2
  ret i32 %1
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

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin }
attributes #3 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
