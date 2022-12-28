import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';

class CustomNumberContainer extends StatelessWidget {
  final String title;
  const CustomNumberContainer({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: 37.w,
      height: 24.5.h,
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      border: Border.all(
        width: 2.w,
        color: AppColors.lightBlueColor,
      ),
      title: title,
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontsize: 15.sp,
      fontweight: FontWeight.w700,
      align: TextAlign.center,
    );
  }
}
