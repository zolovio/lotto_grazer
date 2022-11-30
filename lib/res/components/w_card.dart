import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';

class WCard extends StatelessWidget {
  final String label;
  final Color? borderColor;
  final Color? textColor;
  final Color? bgColor;
  final String? widthForButton;

  const WCard(
      {Key? key,
      required this.label,
      this.borderColor,
      this.textColor,
      this.bgColor,
      this.widthForButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0),
      child: Container(
        width: (widthForButton == null) ? Utils.width(context) * 0.12 : null,
        decoration: BoxDecoration(
            color: bgColor ?? AppColors.blackColor,
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(
                color: borderColor ?? AppColors.whiteColor, width: 3.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            title: label,
            fontsize: 12.sp,
            fontweight: FontWeight.w600,
            fontcolor: textColor ?? AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
