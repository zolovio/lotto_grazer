import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class WCard extends StatelessWidget {
  final String label;
  final Color? borderColor;
  final Color? textColor;
  final Color? bgColor;
  final double btnHeight;
  final double btnWidth;

  const WCard(
      {Key? key,
      required this.label,
      this.borderColor,
      this.textColor,
      this.bgColor,
      this.btnHeight = 50,
      this.btnWidth = 100})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 4.h),
      child: Container(
        width: (btnWidth == 100) ? 50.w : btnWidth,
        height: (btnHeight == 50) ? 25.h : btnHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: bgColor ?? AppColors.blackColor,
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(
                color: borderColor ?? AppColors.whiteColor, width: 2.w)),
        child: CustomText(
          title: label,
          fontsize: 11.sp,
          fontweight: FontWeight.w600,
          fontcolor: textColor ?? AppColors.whiteColor,
        ),
      ),
    );
  }
}
