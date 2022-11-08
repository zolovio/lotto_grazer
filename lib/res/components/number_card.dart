import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class NumberCard extends StatelessWidget {
  final String label;
  const NumberCard({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.05,
      width: size.width * 0.15,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.darkBlueColor, width: 2.0)),
      child: Center(
        child: CustomText(
          text: label,
          fontSize: 12.sp,
          fontWeight: FontWeight.w900,
          textColor: AppColors.blackColor,
        ),
      ),
    );
  }
}
