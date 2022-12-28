import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/utils/utils.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.appbarColor,
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Image.asset(
          'assets/images/appbarlogo.png',
          fit: BoxFit.fill,
          width: 150.w,
        ),
      ),
    );
  }
}
