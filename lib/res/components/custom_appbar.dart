import 'package:flutter/material.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/utils/utils.dart';

class CutomAppBar extends StatelessWidget {
  const CutomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.appbarColor,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Image.asset(
          'assets/images/appbarlogo.png',
          fit: BoxFit.fill,
          width: Utils.width(context) * 0.5,
        ),
      ),
    );
  }
}
