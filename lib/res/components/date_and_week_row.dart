import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/utils/utils.dart';

class DateAndWeekRow extends StatelessWidget {
  final String gameName;
  final String countingWeek;
  final String date;

  const DateAndWeekRow(
      {super.key,
      required this.gameName,
      required this.countingWeek,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: Utils.width(context) * 0.5,
          height: 60.h,
          child: CustomContainer(
            title: gameName,
            bgColor: AppColors.whiteColor.withOpacity(0.1),
            fgColor: AppColors.blackColor,
            fontsize: 16.sp,
            align: TextAlign.center,
            fontweight: FontWeight.w700,
            border: Border(
              right: BorderSide(
                width: 3.w,
                color: AppColors.blackColor,
              ),
              bottom: BorderSide(
                width: 3.w,
                color: AppColors.blackColor,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 60.h,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: Utils.width(context) * 0.35,
                    height: 30.h,
                    child: CustomContainer(
                      title: 'COUNTING WEEKS',
                      bgColor: AppColors.whiteColor.withOpacity(0.1),
                      fgColor: AppColors.blackColor,
                      fontsize: 10.sp,
                      align: TextAlign.center,
                      fontweight: FontWeight.w700,
                      border: Border(
                        right: BorderSide(
                          width: 3.w,
                          color: AppColors.blackColor,
                        ),
                        bottom: BorderSide(
                          width: 3.w,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Utils.width(context) * 0.15,
                    height: 30.h,
                    child: CustomContainer(
                      title: countingWeek,
                      bgColor: AppColors.whiteColor.withOpacity(0.1),
                      fgColor: AppColors.blackColor,
                      fontsize: 10.sp,
                      align: TextAlign.center,
                      fontweight: FontWeight.w600,
                      border: Border(
                        bottom: BorderSide(
                          width: 3.w,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: Utils.width(context) * 0.25,
                    height: 30.h,
                    child: CustomContainer(
                      title: 'UPDATED',
                      bgColor: AppColors.whiteColor.withOpacity(0.1),
                      fgColor: AppColors.blackColor,
                      fontsize: 10.sp,
                      align: TextAlign.center,
                      fontweight: FontWeight.w700,
                      border: Border(
                        right: BorderSide(
                          width: 3.w,
                          color: AppColors.blackColor,
                        ),
                        bottom: BorderSide(
                          width: 3.w,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Utils.width(context) * 0.25,
                    height: 30.h,
                    child: CustomContainer(
                      title: date,
                      bgColor: AppColors.whiteColor.withOpacity(0.1),
                      fgColor: AppColors.blackColor,
                      fontsize: 10.sp,
                      align: TextAlign.center,
                      fontweight: FontWeight.w600,
                      border: Border(
                        bottom: BorderSide(
                          width: 3.w,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
