; ModuleID = 'delete0.postlto.bc'
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

; <label>:6                                       ; preds = %20, %0
  %i.0 = phi i32 [ 0, %0 ], [ %21, %20 ]
  %7 = icmp slt i32 %i.0, 7
  br i1 %7, label %8, label %22

; <label>:8                                       ; preds = %6
  br label %9

; <label>:9                                       ; preds = %17, %8
  %j.0 = phi i32 [ 0, %8 ], [ %18, %17 ]
  %10 = icmp slt i32 %j.0, 6
  br i1 %10, label %11, label %19

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds [7 x [6 x i32]]* @g_34, i32 0, i32 %i.0, i32 %j.0
  %13 = load i32* %12, align 4
  %14 = zext i32 %13 to i64
  call void @transparent_crc(i64 %14, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), i32 0) #2
  br i1 false, label %15, label %16

; <label>:15                                      ; preds = %11
  br label %16

; <label>:16                                      ; preds = %15, %11
  br label %17

; <label>:17                                      ; preds = %16
  %18 = add nsw i32 %j.0, 1
  br label %9

; <label>:19                                      ; preds = %9
  br label %20

; <label>:20                                      ; preds = %19
  %21 = add nsw i32 %i.0, 1
  br label %6

; <label>:22                                      ; preds = %6
  %23 = load i32* @g_44, align 4
  %24 = sext i32 %23 to i64
  call void @transparent_crc(i64 %24, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 0) #2
  br label %25

; <label>:25                                      ; preds = %33, %22
  %i.1 = phi i32 [ 0, %22 ], [ %34, %33 ]
  %26 = icmp slt i32 %i.1, 3
  br i1 %26, label %27, label %35

; <label>:27                                      ; preds = %25
  %28 = getelementptr inbounds [3 x i32]* @g_61, i32 0, i32 %i.1
  %29 = load i32* %28, align 4
  %30 = sext i32 %29 to i64
  call void @transparent_crc(i64 %30, i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0), i32 0) #2
  br i1 false, label %31, label %32

; <label>:31                                      ; preds = %27
  br label %32

; <label>:32                                      ; preds = %31, %27
  br label %33

; <label>:33                                      ; preds = %32
  %34 = add nsw i32 %i.1, 1
  br label %25

; <label>:35                                      ; preds = %25
  %36 = load i32* @g_77, align 4
  %37 = sext i32 %36 to i64
  call void @transparent_crc(i64 %37, i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i32 0) #2
  %38 = load i16* @g_113, align 2
  %39 = sext i16 %38 to i64
  call void @transparent_crc(i64 %39, i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i32 0) #2
  %40 = load i32* @g_114, align 4
  %41 = sext i32 %40 to i64
  call void @transparent_crc(i64 %41, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 0) #2
  br label %42

; <label>:42                                      ; preds = %56, %35
  %i.2 = phi i32 [ 0, %35 ], [ %57, %56 ]
  %43 = icmp slt i32 %i.2, 9
  br i1 %43, label %44, label %58

; <label>:44                                      ; preds = %42
  br label %45

; <label>:45                                      ; preds = %53, %44
  %j.1 = phi i32 [ 0, %44 ], [ %54, %53 ]
  %46 = icmp slt i32 %j.1, 1
  br i1 %46, label %47, label %55

; <label>:47                                      ; preds = %45
  %48 = getelementptr inbounds [9 x [1 x i16]]* @g_116, i32 0, i32 %i.2, i32 %j.1
  %49 = load i16* %48, align 2
  %50 = zext i16 %49 to i64
  call void @transparent_crc(i64 %50, i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0), i32 0) #2
  br i1 false, label %51, label %52

; <label>:51                                      ; preds = %47
  br label %52

; <label>:52                                      ; preds = %51, %47
  br label %53

; <label>:53                                      ; preds = %52
  %54 = add nsw i32 %j.1, 1
  br label %45

; <label>:55                                      ; preds = %45
  br label %56

; <label>:56                                      ; preds = %55
  %57 = add nsw i32 %i.2, 1
  br label %42

; <label>:58                                      ; preds = %42
  %59 = load i32* @crc32_context, align 4
  %60 = xor i32 %59, -1
  %61 = call i32 @platform_main_end(i32 %60, i32 0) #2
  ret i32 %61
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
define internal signext i8 @func_1() #0 {
  %l_46 = alloca [4 x i32], align 4
  %l_9 = alloca [2 x i32], align 4
  br label %1

; <label>:1                                       ; preds = %5, %0
  %i.0 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %2 = icmp slt i32 %i.0, 4
  br i1 %2, label %3, label %7

; <label>:3                                       ; preds = %1
  %4 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 %i.0
  store i32 4, i32* %4, align 4
  br label %5

; <label>:5                                       ; preds = %3
  %6 = add nsw i32 %i.0, 1
  br label %1

; <label>:7                                       ; preds = %1
  br label %8

; <label>:8                                       ; preds = %313, %7
  %storemerge = phi i32 [ 0, %7 ], [ %315, %313 ]
  %l_60.0 = phi i32 [ -1, %7 ], [ %l_60.3, %313 ]
  store i32 %storemerge, i32* @g_2, align 4
  %9 = icmp sgt i32 %storemerge, -8
  br i1 %9, label %10, label %316

; <label>:10                                      ; preds = %8
  %11 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext 22550, i32 1) #2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %14, label %13

; <label>:13                                      ; preds = %10
  br label %312

; <label>:14                                      ; preds = %10
  br label %15

; <label>:15                                      ; preds = %19, %14
  %i1.0 = phi i32 [ 0, %14 ], [ %20, %19 ]
  %16 = icmp slt i32 %i1.0, 2
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %15
  %18 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %i1.0
  store i32 5790591, i32* %18, align 4
  br label %19

; <label>:19                                      ; preds = %17
  %20 = add nsw i32 %i1.0, 1
  br label %15

; <label>:21                                      ; preds = %15
  br label %22

; <label>:22                                      ; preds = %294, %21
  %l_110.0 = phi i32 [ 0, %21 ], [ %l_110.1, %294 ]
  %l_7.0 = phi i32 [ 0, %21 ], [ %295, %294 ]
  %l_60.1 = phi i32 [ %l_60.0, %21 ], [ %l_60.2, %294 ]
  %23 = icmp slt i32 %l_7.0, 2
  br i1 %23, label %24, label %296

; <label>:24                                      ; preds = %22
  %25 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %l_7.0
  %26 = load i32* %25, align 4
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* @g_12, align 1
  %28 = trunc i32 %26 to i16
  %29 = and i16 %28, 255
  %30 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 1
  %31 = load i32* %30, align 4
  %32 = load i32* @g_2, align 4
  %33 = call signext i8 @func_19(i16 signext %29, i8 signext %27, i32 %31, i32 %32) #2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %56, label %35

; <label>:35                                      ; preds = %24
  %36 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 4, i32 3), align 4
  %37 = trunc i32 %36 to i8
  %38 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %39 = trunc i32 %38 to i16
  %40 = load i8* @g_12, align 1
  %41 = zext i8 %40 to i32
  %42 = call signext i16 @func_39(i16 signext %39, i32 %41) #2
  %43 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %44 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %42, i32 %43) #2
  %45 = sext i16 %44 to i32
  %46 = xor i32 %45, 205
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* @g_12, align 1
  %48 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %37, i8 signext %47) #2
  %49 = sext i8 %48 to i16
  %50 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %l_7.0
  %51 = load i32* %50, align 4
  %52 = trunc i32 %51 to i16
  %53 = load i32* @g_2, align 4
  %54 = trunc i32 %53 to i8
  %55 = call zeroext i16 @func_24(i16 zeroext %49, i32 %l_7.0, i16 zeroext %52, i8 signext %54) #2
  br label %56

; <label>:56                                      ; preds = %35, %24
  %l_45.0 = phi i32 [ %46, %35 ], [ -10, %24 ]
  %57 = phi i32 [ 1, %35 ], [ 0, %24 ]
  %58 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %59 = load i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = icmp ugt i32 %60, -6
  %62 = zext i1 %61 to i32
  %63 = call i32 @safe_sub_func_int32_t_s_s(i32 %62, i32 -384561695) #2
  %64 = trunc i32 %63 to i8
  %65 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %64, i8 signext -78) #2
  %66 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -49, i8 signext %65) #2
  %.lobit = lshr i8 %66, 7
  %67 = zext i8 %.lobit to i32
  %.not = xor i32 %67, 1
  %68 = load i32* @g_2, align 4
  %69 = icmp slt i32 %.not, %68
  %70 = zext i1 %69 to i16
  %71 = trunc i32 %68 to i16
  %72 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %70, i16 zeroext %71) #2
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %94, label %74

; <label>:74                                      ; preds = %56
  br label %75

; <label>:75                                      ; preds = %90, %74
  %storemerge1 = phi i8 [ 0, %74 ], [ %92, %90 ]
  store i8 %storemerge1, i8* @g_12, align 1
  %76 = icmp ult i8 %storemerge1, 2
  br i1 %76, label %77, label %.loopexit

; <label>:77                                      ; preds = %75
  %78 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 5), align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

; <label>:80                                      ; preds = %77
  br label %93

; <label>:81                                      ; preds = %77
  %82 = load i32* @g_44, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

; <label>:84                                      ; preds = %81
  br label %93

; <label>:85                                      ; preds = %81
  %86 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

; <label>:88                                      ; preds = %85
  br label %90

; <label>:89                                      ; preds = %85
  br label %90

; <label>:90                                      ; preds = %89, %88
  %91 = load i8* @g_12, align 1
  %92 = add i8 %91, 1
  br label %75

.loopexit:                                        ; preds = %75
  br label %93

; <label>:93                                      ; preds = %.loopexit, %84, %80
  br label %138

; <label>:94                                      ; preds = %56
  br i1 true, label %95, label %117

; <label>:95                                      ; preds = %94
  %96 = load i32* @g_44, align 4
  %97 = trunc i32 %96 to i16
  %98 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 1
  %99 = load i32* %98, align 4
  %100 = trunc i32 %99 to i16
  %101 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %97, i16 zeroext %100) #2
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %104, label %103

; <label>:103                                     ; preds = %95
  br label %104

; <label>:104                                     ; preds = %103, %95
  %105 = xor i32 %l_7.0, 2
  %106 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 2, i32 5), align 4
  %107 = icmp ule i32 %105, %106
  %tmp = icmp ult i32 %96, -1627762983
  %108 = or i1 %107, %tmp
  %109 = zext i1 %108 to i32
  %110 = or i32 %109, %l_7.0
  %111 = load i32* @g_44, align 4
  %112 = and i32 %110, %111
  %113 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 6, i32 5), align 4
  %114 = icmp ule i32 %112, %113
  %115 = zext i1 %114 to i16
  %116 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %115, i16 signext 0) #2
  br label %117

; <label>:117                                     ; preds = %104, %94
  %118 = phi i16 [ 0, %94 ], [ 1, %104 ]
  %119 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %118, i32 11) #2
  %120 = zext i16 %119 to i32
  %121 = load i32* @g_44, align 4
  %122 = xor i32 %120, %121
  %123 = and i32 %122, 76
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

; <label>:125                                     ; preds = %117
  %126 = load i32* @g_2, align 4
  %127 = icmp ne i32 %126, 0
  br label %128

; <label>:128                                     ; preds = %125, %117
  %129 = phi i1 [ true, %117 ], [ %127, %125 ]
  %130 = zext i1 %129 to i32
  %131 = icmp sgt i32 %130, %l_7.0
  %132 = zext i1 %131 to i16
  %133 = trunc i32 %l_7.0 to i16
  %134 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %132, i16 zeroext %133) #2
  %135 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %134, i32 -3) #2
  %136 = icmp ult i16 %135, 187
  %137 = zext i1 %136 to i32
  store i32 %137, i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  br label %138

; <label>:138                                     ; preds = %128, %93
  %l_60.2 = phi i32 [ %l_60.1, %93 ], [ %137, %128 ]
  %139 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 0
  %140 = load i32* %139, align 4
  %141 = trunc i32 %140 to i8
  %142 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext 1, i32 12) #2
  %143 = zext i16 %142 to i32
  %144 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %141, i32 %143) #2
  %145 = sext i8 %144 to i32
  %146 = xor i32 %145, 1
  %147 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 5, i32 5), align 4
  %148 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 0
  %149 = load i32* %148, align 4
  %150 = load i32* @g_44, align 4
  %151 = trunc i32 %150 to i16
  %152 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 3, i32 1), align 4
  %153 = trunc i32 %152 to i16
  %154 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %151, i16 signext %153) #2
  %155 = sext i16 %154 to i32
  %156 = icmp sgt i32 %149, %155
  %157 = zext i1 %156 to i32
  %158 = icmp slt i32 %157, %l_7.0
  %159 = zext i1 %158 to i16
  %160 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %159, i32 9) #2
  %161 = zext i16 %160 to i32
  %162 = and i32 %147, %161
  %163 = xor i32 %l_45.0, %162
  %164 = trunc i32 %163 to i8
  %165 = load i32* @g_44, align 4
  %166 = trunc i32 %165 to i8
  %167 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %164, i8 zeroext %166) #2
  %168 = load i8* @g_12, align 1
  %169 = and i8 %167, %168
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %172, label %171

; <label>:171                                     ; preds = %138
  br label %172

; <label>:172                                     ; preds = %171, %138
  %173 = phi i32 [ 0, %138 ], [ 1, %171 ]
  %174 = icmp sle i32 %146, %173
  %175 = zext i1 %174 to i16
  %176 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 1
  %177 = load i32* %176, align 4
  %178 = trunc i32 %177 to i16
  %179 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %175, i16 zeroext %178) #2
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %182, label %181

; <label>:181                                     ; preds = %172
  br label %182

; <label>:182                                     ; preds = %181, %172
  %183 = phi i32 [ 0, %172 ], [ 1, %181 ]
  store i32 %183, i32* @g_77, align 4
  br label %184

; <label>:184                                     ; preds = %194, %182
  %l_74.0 = phi i32 [ 1, %182 ], [ %195, %194 ]
  %185 = icmp sgt i32 %l_74.0, -1
  br i1 %185, label %186, label %196

; <label>:186                                     ; preds = %184
  %187 = trunc i32 %l_60.2 to i8
  %188 = load i32* @g_2, align 4
  %189 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 4, i32 5), align 4
  %190 = icmp ugt i32 %188, %189
  %191 = zext i1 %190 to i8
  %192 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %187, i8 signext %191) #2
  %193 = sext i8 %192 to i32
  store i32 %193, i32* @g_77, align 4
  br label %194

; <label>:194                                     ; preds = %186
  %195 = add nsw i32 %l_74.0, -1
  br label %184

; <label>:196                                     ; preds = %184
  %197 = load i32* @g_77, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %244, label %199

; <label>:199                                     ; preds = %196
  %200 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 0, i32 2), align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %209, label %202

; <label>:202                                     ; preds = %199
  %203 = icmp ne i32 %l_7.0, 1
  %204 = zext i1 %203 to i8
  %205 = or i8 %204, -94
  %206 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %205, i32 0) #2
  %207 = zext i8 %206 to i16
  store i16 %207, i16* @g_113, align 2
  %208 = icmp ne i8 %206, 0
  br label %209

; <label>:209                                     ; preds = %202, %199
  %210 = phi i1 [ false, %199 ], [ %208, %202 ]
  %211 = zext i1 %210 to i32
  store i32 %211, i32* @g_77, align 4
  br i1 %210, label %215, label %212

; <label>:212                                     ; preds = %209
  %213 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %214 = icmp ne i32 %213, 0
  br label %215

; <label>:215                                     ; preds = %212, %209
  %216 = phi i1 [ true, %209 ], [ %214, %212 ]
  %217 = zext i1 %216 to i8
  %218 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %217, i8 zeroext -7) #2
  %219 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %220 = icmp eq i32 %219, 0
  %221 = zext i1 %220 to i32
  %222 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  %223 = icmp slt i32 %221, %222
  %224 = zext i1 %223 to i8
  %225 = trunc i32 %l_74.0 to i8
  %226 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %224, i8 signext %225) #2
  %227 = trunc i32 %200 to i8
  %228 = trunc i32 %l_7.0 to i8
  %229 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %227, i8 signext %228) #2
  %230 = load i32* @g_114, align 4
  %231 = trunc i32 %230 to i8
  %232 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %229, i8 signext %231) #2
  %233 = icmp sgt i32 %l_7.0, -9
  %234 = zext i1 %233 to i8
  %235 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %l_7.0
  %236 = load i32* %235, align 4
  %237 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %234, i32 %236) #2
  %238 = zext i8 %237 to i32
  %239 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %240 = load i32* %239, align 4
  %241 = and i32 %238, %240
  %242 = trunc i32 %241 to i16
  %243 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %242, i32 %l_7.0) #2
  br label %244

; <label>:244                                     ; preds = %215, %196
  %l_110.1 = phi i32 [ %200, %215 ], [ %l_110.0, %196 ]
  %245 = phi i32 [ 1, %215 ], [ 0, %196 ]
  %246 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 0, i32 5), align 4
  %247 = icmp ugt i32 %245, %246
  %248 = zext i1 %247 to i32
  %249 = icmp sle i32 %248, %l_7.0
  %250 = zext i1 %249 to i16
  %251 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %250, i32 1) #2
  %252 = icmp eq i16 %251, 0
  br i1 %252, label %256, label %253

; <label>:253                                     ; preds = %244
  %254 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 0), align 4
  %255 = icmp ne i32 %254, 0
  br label %256

; <label>:256                                     ; preds = %253, %244
  %257 = phi i1 [ false, %244 ], [ %255, %253 ]
  %258 = zext i1 %257 to i16
  %259 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %260 = load i32* %259, align 4
  %261 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %258, i32 %260) #2
  %262 = call i32 @safe_add_func_uint32_t_u_u(i32 -989156845, i32 0) #2
  %263 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 2
  %264 = load i32* %263, align 4
  %265 = or i32 %262, %264
  %266 = trunc i32 %265 to i8
  %267 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %266, i32 17530) #2
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %270

; <label>:269                                     ; preds = %256
  br label %270

; <label>:270                                     ; preds = %269, %256
  %271 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 1), align 4
  %.tr = trunc i32 %271 to i16
  %272 = and i16 %.tr, 1
  store i16 %272, i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 2, i32 0), align 2
  %273 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %272, i32 13) #2
  %274 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %l_7.0
  %275 = load i32* %274, align 4
  %276 = icmp slt i32 %l_110.1, %275
  %277 = zext i1 %276 to i8
  %278 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  %279 = trunc i32 %278 to i8
  %280 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %277, i8 signext %279) #2
  %281 = load i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 7, i32 0), align 2
  %282 = trunc i16 %281 to i8
  %283 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %282, i8 zeroext -1) #2
  br i1 true, label %284, label %287

; <label>:284                                     ; preds = %270
  %285 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  %286 = icmp ne i32 %285, 0
  br label %287

; <label>:287                                     ; preds = %284, %270
  %288 = phi i1 [ false, %270 ], [ %286, %284 ]
  %289 = zext i1 %288 to i16
  %290 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %289, i16 zeroext 0) #2
  %291 = icmp eq i16 %290, 0
  br i1 %291, label %292, label %293

; <label>:292                                     ; preds = %287
  br label %293

; <label>:293                                     ; preds = %292, %287
  br label %294

; <label>:294                                     ; preds = %293
  %295 = add nsw i32 %l_7.0, 1
  br label %22

; <label>:296                                     ; preds = %22
  %297 = and i32 %l_110.0, 255
  store i32 0, i32* @g_77, align 4
  %298 = load i8* @g_12, align 1
  %299 = icmp ne i8 %298, 0
  %300 = zext i1 %299 to i32
  %301 = call i32 @safe_sub_func_int32_t_s_s(i32 %300, i32 %l_110.0) #2
  %302 = call i32 @safe_div_func_int32_t_s_s(i32 0, i32 %301) #2
  %303 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %304 = and i32 %303, %302
  store i32 %304, i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %305 = xor i32 %l_60.1, %304
  %306 = icmp ult i32 %297, %305
  %307 = zext i1 %306 to i16
  %308 = load i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 7, i32 0), align 2
  %309 = and i16 %308, %307
  store i16 %309, i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 7, i32 0), align 2
  %310 = load i32* @g_114, align 4
  %311 = and i32 %310, 1
  store i32 %311, i32* @g_114, align 4
  br label %312

; <label>:312                                     ; preds = %296, %13
  %l_60.3 = phi i32 [ %l_60.0, %13 ], [ %l_60.1, %296 ]
  br label %313

; <label>:313                                     ; preds = %312
  %314 = load i32* @g_2, align 4
  %315 = add nsw i32 %314, -1
  br label %8

; <label>:316                                     ; preds = %8
  %317 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %318 = load i32* %317, align 4
  %319 = trunc i32 %318 to i8
  ret i8 %319
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
