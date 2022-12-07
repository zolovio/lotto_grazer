import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class NumberCard extends StatelessWidget {
  final String label;
  const NumberCard({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.h,
      width: 50.w,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.lightBlueColor, width: 2.w)),
      child: Center(
        child: CustomText(
          title: label,
          fontsize: 11.sp,
          fontweight: FontWeight.w800,
          fontcolor: AppColors.blackColor,
        ),
      ),
    );
  }
}

class NumberCardWithTitle extends StatelessWidget {
  final String num;
  final String title;

  const NumberCardWithTitle({Key? key, required this.num, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(
          width: (title == "SPACING") ? 80.w : 70.w,
          height: 35.h,
          title: num,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w800,
          align: TextAlign.center,
          border: Border.all(
            color: AppColors.lightBlueColor,
            width: 2.w,
          ),
        ),
        CustomContainer(
          width: (title == "SPACING") ? 80.w : 70.w,
          height: 30.h,
          title: title,
          bgColor: AppColors.blueColor,
          fgColor: AppColors.whiteColor,
          fontsize: 10.sp,
          fontweight: FontWeight.w800,
          align: TextAlign.center,
          border: Border.all(
            color: AppColors.lightBlueColor,
            width: 2.w,
          ),
        ),
      ],
    );
  }
}
