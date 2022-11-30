import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';

class NumberCard extends StatelessWidget {
  final String label;
  const NumberCard({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.04,
      width: size.width * 0.15,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.lightBlueColor, width: 2.0)),
      child: Center(
        child: CustomText(
          title: label,
          fontsize: 12.sp,
          fontweight: FontWeight.w900,
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
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        CustomContainer(
          width: (title == "SPACING")
              ? Utils.width(context) * 0.28
              : Utils.width(context) * 0.18,
          height: Utils.height(context) * 0.05,
          title: num,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 15.sp,
          fontweight: FontWeight.w900,
          align: TextAlign.center,
          border: Border.all(
            color: AppColors.lightBlueColor,
            width: 2.0,
          ),
        ),
        CustomContainer(
          width: (title == "SPACING")
              ? Utils.width(context) * 0.28
              : Utils.width(context) * 0.18,
          height: Utils.height(context) * 0.035,
          title: title,
          bgColor: AppColors.blueColor,
          fgColor: AppColors.whiteColor,
          fontsize: 10.0,
          fontweight: FontWeight.w900,
          align: TextAlign.center,
          border: Border.all(
            color: AppColors.lightBlueColor,
            width: 2.0,
          ),
        ),
      ],
    );
  }
}
