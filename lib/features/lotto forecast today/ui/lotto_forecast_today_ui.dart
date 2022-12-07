import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LottoForecastTodayUi extends StatefulWidget {
  const LottoForecastTodayUi({super.key});

  @override
  State<LottoForecastTodayUi> createState() => _LottoForecastTodayUiState();
}

class _LottoForecastTodayUiState extends State<LottoForecastTodayUi> {
  List forecastgames = [
    {
      'short_name': 'NL',
      'full_name': 'FORTUNE',
      'draw': 996,
      'date': '02/06/2022',
    },
    {
      'short_name': 'GC',
      'full_name': 'JET',
      'draw': 336,
      'date': '02/06/2022',
    },
    {
      'short_name': 'AL',
      'full_name': 'PRIME',
      'draw': 754,
      'date': '02/06/2022',
    },
    {
      'short_name': 'PM',
      'full_name': 'GOLD',
      'draw': 1555,
      'date': '02/06/2022',
    },
    {
      'short_name': 'TG',
      'full_name': 'KADOO',
      'draw': 1555,
      'date': '02/06/2022',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(Utils.width(context) * 1, 70.h),
        child: const CustomAppBar(),
      ),
      body: Column(
        children: [
          CustomContainer(
            width: Utils.width(context) * 1,
            height: 50.h,
            title: 'LOTTO FORCAST TODAY',
            bgColor: AppColors.blackColor,
            fgColor: AppColors.whiteColor,
            fontsize: 17.sp,
            fontweight: FontWeight.w700,
            border: Border.all(
              width: 0.0,
              color: AppColors.whiteColor.withOpacity(0.1),
            ),
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: 90.h,
            padding: EdgeInsets.all(15.sm),
            title:
                'Today’s forecast lotto numbers are generated using timing keys and patterns that are carefully calculated to give you a winning, on lotto games played today. View,use and save.',
            bgColor: AppColors.whiteColor.withOpacity(0.1),
            fgColor: AppColors.blackColor,
            fontsize: 14.sp,
            fontweight: FontWeight.w600,
            align: TextAlign.left,
            border: Border.all(
              width: 0.0,
              color: AppColors.whiteColor.withOpacity(0.1),
            ),
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: 50.h,
            padding: EdgeInsets.all(15.sm),
            title: 'FORECAST GAMES',
            bgColor: AppColors.greyColor.withOpacity(0.5),
            fgColor: AppColors.blackColor,
            fontsize: 17.sp,
            fontweight: FontWeight.w700,
            align: TextAlign.center,
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 3.w,
              ),
              top: BorderSide(
                color: Colors.black,
                width: 3.w,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: forecastgames.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CustomChildContainer(
                      width: Utils.width(context) * 0.3,
                      height: 76.5.h,
                      margin: EdgeInsets.only(bottom: 4.h),
                      bgColor: AppColors.blueColor.withOpacity(0.25),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 3.w,
                        ),
                        top: BorderSide(
                          color: Colors.black,
                          width: 3.w,
                        ),
                        right: BorderSide(
                          color: Colors.black,
                          width: 3.w,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              title:
                                  forecastgames[index]['short_name'].toString(),
                              fontcolor: AppColors.redColor,
                              fontweight: FontWeight.w700,
                              fontsize: 15.sp,
                              underline: false),
                          CustomText(
                              title:
                                  forecastgames[index]['full_name'].toString(),
                              fontcolor: AppColors.blackColor,
                              fontweight: FontWeight.w700,
                              fontsize: 15.sp,
                              underline: false),
                        ],
                      ),
                    ),
                    CustomChildContainer(
                      width: Utils.width(context) * 0.7,
                      height: 76.5.h,
                      margin: EdgeInsets.only(bottom: 4.h),
                      bgColor: AppColors.blueColor.withOpacity(0.25),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 3.w,
                        ),
                        top: BorderSide(
                          color: Colors.black,
                          width: 3.w,
                        ),
                        left: BorderSide(
                          color: Colors.black,
                          width: 3.w,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: Utils.width(context) * 0.63,
                            height: 30.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                    title:
                                        'DRAW:${forecastgames[index]['draw']}',
                                    fontcolor: AppColors.blackColor,
                                    fontweight: FontWeight.w700,
                                    fontsize: 13.sp,
                                    underline: false),
                                CustomText(
                                    title:
                                        forecastgames[index]['date'].toString(),
                                    fontcolor: AppColors.blackColor,
                                    fontweight: FontWeight.w700,
                                    fontsize: 13.sp,
                                    underline: false),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: CustomButton(
                                title: 'VIEW FORECAST',
                                onpress: () {
                                  Navigator.of(context)
                                      .pushNamed(RoutesName.forecastDetails);
                                },
                                bottomLeftRadius: 5.r,
                                bottomRightRadius: 5.r,
                                topRightRadius: 5.r,
                                topLeftRadius: 5.r,
                                fontsize: 11.sp,
                                btnwidth: Utils.width(context) * 0.05,
                                btnheight: 30.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
