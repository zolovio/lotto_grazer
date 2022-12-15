import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';

class SplashUi extends StatefulWidget {
  const SplashUi({super.key});

  @override
  State<SplashUi> createState() => _SplashUiState();
}

class _SplashUiState extends State<SplashUi> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushNamed(RoutesName.language);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Lotto Grazzer',
          style: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
