; ModuleID = 'delete0.prelto.6.bc'
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

; <label>:6                                       ; preds = %23, %0
  %i.0 = phi i32 [ 0, %0 ], [ %24, %23 ]
  %7 = icmp slt i32 %i.0, 7
  br i1 %7, label %8, label %25

; <label>:8                                       ; preds = %6
  br label %9

; <label>:9                                       ; preds = %20, %8
  %j.0 = phi i32 [ 0, %8 ], [ %21, %20 ]
  %10 = icmp slt i32 %j.0, 6
  br i1 %10, label %11, label %22

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds [7 x [6 x i32]]* @g_34, i32 0, i32 %i.0
  %13 = getelementptr inbounds [6 x i32]* %12, i32 0, i32 %j.0
  %14 = load i32* %13, align 4
  %15 = zext i32 %14 to i64
  call void @transparent_crc(i64 %15, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), i32 0) #2
  %16 = icmp ne i32 0, 0
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %11
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str3, i32 0, i32 0), i32 %i.0, i32 %j.0) #2
  br label %19

; <label>:19                                      ; preds = %17, %11
  br label %20

; <label>:20                                      ; preds = %19
  %21 = add nsw i32 %j.0, 1
  br label %9

; <label>:22                                      ; preds = %9
  br label %23

; <label>:23                                      ; preds = %22
  %24 = add nsw i32 %i.0, 1
  br label %6

; <label>:25                                      ; preds = %6
  %26 = load i32* @g_44, align 4
  %27 = sext i32 %26 to i64
  call void @transparent_crc(i64 %27, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 0) #2
  br label %28

; <label>:28                                      ; preds = %38, %25
  %i.1 = phi i32 [ 0, %25 ], [ %39, %38 ]
  %29 = icmp slt i32 %i.1, 3
  br i1 %29, label %30, label %40

; <label>:30                                      ; preds = %28
  %31 = getelementptr inbounds [3 x i32]* @g_61, i32 0, i32 %i.1
  %32 = load i32* %31, align 4
  %33 = sext i32 %32 to i64
  call void @transparent_crc(i64 %33, i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0), i32 0) #2
  %34 = icmp ne i32 0, 0
  br i1 %34, label %35, label %37

; <label>:35                                      ; preds = %30
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str6, i32 0, i32 0), i32 %i.1) #2
  br label %37

; <label>:37                                      ; preds = %35, %30
  br label %38

; <label>:38                                      ; preds = %37
  %39 = add nsw i32 %i.1, 1
  br label %28

; <label>:40                                      ; preds = %28
  %41 = load i32* @g_77, align 4
  %42 = sext i32 %41 to i64
  call void @transparent_crc(i64 %42, i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i32 0) #2
  %43 = load i16* @g_113, align 2
  %44 = sext i16 %43 to i64
  call void @transparent_crc(i64 %44, i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i32 0) #2
  %45 = load i32* @g_114, align 4
  %46 = sext i32 %45 to i64
  call void @transparent_crc(i64 %46, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 0) #2
  br label %47

; <label>:47                                      ; preds = %64, %40
  %i.2 = phi i32 [ 0, %40 ], [ %65, %64 ]
  %48 = icmp slt i32 %i.2, 9
  br i1 %48, label %49, label %66

; <label>:49                                      ; preds = %47
  br label %50

; <label>:50                                      ; preds = %61, %49
  %j.1 = phi i32 [ 0, %49 ], [ %62, %61 ]
  %51 = icmp slt i32 %j.1, 1
  br i1 %51, label %52, label %63

; <label>:52                                      ; preds = %50
  %53 = getelementptr inbounds [9 x [1 x i16]]* @g_116, i32 0, i32 %i.2
  %54 = getelementptr inbounds [1 x i16]* %53, i32 0, i32 %j.1
  %55 = load i16* %54, align 2
  %56 = zext i16 %55 to i64
  call void @transparent_crc(i64 %56, i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0), i32 0) #2
  %57 = icmp ne i32 0, 0
  br i1 %57, label %58, label %60

; <label>:58                                      ; preds = %52
  %59 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str3, i32 0, i32 0), i32 %i.2, i32 %j.1) #2
  br label %60

; <label>:60                                      ; preds = %58, %52
  br label %61

; <label>:61                                      ; preds = %60
  %62 = add nsw i32 %j.1, 1
  br label %50

; <label>:63                                      ; preds = %50
  br label %64

; <label>:64                                      ; preds = %63
  %65 = add nsw i32 %i.2, 1
  br label %47

; <label>:66                                      ; preds = %47
  %67 = load i32* @crc32_context, align 4
  %68 = xor i32 %67, -1
  %69 = call i32 @platform_main_end(i32 %68, i32 0) #2
  ret i32 %69
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
  store i32 0, i32* @g_2, align 4
  br label %8

; <label>:8                                       ; preds = %457, %7
  %l_60.0 = phi i32 [ -1, %7 ], [ %l_60.3, %457 ]
  %9 = load i32* @g_2, align 4
  %10 = icmp sgt i32 %9, -8
  br i1 %10, label %11, label %460

; <label>:11                                      ; preds = %8
  %12 = trunc i32 831346710 to i16
  %13 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %12, i32 1) #2
  %14 = icmp ne i16 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %11
  %16 = or i32 831346710, -9
  br label %456

; <label>:17                                      ; preds = %11
  br label %18

; <label>:18                                      ; preds = %22, %17
  %i1.0 = phi i32 [ 0, %17 ], [ %23, %22 ]
  %19 = icmp slt i32 %i1.0, 2
  br i1 %19, label %20, label %24

; <label>:20                                      ; preds = %18
  %21 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %i1.0
  store i32 5790591, i32* %21, align 4
  br label %22

; <label>:22                                      ; preds = %20
  %23 = add nsw i32 %i1.0, 1
  br label %18

; <label>:24                                      ; preds = %18
  br label %25

; <label>:25                                      ; preds = %428, %24
  %l_110.0 = phi i32 [ 0, %24 ], [ %l_110.1, %428 ]
  %l_7.0 = phi i32 [ 0, %24 ], [ %429, %428 ]
  %l_60.1 = phi i32 [ %l_60.0, %24 ], [ %l_60.2, %428 ]
  %26 = icmp sle i32 %l_7.0, 1
  br i1 %26, label %27, label %430

; <label>:27                                      ; preds = %25
  %28 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %l_7.0
  %29 = load i32* %28, align 4
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* @g_12, align 1
  %31 = load i8* @g_12, align 1
  %32 = zext i8 %31 to i16
  %33 = load i8* @g_12, align 1
  %34 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 1
  %35 = load i32* %34, align 4
  %36 = load i32* @g_2, align 4
  %37 = call signext i8 @func_19(i16 signext %32, i8 signext %33, i32 %35, i32 %36) #2
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %65

; <label>:40                                      ; preds = %27
  %41 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 4, i32 3), align 4
  %42 = trunc i32 %41 to i8
  %43 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %44 = trunc i32 %43 to i16
  %45 = load i8* @g_12, align 1
  %46 = zext i8 %45 to i32
  %47 = call signext i16 @func_39(i16 signext %44, i32 %46) #2
  %48 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %49 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %47, i32 %48) #2
  %50 = sext i16 %49 to i32
  %51 = xor i32 %50, 205
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* @g_12, align 1
  %53 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %42, i8 signext %52) #2
  %54 = sext i8 %53 to i16
  %55 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %l_7.0
  %56 = load i32* %55, align 4
  %57 = trunc i32 %56 to i16
  %58 = load i32* @g_2, align 4
  %59 = trunc i32 %58 to i8
  %60 = call zeroext i16 @func_24(i16 zeroext %54, i32 %l_7.0, i16 zeroext %57, i8 signext %59) #2
  %61 = zext i16 %60 to i32
  %62 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 6, i32 3), align 4
  %63 = icmp uge i32 %61, %62
  %64 = zext i1 %63 to i32
  br label %65

; <label>:65                                      ; preds = %40, %27
  %l_45.0 = phi i32 [ %51, %40 ], [ -10, %27 ]
  %66 = phi i1 [ false, %27 ], [ true, %40 ]
  %67 = zext i1 %66 to i32
  %68 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %69 = load i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = icmp ugt i32 %70, -6
  %72 = zext i1 %71 to i32
  %73 = call i32 @safe_sub_func_int32_t_s_s(i32 %72, i32 -384561695) #2
  %74 = trunc i32 %73 to i8
  %75 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %74, i8 signext -78) #2
  %76 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -49, i8 signext %75) #2
  %77 = sext i8 %76 to i32
  %78 = icmp ule i32 %77, -863199469
  %79 = zext i1 %78 to i32
  %80 = load i32* @g_2, align 4
  %81 = icmp slt i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = trunc i32 %82 to i16
  %84 = load i32* @g_2, align 4
  %85 = trunc i32 %84 to i16
  %86 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %83, i16 zeroext %85) #2
  %87 = icmp ne i16 %86, 0
  br i1 %87, label %88, label %112

; <label>:88                                      ; preds = %65
  store i8 0, i8* @g_12, align 1
  br label %89

; <label>:89                                      ; preds = %106, %88
  %90 = load i8* @g_12, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp sle i32 %91, 1
  br i1 %92, label %93, label %.loopexit

; <label>:93                                      ; preds = %89
  %94 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 5), align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

; <label>:96                                      ; preds = %93
  br label %111

; <label>:97                                      ; preds = %93
  %98 = load i32* @g_44, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %97
  br label %111

; <label>:101                                     ; preds = %97
  %102 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %101
  br label %106

; <label>:105                                     ; preds = %101
  br label %106

; <label>:106                                     ; preds = %105, %104
  %107 = load i8* @g_12, align 1
  %108 = zext i8 %107 to i32
  %109 = add nsw i32 %108, 1
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* @g_12, align 1
  br label %89

.loopexit:                                        ; preds = %89
  br label %111

; <label>:111                                     ; preds = %.loopexit, %100, %96
  br label %184

; <label>:112                                     ; preds = %65
  %113 = load i8* @g_12, align 1
  %114 = zext i8 %113 to i32
  %115 = or i32 -1, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %159

; <label>:117                                     ; preds = %112
  %118 = load i8* @g_12, align 1
  %119 = zext i8 %118 to i32
  %120 = load i32* @g_44, align 4
  %121 = load i8* @g_12, align 1
  %122 = load i32* @g_44, align 4
  %123 = icmp ule i32 -1627762983, %122
  %124 = zext i1 %123 to i32
  %125 = load i32* @g_44, align 4
  %126 = trunc i32 %125 to i16
  %127 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 1
  %128 = load i32* %127, align 4
  %129 = trunc i32 %128 to i16
  %130 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %126, i16 zeroext %129) #2
  %131 = zext i16 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

; <label>:133                                     ; preds = %117
  %134 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %135 = load i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br label %137

; <label>:137                                     ; preds = %133, %117
  %138 = phi i1 [ false, %117 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  %140 = xor i32 %l_7.0, 2
  %141 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 2, i32 5), align 4
  %142 = icmp ule i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = icmp sle i32 %124, %143
  %145 = zext i1 %144 to i32
  %146 = or i32 %145, %l_7.0
  %147 = load i32* @g_44, align 4
  %148 = and i32 %146, %147
  %149 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 6, i32 5), align 4
  %150 = icmp ule i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = trunc i32 %151 to i16
  %153 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %152, i16 signext 0) #2
  %154 = sext i16 %153 to i32
  %155 = icmp sle i32 %119, %154
  %156 = zext i1 %155 to i32
  %157 = xor i32 -3, %156
  %158 = icmp ne i32 %157, 0
  br label %159

; <label>:159                                     ; preds = %137, %112
  %160 = phi i1 [ false, %112 ], [ %158, %137 ]
  %161 = zext i1 %160 to i32
  %162 = trunc i32 %161 to i16
  %163 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %162, i32 11) #2
  %164 = zext i16 %163 to i32
  %165 = load i32* @g_44, align 4
  %166 = xor i32 %164, %165
  %167 = and i32 %166, 76
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

; <label>:169                                     ; preds = %159
  %170 = load i32* @g_2, align 4
  %171 = icmp ne i32 %170, 0
  br label %172

; <label>:172                                     ; preds = %169, %159
  %173 = phi i1 [ true, %159 ], [ %171, %169 ]
  %174 = zext i1 %173 to i32
  %175 = icmp sgt i32 %174, %l_7.0
  %176 = zext i1 %175 to i32
  %177 = trunc i32 %176 to i16
  %178 = trunc i32 %l_7.0 to i16
  %179 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %177, i16 zeroext %178) #2
  %180 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %179, i32 -3) #2
  %181 = zext i16 %180 to i32
  %182 = icmp sle i32 %181, 186
  %183 = zext i1 %182 to i32
  store i32 %183, i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  br label %184

; <label>:184                                     ; preds = %172, %111
  %l_60.2 = phi i32 [ %l_60.1, %111 ], [ %183, %172 ]
  %185 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 0
  %186 = load i32* %185, align 4
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %189 = load i32* %188, align 4
  %190 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %191 = load i32* %190, align 4
  %192 = icmp uge i32 %189, %191
  %193 = zext i1 %192 to i32
  %194 = trunc i32 %193 to i16
  %195 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %194, i32 12) #2
  %196 = zext i16 %195 to i32
  %197 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %187, i32 %196) #2
  %198 = sext i8 %197 to i32
  %199 = load i8* @g_12, align 1
  %200 = xor i32 %198, 1
  %201 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 5, i32 5), align 4
  %202 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 0
  %203 = load i32* %202, align 4
  %204 = load i32* @g_44, align 4
  %205 = trunc i32 %204 to i16
  %206 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 3, i32 1), align 4
  %207 = trunc i32 %206 to i16
  %208 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %205, i16 signext %207) #2
  %209 = sext i16 %208 to i32
  %210 = icmp sgt i32 %203, %209
  %211 = zext i1 %210 to i32
  %212 = icmp slt i32 %211, %l_7.0
  %213 = zext i1 %212 to i32
  %214 = trunc i32 %213 to i16
  %215 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %214, i32 9) #2
  %216 = zext i16 %215 to i32
  %217 = and i32 %201, %216
  %218 = xor i32 %l_45.0, %217
  %219 = trunc i32 %218 to i8
  %220 = load i32* @g_44, align 4
  %221 = trunc i32 %220 to i8
  %222 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %219, i8 zeroext %221) #2
  %223 = zext i8 %222 to i32
  %224 = load i8* @g_12, align 1
  %225 = zext i8 %224 to i32
  %226 = and i32 %223, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

; <label>:228                                     ; preds = %184
  %229 = sext i8 -124 to i32
  %230 = icmp ne i32 %229, 0
  br label %231

; <label>:231                                     ; preds = %228, %184
  %232 = phi i1 [ false, %184 ], [ %230, %228 ]
  %233 = zext i1 %232 to i32
  %234 = icmp sle i32 %200, %233
  %235 = zext i1 %234 to i32
  %236 = trunc i32 %235 to i16
  %237 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 1
  %238 = load i32* %237, align 4
  %239 = trunc i32 %238 to i16
  %240 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %236, i16 zeroext %239) #2
  %241 = zext i16 %240 to i32
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

; <label>:243                                     ; preds = %231
  br label %244

; <label>:244                                     ; preds = %243, %231
  %245 = phi i1 [ false, %231 ], [ true, %243 ]
  %246 = zext i1 %245 to i32
  store i32 %246, i32* @g_77, align 4
  br label %247

; <label>:247                                     ; preds = %258, %244
  %l_74.0 = phi i32 [ 1, %244 ], [ %259, %258 ]
  %248 = icmp sge i32 %l_74.0, 0
  br i1 %248, label %249, label %260

; <label>:249                                     ; preds = %247
  %250 = trunc i32 %l_60.2 to i8
  %251 = load i32* @g_2, align 4
  %252 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 4, i32 5), align 4
  %253 = icmp ugt i32 %251, %252
  %254 = zext i1 %253 to i32
  %255 = trunc i32 %254 to i8
  %256 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %250, i8 signext %255) #2
  %257 = sext i8 %256 to i32
  store i32 %257, i32* @g_77, align 4
  br label %258

; <label>:258                                     ; preds = %249
  %259 = sub nsw i32 %l_74.0, 1
  br label %247

; <label>:260                                     ; preds = %247
  %261 = load i32* @g_77, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %331

; <label>:263                                     ; preds = %260
  %264 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %265 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 0, i32 2), align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %276

; <label>:267                                     ; preds = %263
  %268 = icmp ne i32 1, %l_7.0
  %269 = zext i1 %268 to i32
  %270 = or i32 %269, 64930
  %271 = trunc i32 %270 to i8
  %272 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %271, i32 0) #2
  %273 = zext i8 %272 to i16
  store i16 %273, i16* @g_113, align 2
  %274 = sext i16 %273 to i32
  %275 = icmp ne i32 %274, 0
  br label %276

; <label>:276                                     ; preds = %267, %263
  %277 = phi i1 [ false, %263 ], [ %275, %267 ]
  %278 = zext i1 %277 to i32
  store i32 %278, i32* @g_77, align 4
  br i1 %277, label %282, label %279

; <label>:279                                     ; preds = %276
  %280 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %281 = icmp ne i32 %280, 0
  br label %282

; <label>:282                                     ; preds = %279, %276
  %283 = phi i1 [ true, %276 ], [ %281, %279 ]
  %284 = zext i1 %283 to i32
  %285 = trunc i32 %284 to i8
  %286 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %285, i8 zeroext -7) #2
  %287 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %288 = icmp ne i32 %287, 0
  %289 = xor i1 %288, true
  %290 = zext i1 %289 to i32
  %291 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  %292 = icmp slt i32 %290, %291
  %293 = zext i1 %292 to i32
  %294 = trunc i32 %293 to i8
  %295 = trunc i32 %l_74.0 to i8
  %296 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %294, i8 signext %295) #2
  %297 = sext i8 %296 to i32
  %298 = icmp sge i32 %297, -10
  %299 = zext i1 %298 to i32
  %300 = trunc i32 %265 to i8
  %301 = trunc i32 %l_7.0 to i8
  %302 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %300, i8 signext %301) #2
  %303 = load i32* @g_114, align 4
  %304 = trunc i32 %303 to i8
  %305 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %302, i8 signext %304) #2
  %306 = sext i8 %305 to i32
  %307 = zext i16 17530 to i32
  %308 = icmp eq i32 %306, %307
  %309 = zext i1 %308 to i32
  %310 = icmp ult i32 %264, %309
  %311 = zext i1 %310 to i32
  %312 = icmp sgt i32 %311, %l_7.0
  %313 = zext i1 %312 to i32
  %314 = icmp sgt i32 %l_7.0, -9
  %315 = zext i1 %314 to i32
  %316 = trunc i32 %315 to i8
  %317 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %l_7.0
  %318 = load i32* %317, align 4
  %319 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %316, i32 %318) #2
  %320 = zext i8 %319 to i32
  %321 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %322 = load i32* %321, align 4
  %323 = and i32 %320, %322
  %324 = trunc i32 %323 to i16
  %325 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %324, i32 %l_7.0) #2
  %326 = zext i16 %325 to i32
  %327 = icmp ule i32 0, %326
  %328 = zext i1 %327 to i32
  %329 = zext i16 17530 to i32
  %330 = icmp ne i32 %328, %329
  br label %331

; <label>:331                                     ; preds = %282, %260
  %l_110.1 = phi i32 [ %265, %282 ], [ %l_110.0, %260 ]
  %332 = phi i1 [ false, %260 ], [ %330, %282 ]
  %333 = zext i1 %332 to i32
  %334 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 0, i32 5), align 4
  %335 = icmp ugt i32 %333, %334
  %336 = zext i1 %335 to i32
  %337 = icmp sle i32 %336, %l_7.0
  %338 = zext i1 %337 to i32
  %339 = trunc i32 %338 to i16
  %340 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %339, i32 1) #2
  %341 = sext i16 %340 to i32
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %346

; <label>:343                                     ; preds = %331
  %344 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 0), align 4
  %345 = icmp ne i32 %344, 0
  br label %346

; <label>:346                                     ; preds = %343, %331
  %347 = phi i1 [ false, %331 ], [ %345, %343 ]
  %348 = zext i1 %347 to i32
  %349 = trunc i32 %348 to i16
  %350 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %351 = load i32* %350, align 4
  %352 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %349, i32 %351) #2
  %353 = zext i16 %352 to i32
  %354 = load i32* @g_2, align 4
  %355 = icmp sle i32 %353, %354
  %356 = zext i1 %355 to i32
  %357 = load i32* @g_2, align 4
  %358 = icmp sle i32 %356, %357
  %359 = zext i1 %358 to i32
  %360 = or i32 %359, %l_7.0
  %361 = icmp sle i32 %l_7.0, %360
  %362 = zext i1 %361 to i32
  %363 = icmp sgt i32 %362, 1
  %364 = zext i1 %363 to i32
  %365 = call i32 @safe_add_func_uint32_t_u_u(i32 -989156845, i32 %364) #2
  %366 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 2
  %367 = load i32* %366, align 4
  %368 = or i32 %365, %367
  %369 = trunc i32 %368 to i8
  %370 = zext i16 17530 to i32
  %371 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %369, i32 %370) #2
  %372 = zext i8 %371 to i32
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %375, label %374

; <label>:374                                     ; preds = %346
  br label %375

; <label>:375                                     ; preds = %374, %346
  %376 = phi i1 [ true, %346 ], [ true, %374 ]
  %377 = zext i1 %376 to i32
  %378 = icmp sgt i32 %377, -1
  %379 = zext i1 %378 to i32
  %380 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 1), align 4
  %381 = and i32 %379, %380
  %382 = trunc i32 %381 to i16
  store i16 %382, i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 2, i32 0), align 2
  %383 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %382, i32 13) #2
  %384 = zext i16 %383 to i32
  %385 = or i32 %384, 1
  %386 = icmp sge i32 %385, %218
  %387 = zext i1 %386 to i32
  %388 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %l_7.0
  %389 = load i32* %388, align 4
  %390 = icmp slt i32 %l_110.1, %389
  %391 = zext i1 %390 to i32
  %392 = trunc i32 %391 to i8
  %393 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  %394 = trunc i32 %393 to i8
  %395 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %392, i8 signext %394) #2
  %396 = sext i8 %395 to i32
  %397 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %l_7.0
  %398 = load i32* %397, align 4
  %399 = icmp eq i32 %396, %398
  %400 = zext i1 %399 to i32
  %401 = load i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 7, i32 0), align 2
  %402 = zext i16 %401 to i32
  %403 = or i32 0, %402
  %404 = trunc i32 %403 to i8
  %405 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %404, i8 zeroext -1) #2
  %406 = zext i8 %405 to i32
  %407 = icmp sle i32 %406, 438154418
  br i1 %407, label %408, label %411

; <label>:408                                     ; preds = %375
  %409 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  %410 = icmp ne i32 %409, 0
  br label %411

; <label>:411                                     ; preds = %408, %375
  %412 = phi i1 [ false, %375 ], [ %410, %408 ]
  %413 = zext i1 %412 to i32
  %414 = trunc i32 %413 to i16
  %415 = trunc i32 0 to i16
  %416 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %414, i16 zeroext %415) #2
  %417 = zext i16 %416 to i32
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %423, label %419

; <label>:419                                     ; preds = %411
  %420 = load i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 2, i32 0), align 2
  %421 = zext i16 %420 to i32
  %422 = icmp ne i32 %421, 0
  br label %423

; <label>:423                                     ; preds = %419, %411
  %424 = phi i1 [ true, %411 ], [ %422, %419 ]
  %425 = zext i1 %424 to i32
  %426 = or i32 %425, 438154418
  %427 = or i32 0, %426
  br label %428

; <label>:428                                     ; preds = %423
  %429 = add nsw i32 %l_7.0, 1
  br label %25

; <label>:430                                     ; preds = %25
  %431 = and i32 %l_110.0, 255
  store i32 0, i32* @g_77, align 4
  %432 = load i8* @g_12, align 1
  %433 = zext i8 %432 to i32
  %434 = zext i16 17530 to i32
  %435 = icmp sle i32 %434, -7
  %436 = zext i1 %435 to i32
  %437 = and i32 %436, 1
  %438 = icmp sgt i32 %433, %437
  %439 = zext i1 %438 to i32
  %440 = call i32 @safe_sub_func_int32_t_s_s(i32 %439, i32 %l_110.0) #2
  %441 = call i32 @safe_div_func_int32_t_s_s(i32 0, i32 %440) #2
  %442 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %443 = and i32 %442, %441
  store i32 %443, i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %444 = xor i32 %l_60.1, %443
  %445 = icmp ult i32 %431, %444
  %446 = zext i1 %445 to i32
  %447 = load i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 7, i32 0), align 2
  %448 = zext i16 %447 to i32
  %449 = and i32 %448, %446
  %450 = trunc i32 %449 to i16
  store i16 %450, i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 7, i32 0), align 2
  %451 = zext i16 %450 to i32
  %452 = icmp slt i32 %451, 5441
  %453 = zext i1 %452 to i32
  %454 = load i32* @g_114, align 4
  %455 = and i32 %454, %453
  store i32 %455, i32* @g_114, align 4
  br label %456

; <label>:456                                     ; preds = %430, %15
  %l_60.3 = phi i32 [ %l_60.0, %15 ], [ %l_60.1, %430 ]
  br label %457

; <label>:457                                     ; preds = %456
  %458 = load i32* @g_2, align 4
  %459 = add nsw i32 %458, -1
  store i32 %459, i32* @g_2, align 4
  br label %8

; <label>:460                                     ; preds = %8
  %461 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %462 = load i32* %461, align 4
  %463 = trunc i32 %462 to i8
  ret i8 %463
}

; Function Attrs: noinline nounwind
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  call void @crc32_8bytes(i64 %val) #2
  %1 = icmp ne i32 %flag, 0
  br i1 %1, label %2, label %6

; <label>:2                                       ; preds = %0
  %3 = load i32* @crc32_context, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str12, i32 0, i32 0), i8* %vname, i32 %4) #2
  br label %6

; <label>:6                                       ; preds = %2, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str11, i32 0, i32 0), i32 %crc) #2
  ret i32 %crc
}

; Function Attrs: noinline nounwind
define internal void @crc32_8bytes(i64 %val) #0 {
  %1 = lshr i64 %val, 0
  %2 = and i64 %1, 255
  %3 = trunc i64 %2 to i8
  call void @crc32_byte(i8 zeroext %3) #2
  %4 = lshr i64 %val, 8
  %5 = and i64 %4, 255
  %6 = trunc i64 %5 to i8
  call void @crc32_byte(i8 zeroext %6) #2
  %7 = lshr i64 %val, 16
  %8 = and i64 %7, 255
  %9 = trunc i64 %8 to i8
  call void @crc32_byte(i8 zeroext %9) #2
  %10 = lshr i64 %val, 24
  %11 = and i64 %10, 255
  %12 = trunc i64 %11 to i8
  call void @crc32_byte(i8 zeroext %12) #2
  %13 = lshr i64 %val, 32
  %14 = and i64 %13, 255
  %15 = trunc i64 %14 to i8
  call void @crc32_byte(i8 zeroext %15) #2
  %16 = lshr i64 %val, 40
  %17 = and i64 %16, 255
  %18 = trunc i64 %17 to i8
  call void @crc32_byte(i8 zeroext %18) #2
  %19 = lshr i64 %val, 48
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  call void @crc32_byte(i8 zeroext %21) #2
  %22 = lshr i64 %val, 56
  %23 = and i64 %22, 255
  %24 = trunc i64 %23 to i8
  call void @crc32_byte(i8 zeroext %24) #2
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
define internal zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = icmp slt i32 %right, 0
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp sge i32 %right, 32
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %2, %0
  %5 = zext i16 %left to i32
  br label %9

; <label>:6                                       ; preds = %2
  %7 = zext i16 %left to i32
  %8 = ashr i32 %7, %right
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  %11 = trunc i32 %10 to i16
  ret i16 %11
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
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = sext i8 %si1 to i32
  %2 = sext i8 %si2 to i32
  %3 = mul nsw i32 %1, %2
  %4 = trunc i32 %3 to i8
  ret i8 %4
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
define internal signext i8 @func_19(i16 signext %p_20, i8 signext %p_21, i32 %p_22, i32 %p_23) #0 {
  %1 = load i32* @g_2, align 4
  %2 = trunc i32 %1 to i16
  %3 = load i8* @g_12, align 1
  %4 = zext i8 %3 to i32
  %5 = trunc i32 -1901935715 to i16
  %6 = trunc i32 %p_22 to i8
  %7 = call zeroext i16 @func_24(i16 zeroext %2, i32 %4, i16 zeroext %5, i8 signext %6) #2
  %8 = xor i32 -1901935715, -1
  %9 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %10 = xor i32 %9, 5680
  store i32 %10, i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %11 = icmp ule i32 %8, %10
  %12 = zext i1 %11 to i32
  %13 = icmp ne i32 -1, %12
  %14 = zext i1 %13 to i32
  %15 = icmp ult i32 %p_22, %14
  %16 = zext i1 %15 to i32
  %17 = xor i32 %16, -1
  %18 = xor i32 %17, -1
  %19 = or i32 %18, -1901935715
  %20 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 5, i32 1), align 4
  %21 = load i32* @g_2, align 4
  %22 = xor i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %0
  %25 = icmp ne i32 %p_23, 0
  br label %26

; <label>:26                                      ; preds = %24, %0
  %27 = phi i1 [ false, %0 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  %29 = icmp uge i32 %28, %p_22
  %30 = zext i1 %29 to i32
  %31 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %32 = trunc i32 %31 to i8
  ret i8 %32
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @func_24(i16 zeroext %p_25, i32 %p_26, i16 zeroext %p_27, i8 signext %p_28) #0 {
  ret i16 24226
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
define internal zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = zext i16 %ui1 to i32
  %2 = zext i16 %ui2 to i32
  %3 = add nsw i32 %1, %2
  %4 = trunc i32 %3 to i16
  ret i16 %4
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
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = sext i16 %si1 to i32
  %2 = sext i16 %si2 to i32
  %3 = mul nsw i32 %1, %2
  %4 = trunc i32 %3 to i16
  ret i16 %4
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
define internal zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = zext i8 %ui1 to i32
  %2 = zext i8 %ui2 to i32
  %3 = sub nsw i32 %1, %2
  %4 = trunc i32 %3 to i8
  ret i8 %4
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
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = add i32 %ui1, %ui2
  ret i32 %1
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

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
