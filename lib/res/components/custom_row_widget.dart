import 'package:flutter/material.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/utils/utils.dart';

class CustomRowWidget extends StatelessWidget {
  final String c1text;
  final String c2text;
  const CustomRowWidget({
    super.key,
    required this.c1text,
    required this.c2text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: const EdgeInsets.all(10.0),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 16.0,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: const Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: const EdgeInsets.all(10.0),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 16.0,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: const Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.0,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
          ),
        ),
      ],
    );
  }
}
