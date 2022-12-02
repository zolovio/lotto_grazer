import 'package:flutter/material.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/utils/utils.dart';

class CustomNumberContainer extends StatelessWidget {
  final String title;
  const CustomNumberContainer({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: Utils.width(context) * 0.09,
      height: Utils.height(context) * 0.044,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      border: Border.all(
        width: 2.0,
        color: AppColors.lightBlueColor,
      ),
      title: title,
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontsize: 16.0,
      fontweight: FontWeight.w700,
      align: TextAlign.center,
    );
  }
}
