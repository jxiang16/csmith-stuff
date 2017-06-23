; ModuleID = 'delete0.prelto.1.bc'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %checksum = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 4
  store i32 0, i32* %print_hash_value, align 4
  call void @platform_main_begin() #2
  call void @crc32_gentab() #2
  %4 = call signext i8 @func_1() #2
  %5 = load i32* @g_2, align 4
  %6 = sext i32 %5 to i64
  %7 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %6, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %7) #2
  %8 = load i8* @g_12, align 1
  %9 = zext i8 %8 to i64
  %10 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %9, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 %10) #2
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %37, %0
  %12 = load i32* %i, align 4
  %13 = icmp slt i32 %12, 7
  br i1 %13, label %14, label %40

; <label>:14                                      ; preds = %11
  store i32 0, i32* %j, align 4
  br label %15

; <label>:15                                      ; preds = %33, %14
  %16 = load i32* %j, align 4
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %18, label %36

; <label>:18                                      ; preds = %15
  %19 = load i32* %j, align 4
  %20 = load i32* %i, align 4
  %21 = getelementptr inbounds [7 x [6 x i32]]* @g_34, i32 0, i32 %20
  %22 = getelementptr inbounds [6 x i32]* %21, i32 0, i32 %19
  %23 = load i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %24, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), i32 %25) #2
  %26 = load i32* %print_hash_value, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

; <label>:28                                      ; preds = %18
  %29 = load i32* %i, align 4
  %30 = load i32* %j, align 4
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str3, i32 0, i32 0), i32 %29, i32 %30) #2
  br label %32

; <label>:32                                      ; preds = %28, %18
  br label %33

; <label>:33                                      ; preds = %32
  %34 = load i32* %j, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %j, align 4
  br label %15

; <label>:36                                      ; preds = %15
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load i32* %i, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %i, align 4
  br label %11

; <label>:40                                      ; preds = %11
  %41 = load i32* @g_44, align 4
  %42 = sext i32 %41 to i64
  %43 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %42, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 %43) #2
  store i32 0, i32* %i, align 4
  br label %44

; <label>:44                                      ; preds = %59, %40
  %45 = load i32* %i, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %62

; <label>:47                                      ; preds = %44
  %48 = load i32* %i, align 4
  %49 = getelementptr inbounds [3 x i32]* @g_61, i32 0, i32 %48
  %50 = load i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %51, i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0), i32 %52) #2
  %53 = load i32* %print_hash_value, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

; <label>:55                                      ; preds = %47
  %56 = load i32* %i, align 4
  %57 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str6, i32 0, i32 0), i32 %56) #2
  br label %58

; <label>:58                                      ; preds = %55, %47
  br label %59

; <label>:59                                      ; preds = %58
  %60 = load i32* %i, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %i, align 4
  br label %44

; <label>:62                                      ; preds = %44
  %63 = load i32* @g_77, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %64, i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i32 %65) #2
  %66 = load i16* @g_113, align 2
  %67 = sext i16 %66 to i64
  %68 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %67, i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i32 %68) #2
  %69 = load i32* @g_114, align 4
  %70 = sext i32 %69 to i64
  %71 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %70, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 %71) #2
  store i32 0, i32* %i, align 4
  br label %72

; <label>:72                                      ; preds = %98, %62
  %73 = load i32* %i, align 4
  %74 = icmp slt i32 %73, 9
  br i1 %74, label %75, label %101

; <label>:75                                      ; preds = %72
  store i32 0, i32* %j, align 4
  br label %76

; <label>:76                                      ; preds = %94, %75
  %77 = load i32* %j, align 4
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %97

; <label>:79                                      ; preds = %76
  %80 = load i32* %j, align 4
  %81 = load i32* %i, align 4
  %82 = getelementptr inbounds [9 x [1 x i16]]* @g_116, i32 0, i32 %81
  %83 = getelementptr inbounds [1 x i16]* %82, i32 0, i32 %80
  %84 = load i16* %83, align 2
  %85 = zext i16 %84 to i64
  %86 = load i32* %print_hash_value, align 4
  call void @transparent_crc(i64 %85, i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0), i32 %86) #2
  %87 = load i32* %print_hash_value, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

; <label>:89                                      ; preds = %79
  %90 = load i32* %i, align 4
  %91 = load i32* %j, align 4
  %92 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str3, i32 0, i32 0), i32 %90, i32 %91) #2
  br label %93

; <label>:93                                      ; preds = %89, %79
  br label %94

; <label>:94                                      ; preds = %93
  %95 = load i32* %j, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %j, align 4
  br label %76

; <label>:97                                      ; preds = %76
  br label %98

; <label>:98                                      ; preds = %97
  %99 = load i32* %i, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %i, align 4
  br label %72

; <label>:101                                     ; preds = %72
  %102 = load i32* @crc32_context, align 4
  %103 = xor i32 %102, -1
  %104 = load i32* %print_hash_value, align 4
  %105 = call i32 @platform_main_end(i32 %103, i32 %104) #2
  store i32 %105, i32* %checksum, align 4
  %106 = load i32* %checksum, align 4
  ret i32 %106
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
define internal signext i8 @func_1() #0 {
  %l_46 = alloca [4 x i32], align 4
  %l_60 = alloca i32, align 4
  %l_76 = alloca i8, align 1
  %i = alloca i32, align 4
  %l_7 = alloca i32, align 4
  %l_110 = alloca i32, align 4
  %l_118 = alloca i32, align 4
  %l_8 = alloca i32, align 4
  %l_9 = alloca [2 x i32], align 4
  %l_74 = alloca i32, align 4
  %l_75 = alloca i32, align 4
  %l_115 = alloca i16, align 2
  %l_117 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %l_45 = alloca i32, align 4
  %l_119 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %l_55 = alloca i32, align 4
  store i32 -1, i32* %l_60, align 4
  store i8 -124, i8* %l_76, align 1
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %7, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 4
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %1
  %5 = load i32* %i, align 4
  %6 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 %5
  store i32 4, i32* %6, align 4
  br label %7

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %i, align 4
  br label %1

; <label>:10                                      ; preds = %1
  store i32 0, i32* @g_2, align 4
  br label %11

; <label>:11                                      ; preds = %510, %10
  %12 = load i32* @g_2, align 4
  %13 = icmp sgt i32 %12, -8
  br i1 %13, label %14, label %513

; <label>:14                                      ; preds = %11
  store i32 831346710, i32* %l_7, align 4
  store i32 0, i32* %l_110, align 4
  store i32 0, i32* %l_118, align 4
  %15 = load i32* %l_7, align 4
  %16 = trunc i32 %15 to i16
  %17 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %16, i32 1) #2
  %18 = icmp ne i16 %17, 0
  br i1 %18, label %19, label %23

; <label>:19                                      ; preds = %14
  store i32 -9, i32* %l_8, align 4
  %20 = load i32* %l_8, align 4
  %21 = load i32* %l_7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %l_7, align 4
  br label %509

; <label>:23                                      ; preds = %14
  store i32 1, i32* %l_74, align 4
  store i32 1, i32* %l_75, align 4
  store i16 17530, i16* %l_115, align 2
  store i32 438154418, i32* %l_117, align 4
  store i32 0, i32* %i1, align 4
  br label %24

; <label>:24                                      ; preds = %30, %23
  %25 = load i32* %i1, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %33

; <label>:27                                      ; preds = %24
  %28 = load i32* %i1, align 4
  %29 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %28
  store i32 5790591, i32* %29, align 4
  br label %30

; <label>:30                                      ; preds = %27
  %31 = load i32* %i1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i1, align 4
  br label %24

; <label>:33                                      ; preds = %24
  store i32 0, i32* %l_7, align 4
  br label %34

; <label>:34                                      ; preds = %475, %33
  %35 = load i32* %l_7, align 4
  %36 = icmp sle i32 %35, 1
  br i1 %36, label %37, label %478

; <label>:37                                      ; preds = %34
  store i32 -10, i32* %l_45, align 4
  store i32 0, i32* %l_119, align 4
  %38 = load i32* %l_7, align 4
  %39 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %38
  %40 = load i32* %39, align 4
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* @g_12, align 1
  %42 = load i8* @g_12, align 1
  %43 = zext i8 %42 to i16
  %44 = load i8* @g_12, align 1
  %45 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 1
  %46 = load i32* %45, align 4
  %47 = load i32* @g_2, align 4
  %48 = call signext i8 @func_19(i16 signext %43, i8 signext %44, i32 %46, i32 %47) #2
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

; <label>:51                                      ; preds = %37
  %52 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 4, i32 3), align 4
  %53 = trunc i32 %52 to i8
  %54 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %55 = trunc i32 %54 to i16
  %56 = load i8* @g_12, align 1
  %57 = zext i8 %56 to i32
  %58 = call signext i16 @func_39(i16 signext %55, i32 %57) #2
  %59 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %60 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %58, i32 %59) #2
  %61 = sext i16 %60 to i32
  %62 = xor i32 %61, 205
  store i32 %62, i32* %l_45, align 4
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* @g_12, align 1
  %64 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %53, i8 signext %63) #2
  %65 = sext i8 %64 to i16
  %66 = load i32* %l_7, align 4
  %67 = load i32* %l_7, align 4
  %68 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %67
  %69 = load i32* %68, align 4
  %70 = trunc i32 %69 to i16
  %71 = load i32* @g_2, align 4
  %72 = trunc i32 %71 to i8
  %73 = call zeroext i16 @func_24(i16 zeroext %65, i32 %66, i16 zeroext %70, i8 signext %72) #2
  %74 = zext i16 %73 to i32
  %75 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 6, i32 3), align 4
  %76 = icmp uge i32 %74, %75
  %77 = zext i1 %76 to i32
  br label %78

; <label>:78                                      ; preds = %51, %37
  %79 = phi i1 [ false, %37 ], [ true, %51 ]
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %82 = load i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = icmp ugt i32 %83, -6
  %85 = zext i1 %84 to i32
  %86 = call i32 @safe_sub_func_int32_t_s_s(i32 %85, i32 -384561695) #2
  %87 = trunc i32 %86 to i8
  %88 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %87, i8 signext -78) #2
  %89 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -49, i8 signext %88) #2
  %90 = sext i8 %89 to i32
  %91 = icmp ule i32 %90, -863199469
  %92 = zext i1 %91 to i32
  %93 = load i32* @g_2, align 4
  %94 = icmp slt i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = trunc i32 %95 to i16
  %97 = load i32* @g_2, align 4
  %98 = trunc i32 %97 to i16
  %99 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %96, i16 zeroext %98) #2
  %100 = icmp ne i16 %99, 0
  br i1 %100, label %101, label %125

; <label>:101                                     ; preds = %78
  store i8 0, i8* @g_12, align 1
  br label %102

; <label>:102                                     ; preds = %119, %101
  %103 = load i8* @g_12, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp sle i32 %104, 1
  br i1 %105, label %106, label %124

; <label>:106                                     ; preds = %102
  %107 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 5), align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

; <label>:109                                     ; preds = %106
  br label %124

; <label>:110                                     ; preds = %106
  %111 = load i32* @g_44, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

; <label>:113                                     ; preds = %110
  br label %124

; <label>:114                                     ; preds = %110
  %115 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %114
  br label %119

; <label>:118                                     ; preds = %114
  br label %119

; <label>:119                                     ; preds = %118, %117
  %120 = load i8* @g_12, align 1
  %121 = zext i8 %120 to i32
  %122 = add nsw i32 %121, 1
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* @g_12, align 1
  br label %102

; <label>:124                                     ; preds = %113, %109, %102
  br label %203

; <label>:125                                     ; preds = %78
  store i32 -3, i32* %l_55, align 4
  %126 = load i8* @g_12, align 1
  %127 = zext i8 %126 to i32
  %128 = or i32 -1, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %175

; <label>:130                                     ; preds = %125
  %131 = load i32* %l_55, align 4
  %132 = load i8* @g_12, align 1
  %133 = zext i8 %132 to i32
  %134 = load i32* @g_44, align 4
  %135 = load i8* @g_12, align 1
  %136 = load i32* @g_44, align 4
  %137 = icmp ule i32 -1627762983, %136
  %138 = zext i1 %137 to i32
  %139 = load i32* @g_44, align 4
  %140 = trunc i32 %139 to i16
  %141 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 1
  %142 = load i32* %141, align 4
  %143 = trunc i32 %142 to i16
  %144 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %140, i16 zeroext %143) #2
  %145 = zext i16 %144 to i32
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

; <label>:147                                     ; preds = %130
  %148 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %149 = load i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br label %151

; <label>:151                                     ; preds = %147, %130
  %152 = phi i1 [ false, %130 ], [ %150, %147 ]
  %153 = zext i1 %152 to i32
  %154 = load i32* %l_7, align 4
  %155 = xor i32 %154, 2
  %156 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 2, i32 5), align 4
  %157 = icmp ule i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = icmp sle i32 %138, %158
  %160 = zext i1 %159 to i32
  %161 = load i32* %l_7, align 4
  %162 = or i32 %160, %161
  %163 = load i32* @g_44, align 4
  %164 = and i32 %162, %163
  %165 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 6, i32 5), align 4
  %166 = icmp ule i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = trunc i32 %167 to i16
  %169 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %168, i16 signext 0) #2
  %170 = sext i16 %169 to i32
  %171 = icmp sle i32 %133, %170
  %172 = zext i1 %171 to i32
  %173 = xor i32 %131, %172
  %174 = icmp ne i32 %173, 0
  br label %175

; <label>:175                                     ; preds = %151, %125
  %176 = phi i1 [ false, %125 ], [ %174, %151 ]
  %177 = zext i1 %176 to i32
  %178 = trunc i32 %177 to i16
  %179 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %178, i32 11) #2
  %180 = zext i16 %179 to i32
  %181 = load i32* @g_44, align 4
  %182 = xor i32 %180, %181
  %183 = and i32 %182, 76
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

; <label>:185                                     ; preds = %175
  %186 = load i32* @g_2, align 4
  %187 = icmp ne i32 %186, 0
  br label %188

; <label>:188                                     ; preds = %185, %175
  %189 = phi i1 [ true, %175 ], [ %187, %185 ]
  %190 = zext i1 %189 to i32
  %191 = load i32* %l_7, align 4
  %192 = icmp sgt i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = trunc i32 %193 to i16
  %195 = load i32* %l_7, align 4
  %196 = trunc i32 %195 to i16
  %197 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %194, i16 zeroext %196) #2
  %198 = load i32* %l_55, align 4
  %199 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %197, i32 %198) #2
  %200 = zext i16 %199 to i32
  %201 = icmp sle i32 %200, 186
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %l_60, align 4
  store i32 %202, i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  br label %203

; <label>:203                                     ; preds = %188, %124
  %204 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 0
  %205 = load i32* %204, align 4
  %206 = trunc i32 %205 to i8
  %207 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %208 = load i32* %207, align 4
  %209 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %210 = load i32* %209, align 4
  %211 = icmp uge i32 %208, %210
  %212 = zext i1 %211 to i32
  %213 = trunc i32 %212 to i16
  %214 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %213, i32 12) #2
  %215 = zext i16 %214 to i32
  %216 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %206, i32 %215) #2
  %217 = sext i8 %216 to i32
  %218 = load i8* @g_12, align 1
  %219 = xor i32 %217, 1
  %220 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 5, i32 5), align 4
  %221 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 0
  %222 = load i32* %221, align 4
  %223 = load i32* @g_44, align 4
  store i32 %223, i32* %l_74, align 4
  %224 = trunc i32 %223 to i16
  %225 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 3, i32 1), align 4
  %226 = trunc i32 %225 to i16
  %227 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %224, i16 signext %226) #2
  %228 = sext i16 %227 to i32
  %229 = icmp sgt i32 %222, %228
  %230 = zext i1 %229 to i32
  %231 = load i32* %l_7, align 4
  %232 = icmp slt i32 %230, %231
  %233 = zext i1 %232 to i32
  %234 = trunc i32 %233 to i16
  %235 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %234, i32 9) #2
  %236 = zext i16 %235 to i32
  %237 = and i32 %220, %236
  %238 = load i32* %l_45, align 4
  %239 = xor i32 %238, %237
  store i32 %239, i32* %l_45, align 4
  %240 = trunc i32 %239 to i8
  %241 = load i32* @g_44, align 4
  %242 = trunc i32 %241 to i8
  %243 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %240, i8 zeroext %242) #2
  %244 = zext i8 %243 to i32
  store i32 %244, i32* %l_75, align 4
  %245 = load i8* @g_12, align 1
  %246 = zext i8 %245 to i32
  %247 = and i32 %244, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

; <label>:249                                     ; preds = %203
  %250 = load i8* %l_76, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp ne i32 %251, 0
  br label %253

; <label>:253                                     ; preds = %249, %203
  %254 = phi i1 [ false, %203 ], [ %252, %249 ]
  %255 = zext i1 %254 to i32
  %256 = icmp sle i32 %219, %255
  %257 = zext i1 %256 to i32
  %258 = trunc i32 %257 to i16
  %259 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 1
  %260 = load i32* %259, align 4
  %261 = trunc i32 %260 to i16
  %262 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %258, i16 zeroext %261) #2
  %263 = zext i16 %262 to i32
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

; <label>:265                                     ; preds = %253
  br label %266

; <label>:266                                     ; preds = %265, %253
  %267 = phi i1 [ false, %253 ], [ true, %265 ]
  %268 = zext i1 %267 to i32
  store i32 %268, i32* @g_77, align 4
  store i32 1, i32* %l_74, align 4
  br label %269

; <label>:269                                     ; preds = %282, %266
  %270 = load i32* %l_74, align 4
  %271 = icmp sge i32 %270, 0
  br i1 %271, label %272, label %285

; <label>:272                                     ; preds = %269
  %273 = load i32* %l_60, align 4
  %274 = trunc i32 %273 to i8
  %275 = load i32* @g_2, align 4
  %276 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 4, i32 5), align 4
  %277 = icmp ugt i32 %275, %276
  %278 = zext i1 %277 to i32
  %279 = trunc i32 %278 to i8
  %280 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %274, i8 signext %279) #2
  %281 = sext i8 %280 to i32
  store i32 %281, i32* @g_77, align 4
  br label %282

; <label>:282                                     ; preds = %272
  %283 = load i32* %l_74, align 4
  %284 = sub nsw i32 %283, 1
  store i32 %284, i32* %l_74, align 4
  br label %269

; <label>:285                                     ; preds = %269
  %286 = load i32* %l_7, align 4
  %287 = load i32* @g_77, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %367

; <label>:289                                     ; preds = %285
  %290 = load i32* %l_7, align 4
  %291 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %292 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 0, i32 2), align 4
  store i32 %292, i32* %l_110, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %304

; <label>:294                                     ; preds = %289
  %295 = load i32* %l_7, align 4
  %296 = icmp ne i32 1, %295
  %297 = zext i1 %296 to i32
  %298 = or i32 %297, 64930
  %299 = trunc i32 %298 to i8
  %300 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %299, i32 0) #2
  %301 = zext i8 %300 to i16
  store i16 %301, i16* @g_113, align 2
  %302 = sext i16 %301 to i32
  %303 = icmp ne i32 %302, 0
  br label %304

; <label>:304                                     ; preds = %294, %289
  %305 = phi i1 [ false, %289 ], [ %303, %294 ]
  %306 = zext i1 %305 to i32
  store i32 %306, i32* @g_77, align 4
  br i1 %305, label %310, label %307

; <label>:307                                     ; preds = %304
  %308 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %309 = icmp ne i32 %308, 0
  br label %310

; <label>:310                                     ; preds = %307, %304
  %311 = phi i1 [ true, %304 ], [ %309, %307 ]
  %312 = zext i1 %311 to i32
  %313 = trunc i32 %312 to i8
  %314 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %313, i8 zeroext -7) #2
  %315 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %316 = icmp ne i32 %315, 0
  %317 = xor i1 %316, true
  %318 = zext i1 %317 to i32
  %319 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  %320 = icmp slt i32 %318, %319
  %321 = zext i1 %320 to i32
  %322 = trunc i32 %321 to i8
  %323 = load i32* %l_74, align 4
  %324 = trunc i32 %323 to i8
  %325 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %322, i8 signext %324) #2
  %326 = sext i8 %325 to i32
  %327 = icmp sge i32 %326, -10
  %328 = zext i1 %327 to i32
  %329 = load i32* %l_110, align 4
  %330 = trunc i32 %329 to i8
  %331 = load i32* %l_7, align 4
  %332 = trunc i32 %331 to i8
  %333 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %330, i8 signext %332) #2
  %334 = load i32* @g_114, align 4
  %335 = trunc i32 %334 to i8
  %336 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %333, i8 signext %335) #2
  %337 = sext i8 %336 to i32
  %338 = load i16* %l_115, align 2
  %339 = zext i16 %338 to i32
  %340 = icmp eq i32 %337, %339
  %341 = zext i1 %340 to i32
  %342 = icmp ult i32 %291, %341
  %343 = zext i1 %342 to i32
  %344 = load i32* %l_7, align 4
  %345 = icmp sgt i32 %343, %344
  %346 = zext i1 %345 to i32
  %347 = icmp sgt i32 %290, -9
  %348 = zext i1 %347 to i32
  %349 = trunc i32 %348 to i8
  %350 = load i32* %l_7, align 4
  %351 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %350
  %352 = load i32* %351, align 4
  %353 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %349, i32 %352) #2
  %354 = zext i8 %353 to i32
  %355 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %356 = load i32* %355, align 4
  %357 = and i32 %354, %356
  %358 = trunc i32 %357 to i16
  %359 = load i32* %l_7, align 4
  %360 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %358, i32 %359) #2
  %361 = zext i16 %360 to i32
  %362 = icmp ule i32 0, %361
  %363 = zext i1 %362 to i32
  %364 = load i16* %l_115, align 2
  %365 = zext i16 %364 to i32
  %366 = icmp ne i32 %363, %365
  br label %367

; <label>:367                                     ; preds = %310, %285
  %368 = phi i1 [ false, %285 ], [ %366, %310 ]
  %369 = zext i1 %368 to i32
  %370 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 0, i32 5), align 4
  %371 = icmp ugt i32 %369, %370
  %372 = zext i1 %371 to i32
  %373 = load i32* %l_7, align 4
  %374 = icmp sle i32 %372, %373
  %375 = zext i1 %374 to i32
  store i32 %375, i32* %l_74, align 4
  %376 = trunc i32 %375 to i16
  %377 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %376, i32 1) #2
  %378 = sext i16 %377 to i32
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

; <label>:380                                     ; preds = %367
  %381 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 0), align 4
  %382 = icmp ne i32 %381, 0
  br label %383

; <label>:383                                     ; preds = %380, %367
  %384 = phi i1 [ false, %367 ], [ %382, %380 ]
  %385 = zext i1 %384 to i32
  %386 = trunc i32 %385 to i16
  %387 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %388 = load i32* %387, align 4
  %389 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %386, i32 %388) #2
  %390 = zext i16 %389 to i32
  %391 = load i32* @g_2, align 4
  %392 = icmp sle i32 %390, %391
  %393 = zext i1 %392 to i32
  %394 = load i32* @g_2, align 4
  %395 = icmp sle i32 %393, %394
  %396 = zext i1 %395 to i32
  %397 = load i32* %l_7, align 4
  %398 = or i32 %396, %397
  %399 = icmp sle i32 %286, %398
  %400 = zext i1 %399 to i32
  %401 = icmp sgt i32 %400, 1
  %402 = zext i1 %401 to i32
  %403 = call i32 @safe_add_func_uint32_t_u_u(i32 -989156845, i32 %402) #2
  %404 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 2
  %405 = load i32* %404, align 4
  %406 = or i32 %403, %405
  %407 = trunc i32 %406 to i8
  %408 = load i16* %l_115, align 2
  %409 = zext i16 %408 to i32
  %410 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %407, i32 %409) #2
  %411 = zext i8 %410 to i32
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %414, label %413

; <label>:413                                     ; preds = %383
  br label %414

; <label>:414                                     ; preds = %413, %383
  %415 = phi i1 [ true, %383 ], [ true, %413 ]
  %416 = zext i1 %415 to i32
  %417 = icmp sgt i32 %416, -1
  %418 = zext i1 %417 to i32
  %419 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 1), align 4
  %420 = and i32 %418, %419
  %421 = trunc i32 %420 to i16
  store i16 %421, i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 2, i32 0), align 2
  %422 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %421, i32 13) #2
  %423 = zext i16 %422 to i32
  %424 = or i32 %423, 1
  %425 = load i32* %l_45, align 4
  %426 = icmp sge i32 %424, %425
  %427 = zext i1 %426 to i32
  %428 = load i32* %l_110, align 4
  %429 = load i32* %l_7, align 4
  %430 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %429
  %431 = load i32* %430, align 4
  %432 = icmp slt i32 %428, %431
  %433 = zext i1 %432 to i32
  %434 = trunc i32 %433 to i8
  %435 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  %436 = trunc i32 %435 to i8
  %437 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %434, i8 signext %436) #2
  %438 = sext i8 %437 to i32
  %439 = load i32* %l_7, align 4
  %440 = getelementptr inbounds [2 x i32]* %l_9, i32 0, i32 %439
  %441 = load i32* %440, align 4
  %442 = icmp eq i32 %438, %441
  %443 = zext i1 %442 to i32
  %444 = load i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 7, i32 0), align 2
  %445 = zext i16 %444 to i32
  %446 = or i32 0, %445
  %447 = trunc i32 %446 to i8
  %448 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %447, i8 zeroext -1) #2
  %449 = zext i8 %448 to i32
  %450 = load i32* %l_117, align 4
  %451 = icmp sle i32 %449, %450
  br i1 %451, label %452, label %455

; <label>:452                                     ; preds = %414
  %453 = load i32* getelementptr inbounds ([3 x i32]* @g_61, i32 0, i32 2), align 4
  %454 = icmp ne i32 %453, 0
  br label %455

; <label>:455                                     ; preds = %452, %414
  %456 = phi i1 [ false, %414 ], [ %454, %452 ]
  %457 = zext i1 %456 to i32
  %458 = trunc i32 %457 to i16
  %459 = load i32* %l_118, align 4
  %460 = trunc i32 %459 to i16
  %461 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %458, i16 zeroext %460) #2
  %462 = zext i16 %461 to i32
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %468, label %464

; <label>:464                                     ; preds = %455
  %465 = load i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 2, i32 0), align 2
  %466 = zext i16 %465 to i32
  %467 = icmp ne i32 %466, 0
  br label %468

; <label>:468                                     ; preds = %464, %455
  %469 = phi i1 [ true, %455 ], [ %467, %464 ]
  %470 = zext i1 %469 to i32
  %471 = load i32* %l_117, align 4
  %472 = or i32 %470, %471
  %473 = load i32* %l_119, align 4
  %474 = or i32 %473, %472
  store i32 %474, i32* %l_119, align 4
  br label %475

; <label>:475                                     ; preds = %468
  %476 = load i32* %l_7, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %l_7, align 4
  br label %34

; <label>:478                                     ; preds = %34
  %479 = load i32* %l_110, align 4
  %480 = and i32 %479, 255
  %481 = load i32* %l_60, align 4
  %482 = load i32* %l_7, align 4
  store i32 0, i32* @g_77, align 4
  %483 = load i8* @g_12, align 1
  %484 = zext i8 %483 to i32
  %485 = load i16* %l_115, align 2
  %486 = zext i16 %485 to i32
  %487 = icmp sle i32 %486, -7
  %488 = zext i1 %487 to i32
  %489 = and i32 %488, 1
  %490 = icmp sgt i32 %484, %489
  %491 = zext i1 %490 to i32
  %492 = load i32* %l_110, align 4
  %493 = call i32 @safe_sub_func_int32_t_s_s(i32 %491, i32 %492) #2
  %494 = call i32 @safe_div_func_int32_t_s_s(i32 0, i32 %493) #2
  store i32 %494, i32* %l_7, align 4
  %495 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %496 = and i32 %495, %494
  store i32 %496, i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %497 = xor i32 %481, %496
  %498 = icmp ult i32 %480, %497
  %499 = zext i1 %498 to i32
  %500 = load i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 7, i32 0), align 2
  %501 = zext i16 %500 to i32
  %502 = and i32 %501, %499
  %503 = trunc i32 %502 to i16
  store i16 %503, i16* getelementptr inbounds ([9 x [1 x i16]]* @g_116, i32 0, i32 7, i32 0), align 2
  %504 = zext i16 %503 to i32
  %505 = icmp slt i32 %504, 5441
  %506 = zext i1 %505 to i32
  %507 = load i32* @g_114, align 4
  %508 = and i32 %507, %506
  store i32 %508, i32* @g_114, align 4
  br label %509

; <label>:509                                     ; preds = %478, %19
  br label %510

; <label>:510                                     ; preds = %509
  %511 = load i32* @g_2, align 4
  %512 = add nsw i32 %511, -1
  store i32 %512, i32* @g_2, align 4
  br label %11

; <label>:513                                     ; preds = %11
  %514 = getelementptr inbounds [4 x i32]* %l_46, i32 0, i32 0
  %515 = load i32* %514, align 4
  %516 = trunc i32 %515 to i8
  ret i8 %516
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
  call void @crc32_8bytes(i64 %4) #2
  %5 = load i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = load i8** %2, align 4
  %9 = load i32* @crc32_context, align 4
  %10 = xor i32 %9, -1
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str12, i32 0, i32 0), i8* %8, i32 %10) #2
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind
define internal i32 @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %crc, i32* %1, align 4
  store i32 %flag, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str11, i32 0, i32 0), i32 %3) #2
  %5 = load i32* %1, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind
define internal void @crc32_8bytes(i64 %val) #0 {
  %1 = alloca i64, align 8
  store i64 %val, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = lshr i64 %2, 0
  %4 = and i64 %3, 255
  %5 = trunc i64 %4 to i8
  call void @crc32_byte(i8 zeroext %5) #2
  %6 = load i64* %1, align 8
  %7 = lshr i64 %6, 8
  %8 = and i64 %7, 255
  %9 = trunc i64 %8 to i8
  call void @crc32_byte(i8 zeroext %9) #2
  %10 = load i64* %1, align 8
  %11 = lshr i64 %10, 16
  %12 = and i64 %11, 255
  %13 = trunc i64 %12 to i8
  call void @crc32_byte(i8 zeroext %13) #2
  %14 = load i64* %1, align 8
  %15 = lshr i64 %14, 24
  %16 = and i64 %15, 255
  %17 = trunc i64 %16 to i8
  call void @crc32_byte(i8 zeroext %17) #2
  %18 = load i64* %1, align 8
  %19 = lshr i64 %18, 32
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  call void @crc32_byte(i8 zeroext %21) #2
  %22 = load i64* %1, align 8
  %23 = lshr i64 %22, 40
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i8
  call void @crc32_byte(i8 zeroext %25) #2
  %26 = load i64* %1, align 8
  %27 = lshr i64 %26, 48
  %28 = and i64 %27, 255
  %29 = trunc i64 %28 to i8
  call void @crc32_byte(i8 zeroext %29) #2
  %30 = load i64* %1, align 8
  %31 = lshr i64 %30, 56
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i8
  call void @crc32_byte(i8 zeroext %33) #2
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

; Function Attrs: noinline nounwind
define internal zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2
  store i32 %right, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i16* %1, align 2
  %10 = zext i16 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i16* %1, align 2
  %13 = zext i16 %12 to i32
  %14 = load i32* %2, align 4
  %15 = ashr i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i16
  ret i16 %18
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
define internal signext i8 @func_19(i16 signext %p_20, i8 signext %p_21, i32 %p_22, i32 %p_23) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %l_29 = alloca i32, align 4
  store i16 %p_20, i16* %1, align 2
  store i8 %p_21, i8* %2, align 1
  store i32 %p_22, i32* %3, align 4
  store i32 %p_23, i32* %4, align 4
  store i32 -1901935715, i32* %l_29, align 4
  %5 = load i32* @g_2, align 4
  %6 = trunc i32 %5 to i16
  %7 = load i8* @g_12, align 1
  %8 = zext i8 %7 to i32
  %9 = load i32* %l_29, align 4
  %10 = trunc i32 %9 to i16
  %11 = load i32* %3, align 4
  %12 = trunc i32 %11 to i8
  %13 = call zeroext i16 @func_24(i16 zeroext %6, i32 %8, i16 zeroext %10, i8 signext %12) #2
  %14 = load i32* %3, align 4
  %15 = load i32* %l_29, align 4
  %16 = xor i32 %15, -1
  %17 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %18 = xor i32 %17, 5680
  store i32 %18, i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %19 = icmp ule i32 %16, %18
  %20 = zext i1 %19 to i32
  %21 = icmp ne i32 -1, %20
  %22 = zext i1 %21 to i32
  %23 = icmp ult i32 %14, %22
  %24 = zext i1 %23 to i32
  %25 = xor i32 %24, -1
  %26 = xor i32 %25, -1
  %27 = load i32* %l_29, align 4
  %28 = or i32 %26, %27
  %29 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 5, i32 1), align 4
  %30 = load i32* @g_2, align 4
  %31 = xor i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %0
  %34 = load i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

; <label>:36                                      ; preds = %33, %0
  %37 = phi i1 [ false, %0 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = load i32* %3, align 4
  %40 = icmp uge i32 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 1, i32 1), align 4
  %43 = trunc i32 %42 to i8
  ret i8 %43
}

; Function Attrs: noinline nounwind
define internal zeroext i16 @func_24(i16 zeroext %p_25, i32 %p_26, i16 zeroext %p_27, i8 signext %p_28) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %l_30 = alloca i16, align 2
  store i16 %p_25, i16* %1, align 2
  store i32 %p_26, i32* %2, align 4
  store i16 %p_27, i16* %3, align 2
  store i8 %p_28, i8* %4, align 1
  store i16 24226, i16* %l_30, align 2
  %5 = load i16* %l_30, align 2
  ret i16 %5
}

; Function Attrs: noinline nounwind
define internal signext i8 @safe_mod_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
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
  %22 = srem i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
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
define internal signext i16 @func_39(i16 signext %p_40, i32 %p_41) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %p_40, i16* %1, align 2
  store i32 %p_41, i32* %2, align 4
  %3 = load i8* @g_12, align 1
  %4 = zext i8 %3 to i32
  %5 = load i32* getelementptr inbounds ([7 x [6 x i32]]* @g_34, i32 0, i32 5, i32 4), align 4
  %6 = call i32 @safe_add_func_int32_t_s_s(i32 %4, i32 %5) #2
  store i32 %6, i32* @g_44, align 4
  %7 = load i16* %1, align 2
  ret i16 %7
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
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2
  store i16 %si2, i16* %2, align 2
  %3 = load i16* %1, align 2
  %4 = sext i16 %3 to i32
  %5 = load i16* %2, align 2
  %6 = sext i16 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
define internal zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1
  store i8 %ui2, i8* %2, align 1
  %3 = load i8* %1, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8* %2, align 1
  %6 = zext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
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
define internal signext i8 @safe_sub_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1
  store i8 %si2, i8* %2, align 1
  %3 = load i8* %1, align 1
  %4 = sext i8 %3 to i32
  %5 = load i8* %2, align 1
  %6 = sext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1
  store i8 %ui2, i8* %2, align 1
  %3 = load i8* %1, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8* %2, align 1
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
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

attributes #0 = { noinline nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
