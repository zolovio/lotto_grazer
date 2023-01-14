import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/timing_keys/timing_keys_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/components/info_widget.dart';
import 'package:lotto_grazer/res/components/number_card.dart';
import 'package:lotto_grazer/res/components/w_card.dart';
import 'package:lotto_grazer/utils/utils.dart';

class TimingKeysAnalysisCard extends StatefulWidget {
  final TimingKeysData timingKeysData;
  final String boardName;
  final Function onDetailsTap;

  const TimingKeysAnalysisCard({
    Key? key,
    required this.boardName,
    required this.onDetailsTap,
    required this.timingKeysData,
  }) : super(key: key);

  @override
  State<TimingKeysAnalysisCard> createState() => _TimingKeysAnalysisCardState();
}

class _TimingKeysAnalysisCardState extends State<TimingKeysAnalysisCard> {
  @override
  Widget build(BuildContext context) {
    String planTypeWithName =
        '${widget.timingKeysData.planType} ${widget.timingKeysData.planName}';
    return Container(
      height: 145.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.blackColor, width: 4.w),
      ),
      child: Row(
        children: [
          Container(
            height: 145.h,
            width: Utils.width(context) * 0.42,
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
              crossAxisAlignment:
                  (widget.timingKeysData.planName == 'PROGRESSIVE NUMBER')
                      ? CrossAxisAlignment.stretch
                      : CrossAxisAlignment.center,
              children: [
                // vertical lapping numbers
                if (widget.timingKeysData.planType == "VERTICAL" &&
                    widget.timingKeysData.planName == 'LAPPING NUMBER') ...[
                  WCard(
                    label: widget.timingKeysData.winningNum1,
                    borderColor: AppColors.whiteColor,
                  ),
                  NumberCard(
                    label: widget.timingKeysData.num1,
                  ),
                  NumberCard(
                    label: widget.timingKeysData.num2,
                  )
                ],
                // diagonal lapping number
                if (widget.timingKeysData.planType == "DIAGONAL" &&
                    widget.timingKeysData.planName == 'LAPPING NUMBER') ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      WCard(
                        label: widget.timingKeysData.winningNum1,
                        borderColor: AppColors.whiteColor,
                      ),
                      WCard(
                        label: widget.timingKeysData.winningNum2,
                        borderColor: AppColors.whiteColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NumberCard(
                          label: widget.timingKeysData.isRightDiagonal
                              ? ''
                              : widget.timingKeysData.num1),
                      NumberCard(
                          label: widget.timingKeysData.isRightDiagonal
                              ? widget.timingKeysData.num1
                              : ''),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NumberCard(
                          label: widget.timingKeysData.isRightDiagonal
                              ? widget.timingKeysData.num2
                              : ''),
                      NumberCard(
                          label: widget.timingKeysData.isRightDiagonal
                              ? ''
                              : widget.timingKeysData.num2),
                    ],
                  ),
                ],
                // horizontal lapping number
                if (widget.timingKeysData.planType == "HORIZONTAL" &&
                    widget.timingKeysData.planName == 'LAPPING NUMBER') ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      WCard(
                        label: widget.timingKeysData.winningNum1,
                        borderColor: AppColors.whiteColor,
                      ),
                      WCard(
                        label: widget.timingKeysData.winningNum2,
                        borderColor: AppColors.whiteColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NumberCard(label: widget.timingKeysData.num1),
                      NumberCard(label: widget.timingKeysData.num2),
                    ],
                  ),
                ],
                // Pivoted numbers
                if (widget.timingKeysData.planName == 'PIVOTED NUMBER') ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      WCard(
                        label: widget.timingKeysData.winningNum1,
                        borderColor: AppColors.whiteColor,
                      ),
                    ],
                  ),
                  if (widget.timingKeysData.isUpwardPivoted)
                    NumberCard(label: widget.timingKeysData.num1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NumberCard(label: widget.timingKeysData.num2),
                      NumberCard(label: widget.timingKeysData.num3),
                    ],
                  ),
                  if (!widget.timingKeysData.isUpwardPivoted)
                    NumberCard(label: widget.timingKeysData.num1),
                ],
                // Ball Spacing
                if (widget.timingKeysData.planName == 'BALL SPACING') ...[
                  if (widget.timingKeysData.planType == 'VERTICAL') ...[
                    WCard(
                      label: widget.timingKeysData.winningNum1,
                      borderColor: AppColors.whiteColor,
                    ),
                    WCard(
                      label: widget.timingKeysData.winningNum2,
                      borderColor: AppColors.whiteColor,
                    ),
                  ],
                  if (widget.timingKeysData.planType == 'HORIZONTAL')
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        WCard(
                          label: widget.timingKeysData.winningNum1,
                          borderColor: AppColors.whiteColor,
                        ),
                        WCard(
                          label: widget.timingKeysData.winningNum2,
                          borderColor: AppColors.whiteColor,
                        ),
                      ],
                    ),
                  NumberCardWithTitle(
                    num: widget.timingKeysData.num1,
                    title: "SPACING",
                    isFromTimingKeys: true,
                  )
                ],
                // Event Summation
                if (widget.timingKeysData.planName == 'EVENT SUMMATION') ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      WCard(
                        label: widget.timingKeysData.winningNum1,
                        borderColor: AppColors.whiteColor,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      WCard(
                        label: widget.timingKeysData.winningNum2,
                        borderColor: AppColors.whiteColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NumberCardWithTitle(
                        num: widget.timingKeysData.num1,
                        title: "SUM",
                        isFromTimingKeys: true,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      NumberCardWithTitle(
                        num: widget.timingKeysData.num2,
                        title: "CONSTANT",
                        isFromTimingKeys: true,
                      ),
                    ],
                  )
                ],
                // Polar Addition
                if (widget.timingKeysData.planName == 'POLAR ADDITION') ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      WCard(
                        label: widget.timingKeysData.winningNum1,
                        borderColor: AppColors.whiteColor,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      WCard(
                        label: widget.timingKeysData.winningNum2,
                        borderColor: AppColors.whiteColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NumberCardWithTitle(
                        num: widget.timingKeysData.num1,
                        title: "ADDITION",
                        isFromTimingKeys: true,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      NumberCardWithTitle(
                        num: widget.timingKeysData.num2,
                        title: "CONSTANT",
                        isFromTimingKeys: true,
                      ),
                    ],
                  )
                ],
                // Sequential Number
                if (widget.timingKeysData.planName == 'SEQUENTIAL NUMBER') ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      WCard(
                        label: widget.timingKeysData.winningNum1,
                        borderColor: AppColors.whiteColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NumberCardWithTitle(
                        num: widget.timingKeysData.num1,
                        title: "V-CODE",
                        isFromTimingKeys: true,
                      ),
                    ],
                  )
                ],
                // Progressive Number
                if (widget.timingKeysData.planName == 'PROGRESSIVE NUMBER') ...[
                  WCard(
                    label: widget.timingKeysData.winningNum1,
                    borderColor: AppColors.whiteColor,
                  ),
                  if (widget.timingKeysData.planType == 'VERTICAL') ...[
                    CustomChildContainer(
                      margin: EdgeInsets.only(left: 5.w, right: 5.w),
                      padding: EdgeInsets.symmetric(
                          horizontal: 2.sm, vertical: 5.sm),
                      bgColor: AppColors.whiteColor,
                      child: Text(
                        widget.timingKeysData.signCode1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            wordSpacing: 4.w,
                            letterSpacing: 4.w),
                      ),
                    ),
                  ],
                  if (widget.timingKeysData.planType == 'HORIZONTAL') ...[
                    CustomChildContainer(
                      margin: EdgeInsets.only(left: 5.w, right: 5.w),
                      padding: EdgeInsets.symmetric(
                          horizontal: 2.sm, vertical: 5.sm),
                      bgColor: AppColors.whiteColor,
                      child: Text(
                        widget.timingKeysData.signCode1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            wordSpacing: 4.w,
                            letterSpacing: 4.w),
                      ),
                    ),
                    CustomChildContainer(
                      margin: EdgeInsets.only(left: 5.w, right: 5.w),
                      padding: EdgeInsets.symmetric(
                          horizontal: 2.sm, vertical: 5.sm),
                      bgColor: AppColors.whiteColor,
                      child: Text(
                        widget.timingKeysData.signCode2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            wordSpacing: 4.w,
                            letterSpacing: 4.w),
                      ),
                    ),
                  ],
                  CustomContainer(
                    margin: EdgeInsets.only(left: 5.w, right: 5.w),
                    height: 35.h,
                    title: "SIGN CODE",
                    bgColor: AppColors.blackColor,
                    fgColor: AppColors.whiteColor,
                    fontsize: 10.sp,
                    fontweight: FontWeight.w900,
                    align: TextAlign.center,
                    border: Border.all(
                      color: AppColors.whiteColor,
                      width: 2.0,
                    ),
                  ),
                ],

                // Constant Position
                if (widget.timingKeysData.planName == 'CONSTANT POSITION') ...[
                  WCard(
                    label: widget.timingKeysData.winningNum1,
                    borderColor: AppColors.whiteColor,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  NumberCard(
                    label: widget.timingKeysData.num1,
                  ),
                ],
              ],
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
                    Container(
                        height: 20.h,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 8.w, right: 8.w),
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                                color: AppColors.blackColor, width: 2.w)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(
                              title:
                                  '${(widget.timingKeysData.planType != '') ? '${widget.timingKeysData.planType.substring(0, 1)}...' : ''} ${widget.timingKeysData.planName.split(' ')[0]} ${widget.timingKeysData.planName.split(' ')[1].substring(0, 1)}...',
                              fontsize: 8.5.sp,
                              fontweight: FontWeight.w800,
                              fontcolor: AppColors.blackColor,
                            ),
                            InfoWidget(
                              infoTitle: (planTypeWithName ==
                                          'VERTICAL LAPPING NUMBER' ||
                                      planTypeWithName ==
                                          'HORIZONTAL LAPPING NUMBER' ||
                                      planTypeWithName ==
                                          'DIAGONAL LAPPING NUMBER')
                                  ? 'Lapping Number Key'
                                  : (planTypeWithName ==
                                              'VERTICAL BALL SPACING' ||
                                          planTypeWithName ==
                                              'HORIZONTAL BALL SPACING')
                                      ? 'Ball Spacing Keys'
                                      : (planTypeWithName ==
                                              ' SEQUENTIAL NUMBER')
                                          ? 'Sequential Number Keys'
                                          : (planTypeWithName ==
                                                  ' EVENT SUMMATION')
                                              ? 'Summation Keys'
                                              : (planTypeWithName ==
                                                      ' POLAR ADDITION')
                                                  ? 'Polar Addition Keys'
                                                  : (planTypeWithName ==
                                                              'UP PIVOTED NUMBER' ||
                                                          planTypeWithName ==
                                                              'DOWN PIVOTED NUMBER')
                                                      ? 'Pivoted Number Keys'
                                                      : (planTypeWithName ==
                                                                  'VERTICAL PROGRESSIVE NUMBER' ||
                                                              planTypeWithName ==
                                                                  'HORIZONTAL PROGRESSIVE NUMBER')
                                                          ? 'Progressive Number Keys'
                                                          : 'Constant Number Keys',
                              isFromAnalysiscard: true,
                              infoText: (planTypeWithName ==
                                          'VERTICAL LAPPING NUMBER' ||
                                      planTypeWithName ==
                                          'HORIZONTAL LAPPING NUMBER' ||
                                      planTypeWithName ==
                                          'DIAGONAL LAPPING NUMBER')
                                  ? 'is a showcase of potential lotto keys, using plan '
                                      'patterns of numbers lapping vertically, horizontally or diagonally, to decipher timing keys,that '
                                      'is likely to be used by the lottery system to drop its winning numbers.'
                                  : (planTypeWithName ==
                                              'VERTICAL BALL SPACING' ||
                                          planTypeWithName ==
                                              'HORIZONTAL BALL SPACING')
                                      ? 'are potential lotto keys generated by using a plan pattern that '
                                          'find the difference between,the balls of the winning numbers horizontally from '
                                          'left to right ([1-2],[2-3],[3-4],[4-5]), or'
                                          'vertically from top to bottom,([1-1],[2-2], [3-3],[4-4],[5-5]) to decipher timing keys, '
                                          'that is likely to be used by the lottery system to drop its next winning numbers.'
                                      : (planTypeWithName ==
                                              ' SEQUENTIAL NUMBER')
                                          ? 'are potential lotto keys generated by using a plan pattern,that arranges the five(5) winning number(s) of a given event base on their value, to get'
                                              'a verification code,this code is then used to decipher timing keys, '
                                              'that is likely to be used by the lottery system to drop its next winning numbers. '
                                              'be used by the lottery system to drop its winning numbers.'
                                          : (planTypeWithName ==
                                                  ' EVENT SUMMATION')
                                              ? 'are potential lotto keys generated by using a plan pattern that sum up the five(5) winning numbers, '
                                                  'with a constant number in the winning event,to decipher timing keys,that '
                                                  'is likely to be used by the lottery system to drop its winning numbers.'
                                              : (planTypeWithName ==
                                                      ' POLAR ADDITION')
                                                  ? 'are potential lotto keys generated by using a plan '
                                                      'pattern that sum up the 1st and 5th box winning numbers,with a constant '
                                                      'number in the winning event,to decipher timing keys,that is likely to '
                                                      'be used by the lottery system to drop its winning numbers.'
                                                  : (planTypeWithName ==
                                                              'UP PIVOTED NUMBER' ||
                                                          planTypeWithName ==
                                                              'DOWN PIVOTED NUMBER')
                                                      ? 'are potential lotto keys generated by using a plan pattern, that find three numbers in the winning draws of two '
                                                          'events at any position, this is done by either picking two(2) numbers from the '
                                                          'first event and one(1) from the second event or picking one(1) '
                                                          'number from the first event and two(2) from the second event, '
                                                          'to decipher timing keys,that is likely to be used by the lottery system to drop its winning numbers.'
                                                      : (planTypeWithName ==
                                                                  'VERTICAL PROGRESSIVE NUMBER' ||
                                                              planTypeWithName ==
                                                                  'HORIZONTAL PROGRESSIVE NUMBER')
                                                          ? 'are potential lotto keys generated by using a plan pattern that transform draw numbers in '
                                                              'two events to Sign Code. This is done,by checking if the next box ball value is '
                                                              'greater or lesser than the one before it,(e.g'
                                                              'if the value in box 1 is lesser than '
                                                              'that in box2 ~ sign code is Positive(+) , but if the value in box1 is greater than '
                                                              'that in box2 then the sign code is negative(-), if same the sign code is a '
                                                              'dot(.) These sign codes are then used to decipher timing keys,that is likely to be '
                                                              'used by the lottery system to drop its next winning numbers.'
                                                          : 'are potential lotto keys generated by using a plan pattern that find a ball number at a particular position '
                                                              'in the winning draw of a given event, this is used to decipher timing keys, '
                                                              'that is likely to be used by the lottery system to drop its winning numbers.',
                            )
                          ],
                        )),
                    SizedBox(height: 10.h),
                    CustomText(
                      title: widget.boardName,
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
