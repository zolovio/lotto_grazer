import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/components/number_card.dart';
import 'package:lotto_grazer/res/components/w_card.dart';

class GrencoKeyChartAnalysisCard extends StatefulWidget {
  final String firstNum;
  final String secondNum;
  final String week;
  final String planName;
  final Function onDetailsTap;

  const GrencoKeyChartAnalysisCard({
    Key? key,
    required this.firstNum,
    required this.secondNum,
    required this.week,
    required this.planName,
    required this.onDetailsTap,
  }) : super(key: key);

  @override
  State<GrencoKeyChartAnalysisCard> createState() =>
      _GrencoKeyChartAnalysisCardState();
}

class _GrencoKeyChartAnalysisCardState
    extends State<GrencoKeyChartAnalysisCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.blackColor, width: 4.w),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.r),
                    topLeft: Radius.circular(15.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    NumberCard(label: widget.firstNum),
                    SizedBox(
                      height: 5.h,
                    ),
                    NumberCard(label: widget.secondNum),
                  ],
                )),
          ),
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 6.h,
                    ),
                    WCard(
                      btnWidth: 60.w,
                      label: widget.week,
                      textColor: AppColors.blackColor,
                      bgColor: AppColors.buttonColor,
                      borderColor: AppColors.blackColor,
                    ),
                    SizedBox(height: 5.h),
                    CustomText(
                      title: widget.planName,
                      fontsize: 10.sp,
                      fontweight: FontWeight.w800,
                      fontcolor: AppColors.blackColor,
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.r),
                    bottomRight: Radius.circular(15.r),
                  ),
                ),
                child: Center(
                    child: GestureDetector(
                        onTap: () => widget.onDetailsTap(),
                        child: WCard(
                            btnWidth: 90.w,
                            btnHeight: 55.h,
                            label: ' View \n Detail     ')))),
          ),
        ],
      ),
    );
  }
}
