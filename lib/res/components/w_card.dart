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
  final bool isInfo;

  const WCard({
    Key? key,
    required this.label,
    this.borderColor,
    this.textColor,
    this.bgColor,
    this.btnHeight = 50,
    this.btnWidth = 100,
    this.isInfo = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 4.h),
      child: Container(
        width: (btnWidth == 100) ? 50.w : btnWidth,
        height: (btnHeight == 50) ? 25.h : btnHeight,
        padding: EdgeInsets.only(left: 2.w, right: 2.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: bgColor ?? AppColors.blackColor,
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(color: borderColor ?? AppColors.whiteColor, width: 2.w)),
        child: isInfo
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    title: label,
                    fontsize: 11.sp,
                    fontweight: FontWeight.w600,
                    fontcolor: textColor ?? AppColors.whiteColor,
                  ),
                  Icon(
                    Icons.info_outline,
                    size: 22.sp,
                  ),
                ],
              )
            : CustomText(
                title: label,
                fontsize: 11.sp,
                fontweight: FontWeight.w600,
                fontcolor: textColor ?? AppColors.whiteColor,
              ),
      ),
    );
  }
}
