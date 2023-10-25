; ModuleID = 'app.cpp'
source_filename = "app.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define noundef i32 @_Z3appv() #0 {
  %1 = alloca [90000 x i8], align 1
  %2 = alloca [90000 x i8], align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds [90000 x i8], ptr %1, i64 0, i64 0
  store ptr %5, ptr %3, align 8
  %6 = getelementptr inbounds [90000 x i8], ptr %2, i64 0, i64 0
  store ptr %6, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  call void @_Z9randomGenPbi(ptr noundef %7, i32 noundef 3)
  br label %8

8:                                                ; preds = %0, %8
  %9 = load ptr, ptr %3, align 8
  %10 = load ptr, ptr %4, align 8
  call void @_Z7calcGenPKbPb(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %4, align 8
  call void @_Z7drawGenPKb(ptr noundef %11)
  call void @_Z4swapRPbS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @_Z11flushWindowv()
  br label %8, !llvm.loop !6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define void @_Z9randomGenPbi(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, ptr %5, align 4
  %9 = icmp slt i32 %8, 300
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  store i32 0, ptr %6, align 4
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 300
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = call noundef i32 @_Z7randIntv()
  %16 = load i32, ptr %4, align 4
  %17 = srem i32 %15, %16
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr %3, align 8
  %20 = load i32, ptr %5, align 4
  %21 = mul nsw i32 %20, 300
  %22 = load i32, ptr %6, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %19, i64 %24
  %26 = zext i1 %18 to i8
  store i8 %26, ptr %25, align 1
  br label %27

27:                                               ; preds = %14
  %28 = load i32, ptr %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %6, align 4
  br label %11, !llvm.loop !8

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %5, align 4
  br label %7, !llvm.loop !9

34:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define void @_Z7calcGenPKbPb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, ptr %5, align 4
  %9 = icmp slt i32 %8, 300
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  store i32 0, ptr %6, align 4
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 300
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load i32, ptr %6, align 4
  %16 = load i32, ptr %5, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = call noundef zeroext i1 @_Z11isCellAliveiiPKb(i32 noundef %15, i32 noundef %16, ptr noundef %17)
  %19 = load ptr, ptr %4, align 8
  %20 = load i32, ptr %5, align 4
  %21 = mul nsw i32 %20, 300
  %22 = load i32, ptr %6, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %19, i64 %24
  %26 = zext i1 %18 to i8
  store i8 %26, ptr %25, align 1
  br label %27

27:                                               ; preds = %14
  %28 = load i32, ptr %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %6, align 4
  br label %11, !llvm.loop !10

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %5, align 4
  br label %7, !llvm.loop !11

34:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define void @_Z7drawGenPKb(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, ptr %3, align 4
  %7 = icmp slt i32 %6, 300
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  store i32 0, ptr %4, align 4
  br label %9

9:                                                ; preds = %26, %8
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 300
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %3, align 4
  %15 = mul nsw i32 %14, 300
  %16 = load i32, ptr %4, align 4
  %17 = add nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %13, i64 %18
  %20 = load i8, ptr %19, align 1
  %21 = trunc i8 %20 to i1
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, ptr %4, align 4
  %24 = load i32, ptr %3, align 4
  call void @_Z7setCellii(i32 noundef %23, i32 noundef %24)
  br label %25

25:                                               ; preds = %22, %12
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %4, align 4
  br label %9, !llvm.loop !12

29:                                               ; preds = %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, ptr %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %3, align 4
  br label %5, !llvm.loop !13

33:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define void @_Z4swapRPbS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  store ptr %11, ptr %12, align 8
  ret void
}

declare void @_Z11flushWindowv() #2

declare noundef i32 @_Z7randIntv() #2

declare void @_Z7setCellii(i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define noundef zeroext i1 @_Z11isCellAliveiiPKb(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store i32 0, ptr %8, align 4
  %14 = load i32, ptr %5, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, ptr %9, align 4
  br label %16

16:                                               ; preds = %50, %3
  %17 = load i32, ptr %9, align 4
  %18 = load i32, ptr %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %16
  %22 = load i32, ptr %6, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, ptr %10, align 4
  br label %24

24:                                               ; preds = %46, %21
  %25 = load i32, ptr %10, align 4
  %26 = load i32, ptr %6, align 4
  %27 = add nsw i32 %26, 1
  %28 = icmp sle i32 %25, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load i32, ptr %9, align 4
  %31 = call noundef i32 @_Z9wrapValueii(i32 noundef %30, i32 noundef 300)
  store i32 %31, ptr %11, align 4
  %32 = load i32, ptr %10, align 4
  %33 = call noundef i32 @_Z9wrapValueii(i32 noundef %32, i32 noundef 300)
  store i32 %33, ptr %12, align 4
  %34 = load ptr, ptr %7, align 8
  %35 = load i32, ptr %12, align 4
  %36 = mul nsw i32 %35, 300
  %37 = load i32, ptr %11, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %34, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = trunc i8 %41 to i1
  %43 = zext i1 %42 to i32
  %44 = load i32, ptr %8, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, ptr %8, align 4
  br label %46

46:                                               ; preds = %29
  %47 = load i32, ptr %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %10, align 4
  br label %24, !llvm.loop !14

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %9, align 4
  br label %16, !llvm.loop !15

53:                                               ; preds = %16
  %54 = load i32, ptr %6, align 4
  %55 = mul nsw i32 %54, 300
  %56 = load i32, ptr %5, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, ptr %13, align 4
  %58 = load ptr, ptr %7, align 8
  %59 = load i32, ptr %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %58, i64 %60
  %62 = load i8, ptr %61, align 1
  %63 = trunc i8 %62 to i1
  %64 = zext i1 %63 to i32
  %65 = load i32, ptr %8, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, ptr %8, align 4
  %67 = load ptr, ptr %7, align 8
  %68 = load i32, ptr %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %67, i64 %69
  %71 = load i8, ptr %70, align 1
  %72 = trunc i8 %71 to i1
  br i1 %72, label %73, label %80

73:                                               ; preds = %53
  %74 = load i32, ptr %8, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %8, align 4
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %73
  store i1 true, ptr %4, align 1
  br label %92

80:                                               ; preds = %76, %53
  %81 = load ptr, ptr %7, align 8
  %82 = load i32, ptr %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %81, i64 %83
  %85 = load i8, ptr %84, align 1
  %86 = trunc i8 %85 to i1
  br i1 %86, label %91, label %87

87:                                               ; preds = %80
  %88 = load i32, ptr %8, align 4
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i1 true, ptr %4, align 1
  br label %92

91:                                               ; preds = %87, %80
  store i1 false, ptr %4, align 1
  br label %92

92:                                               ; preds = %91, %90, %79
  %93 = load i1, ptr %4, align 1
  ret i1 %93
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define noundef i32 @_Z9wrapValueii(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, ptr %5, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, ptr %3, align 4
  br label %18

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = load i32, ptr %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, ptr %3, align 4
  br label %18

16:                                               ; preds = %11
  %17 = load i32, ptr %4, align 4
  store i32 %17, ptr %3, align 4
  br label %18

18:                                               ; preds = %16, %15, %8
  %19 = load i32, ptr %3, align 4
  ret i32 %19
}

attributes #0 = { mustprogress noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 0]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 16.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
