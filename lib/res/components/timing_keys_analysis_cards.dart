import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/lotto_prediction/lotto_prediction_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/components/number_card.dart';
import 'package:lotto_grazer/res/components/w_card.dart';

class TimingKeysAnalysisCard extends StatefulWidget {
  final SavedPlansData savedPlansData;
  final List<String> winNum;
  final String week;
  final String planName;
  final Function onDetailsTap;

  const TimingKeysAnalysisCard({
    Key? key,
    required this.winNum,
    required this.week,
    required this.planName,
    required this.onDetailsTap,
    required this.savedPlansData,
  }) : super(key: key);

  @override
  State<TimingKeysAnalysisCard> createState() => _TimingKeysAnalysisCardState();
}

class _TimingKeysAnalysisCardState extends State<TimingKeysAnalysisCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.blackColor, width: 4.w),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.0.sm),
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.r),
                  topLeft: Radius.circular(15.r),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.savedPlansData.planType == "DIAGONAL" && widget.savedPlansData.planName == 'LAPPING NUMBER') ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        WCard(
                          label: widget.savedPlansData.winningNum1,
                          borderColor: Colors.transparent,
                        ),
                        WCard(
                          label: widget.savedPlansData.winningNum2,
                          borderColor: Colors.transparent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        NumberCard(label: widget.savedPlansData.isRightDiagonal ? '' : widget.savedPlansData.num1),
                        NumberCard(label: widget.savedPlansData.isRightDiagonal ? widget.savedPlansData.num1 : ''),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        NumberCard(label: widget.savedPlansData.isRightDiagonal ? widget.savedPlansData.num2 : ''),
                        NumberCard(label: widget.savedPlansData.isRightDiagonal ? '' : widget.savedPlansData.num2),
                      ],
                    ),
                  ],
                  if (widget.savedPlansData.planType == "HORIZONTAL" && widget.savedPlansData.planName == 'LAPPING NUMBER') ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        WCard(
                          label: widget.savedPlansData.winningNum1,
                          borderColor: Colors.transparent,
                        ),
                        WCard(
                          label: widget.savedPlansData.winningNum2,
                          borderColor: Colors.transparent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        NumberCard(label: widget.savedPlansData.num1),
                        NumberCard(label: widget.savedPlansData.num2),
                      ],
                    ),
                  ],
                  if (widget.savedPlansData.planName == 'PROGRESSIVE NUMBER') ...[
                    WCard(
                      btnWidth: double.infinity,
                      label: widget.savedPlansData.winningNum1,
                      borderColor: Colors.transparent,
                    ),
                    if (widget.savedPlansData.planType == 'VERTICAL') ...[
                      CustomChildContainer(
                        margin: EdgeInsets.only(left: 8.sm, right: 8.sm),
                        bgColor: Colors.white,
                        width: double.infinity,
                        child: Text(
                          widget.savedPlansData.signCode1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w900,
                            wordSpacing: 10.w,
                            letterSpacing: 5.w,
                          ),
                        ),
                      ),
                      CustomChildContainer(
                        margin: EdgeInsets.only(left: 8.sm, right: 8.sm),
                        bgColor: Colors.white,
                        width: double.infinity,
                        child: Text(
                          widget.savedPlansData.signCode2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w900,
                            wordSpacing: 10.w,
                            letterSpacing: 5.w,
                          ),
                        ),
                      ),
                    ],
                    CustomContainer(
                      // margin: EdgeInsets.only(left: 8.w, right: 8.w),
                      height: 25.h,
                      title: "SIGN CODE",
                      bgColor: AppColors.blueColor,
                      fgColor: AppColors.blackColor,
                      fontsize: 10.sp,
                      fontweight: FontWeight.w900,
                      align: TextAlign.center,
                    ),
                  ],
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 6.h,
                    ),
                    WCard(
                      btnWidth: double.infinity,
                      label: widget.week,
                      textColor: AppColors.blackColor,
                      bgColor: AppColors.whiteColor,
                      borderColor: AppColors.blackColor,
                      isInfo: true,
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      title: widget.planName,
                      fontsize: 12.sp,
                      fontweight: FontWeight.w800,
                      fontcolor: AppColors.blackColor,
                    ),
                    SizedBox(
                      height: 6.h,
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
                    label: ' View \n Detail     ',
                    bgColor: AppColors.blackColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
