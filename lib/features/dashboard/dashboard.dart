import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/home_page/home_ui.dart';
import 'package:lotto_grazer/features/lotto_prediction/lotto_prediction_ui.dart';
import 'package:lotto_grazer/res/colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  List<Widget> children() => [
        const HomePageUi(),
        const LottoPredictionUi(),
        const HomePageUi(),
        const HomePageUi(),
        const HomePageUi(),
        const HomePageUi(),
      ];

  List<BottomNavModel> navBarsItems() {
    return [
      BottomNavModel(
        inactiveTitle: "HOME",
        title: "HOME",
      ),
      BottomNavModel(
        inactiveTitle: "LOTTO PREDICTION",
        title: "LOTTO FORECAST",
      ),
      BottomNavModel(
        inactiveTitle: "TIMINGS KEYS",
        title: "TIMINGS KEYS",
      ),
      BottomNavModel(
        inactiveTitle: "2 SURE TRACER",
        title: "2 SURE TRACER",
      ),
      BottomNavModel(
        inactiveTitle: "POWER \nX PLAY",
        title: "POWER \nX PLAY",
      ),
      BottomNavModel(
        inactiveTitle: "SETTINGS",
        title: "SETTINGS",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: children()[_selectedIndex],
        bottomNavigationBar: Container(
          height: 65.h,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            border: Border.all(color: AppColors.blackColor),
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 8.r,
                  offset: const Offset(0, 5))
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < navBarsItems().length; i++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = i;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 55.h,
                        width: 72.w,
                        padding: EdgeInsets.all(5.sm),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.blackColor),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.r),
                                bottomRight: Radius.circular(5.r))),
                        child: Text(
                          _selectedIndex == i
                              ? navBarsItems()[i].title
                              : navBarsItems()[i].inactiveTitle,
                          style: _selectedIndex == i
                              ? TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12.sp)
                              : TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavModel {
  final String inactiveTitle;
  final String title;

  BottomNavModel({required this.inactiveTitle, required this.title});
}
