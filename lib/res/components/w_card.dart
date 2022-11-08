import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class WCard extends StatelessWidget {
  final String label;
  final Color? borderColor;
  final Color? textColor;
  final Color? bgColor;
  const WCard(
      {Key? key,
      required this.label,
      this.borderColor,
      this.textColor,
      this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: bgColor ?? AppColors.blackColor,
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(
                color: borderColor ?? AppColors.whiteColor, width: 3.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            text: label,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            textColor: textColor ?? AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
