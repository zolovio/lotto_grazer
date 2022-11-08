import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/components/number_card.dart';
import 'package:lotto_grazer/res/components/w_card.dart';

class AnalysisCard extends StatelessWidget {
  const AnalysisCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.20.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: AppColors.blackColor, width: 4.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.lightBlueColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          WCard(label: 'W2'),
                          WCard(label: 'W3'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          NumberCard(label: '40'),
                          NumberCard(label: '40'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          NumberCard(label: '40'),
                          NumberCard(label: '40'),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const WCard(
                      label: 'Week 2',
                      textColor: AppColors.blackColor,
                      bgColor: AppColors.buttonColor,
                      borderColor: AppColors.blackColor,
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: 'ON BOARD PLAN',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w800,
                      textColor: AppColors.blackColor,
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: 'UPDATED 16/09/2022',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w800,
                      textColor: AppColors.blackColor,
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Container(
                height: size.height * 0.20.h,
                decoration: const BoxDecoration(
                  color: AppColors.lightBlueColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child:
                    const Center(child: WCard(label: ' View \n Detail     '))),
          ),
        ],
      ),
    );
  }
}
