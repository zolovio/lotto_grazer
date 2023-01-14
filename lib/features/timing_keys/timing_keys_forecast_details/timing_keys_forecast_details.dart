import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/timing_keys/timing_keys_forecast_details/timing_keys_forecast_details_vm.dart';
import 'package:lotto_grazer/features/timing_keys/timing_keys_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/components/date_and_week_row.dart';
import 'package:lotto_grazer/res/components/number_card.dart';
import 'package:lotto_grazer/res/components/w_card.dart';
import 'package:lotto_grazer/res/components/custom_row_widget.dart';
import 'package:lotto_grazer/utils/utils.dart';

class TimingKeysForecastDetails extends StatefulWidget {
  final TimingKeysData plansData;
  final String countingWeek;

  const TimingKeysForecastDetails(
      {super.key, required this.plansData, required this.countingWeek});

  @override
  State<TimingKeysForecastDetails> createState() =>
      _TimingKeysForecastDetailsState();
}

class _TimingKeysForecastDetailsState extends State<TimingKeysForecastDetails> {
  @override
  Widget build(BuildContext context) {
    String planTypeWithName =
        '${widget.plansData.planType} ${widget.plansData.planName}';

    return Consumer(builder: (context, ref, _) {
      final vm = ref.watch(timingKeysForecastDetailsProvider);
      return SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(Utils.width(context) * 1, 60.h),
            child: const CustomAppBar(),
          ),
          body: ListView(
            children: [
              CustomContainer(
                width: Utils.width(context) * 1,
                height: 40.h,
                title: 'FORCAST DETAILS',
                bgColor: AppColors.blackColor,
                fgColor: AppColors.whiteColor,
                fontsize: 17.sp,
                fontweight: FontWeight.w700,
                border: Border.all(
                  width: 0.0,
                  color: AppColors.blackColor,
                ),
              ),
              DateAndWeekRow(
                  gameName: widget.plansData.lotteryGameName,
                  countingWeek: widget.countingWeek,
                  date: '02/12/2022'),
              Row(
                children: [
                  CustomContainer(
                    width: Utils.width(context) * 0.4,
                    height: 50.h,
                    title: 'PLAN',
                    bgColor: AppColors.greyColor.withOpacity(0.5),
                    fgColor: AppColors.blackColor,
                    fontsize: 15.sp,
                    fontweight: FontWeight.w700,
                    align: TextAlign.center,
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3.w,
                      ),
                      right: BorderSide(
                        color: Colors.black,
                        width: 3.w,
                      ),
                    ),
                  ),
                  CustomChildContainer(
                    width: Utils.width(context) * 0.6,
                    height: 50.h,
                    bgColor: AppColors.greyColor.withOpacity(0.5),
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3.w,
                      ),
                    ),
                    child: Center(
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: widget.plansData.planType,
                              style: TextStyle(
                                  color: AppColors.redColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700),
                              children: [
                                TextSpan(
                                    text: '  ${widget.plansData.planName}',
                                    style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700))
                              ])),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomChildContainer(
                    width: Utils.width(context) * 0.4,
                    height: 140.h,
                    bgColor: AppColors.whiteColor.withOpacity(0.1),
                    border: Border(
                      bottom: BorderSide(
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
                      crossAxisAlignment:
                          (widget.plansData.planName == 'PROGRESSIVE NUMBER')
                              ? CrossAxisAlignment.stretch
                              : CrossAxisAlignment.center,
                      children: [
                        // vertical lapping numbers
                        if (widget.plansData.planType == "VERTICAL" &&
                            widget.plansData.planName == 'LAPPING NUMBER') ...[
                          WCard(
                            label: widget.plansData.winningNum1,
                            borderColor: Colors.transparent,
                          ),
                          NumberCard(
                            label: widget.plansData.num1,
                          ),
                          NumberCard(
                            label: widget.plansData.num2,
                          )
                        ],
                        // diagonal lapping number
                        if (widget.plansData.planType == "DIAGONAL" &&
                            widget.plansData.planName == 'LAPPING NUMBER') ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              WCard(
                                label: widget.plansData.winningNum1,
                                borderColor: Colors.transparent,
                              ),
                              WCard(
                                label: widget.plansData.winningNum2,
                                borderColor: Colors.transparent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              NumberCard(
                                  label: widget.plansData.isRightDiagonal
                                      ? ''
                                      : widget.plansData.num1),
                              NumberCard(
                                  label: widget.plansData.isRightDiagonal
                                      ? widget.plansData.num1
                                      : ''),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              NumberCard(
                                  label: widget.plansData.isRightDiagonal
                                      ? widget.plansData.num2
                                      : ''),
                              NumberCard(
                                  label: widget.plansData.isRightDiagonal
                                      ? ''
                                      : widget.plansData.num2),
                            ],
                          ),
                        ],
                        // horizontal lapping number
                        if (widget.plansData.planType == "HORIZONTAL" &&
                            widget.plansData.planName == 'LAPPING NUMBER') ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              WCard(
                                label: widget.plansData.winningNum1,
                                borderColor: Colors.transparent,
                              ),
                              WCard(
                                label: widget.plansData.winningNum2,
                                borderColor: Colors.transparent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              NumberCard(label: widget.plansData.num1),
                              NumberCard(label: widget.plansData.num2),
                            ],
                          ),
                        ],
                        // Pivoted numbers
                        if (widget.plansData.planName == 'PIVOTED NUMBER') ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              WCard(
                                label: widget.plansData.winningNum1,
                                borderColor: Colors.transparent,
                              ),
                            ],
                          ),
                          if (widget.plansData.isUpwardPivoted)
                            NumberCard(label: widget.plansData.num1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              NumberCard(label: widget.plansData.num2),
                              NumberCard(label: widget.plansData.num3),
                            ],
                          ),
                          if (!widget.plansData.isUpwardPivoted)
                            NumberCard(label: widget.plansData.num1),
                        ],
                        // Ball Spacing
                        if (widget.plansData.planName == 'BALL SPACING') ...[
                          if (widget.plansData.planType == 'VERTICAL') ...[
                            WCard(
                              label: widget.plansData.winningNum1,
                              borderColor: Colors.transparent,
                            ),
                            WCard(
                              label: widget.plansData.winningNum2,
                              borderColor: Colors.transparent,
                            ),
                          ],
                          if (widget.plansData.planType == 'HORIZONTAL')
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                WCard(
                                  label: widget.plansData.winningNum1,
                                  borderColor: Colors.transparent,
                                ),
                                WCard(
                                  label: widget.plansData.winningNum2,
                                  borderColor: Colors.transparent,
                                ),
                              ],
                            ),
                          NumberCardWithTitle(
                              num: widget.plansData.num1, title: "SPACING")
                        ],
                        // Event Summation
                        if (widget.plansData.planName == 'EVENT SUMMATION') ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              WCard(
                                label: widget.plansData.winningNum1,
                                borderColor: Colors.transparent,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              WCard(
                                label: widget.plansData.winningNum2,
                                borderColor: Colors.transparent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              NumberCardWithTitle(
                                  num: widget.plansData.num1, title: "SUM"),
                              SizedBox(
                                width: 4.w,
                              ),
                              NumberCardWithTitle(
                                  num: widget.plansData.num2,
                                  title: "CONSTANT"),
                            ],
                          )
                        ],
                        // Polar Addition
                        if (widget.plansData.planName == 'POLAR ADDITION') ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              WCard(
                                label: widget.plansData.winningNum1,
                                borderColor: Colors.transparent,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              WCard(
                                label: widget.plansData.winningNum2,
                                borderColor: Colors.transparent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              NumberCardWithTitle(
                                  num: widget.plansData.num1,
                                  title: "ADDITION"),
                              SizedBox(
                                width: 4.w,
                              ),
                              NumberCardWithTitle(
                                  num: widget.plansData.num2,
                                  title: "CONSTANT"),
                            ],
                          )
                        ],
                        // Sequential Number
                        if (widget.plansData.planName ==
                            'SEQUENTIAL NUMBER') ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              WCard(
                                label: widget.plansData.winningNum1,
                                borderColor: Colors.transparent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              NumberCardWithTitle(
                                  num: widget.plansData.num1, title: "V-CODE"),
                            ],
                          )
                        ],
                        // Progressive Number
                        if (widget.plansData.planName ==
                            'PROGRESSIVE NUMBER') ...[
                          WCard(
                            label: widget.plansData.winningNum1,
                            borderColor: Colors.transparent,
                          ),
                          if (widget.plansData.planType == 'HORIZONTAL') ...[
                            CustomChildContainer(
                              padding: EdgeInsets.all(8.sm),
                              bgColor: Colors.transparent,
                              child: Text(
                                widget.plansData.signCode1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    wordSpacing: 10.w,
                                    letterSpacing: 5.w),
                              ),
                            ),
                            CustomChildContainer(
                              padding: EdgeInsets.all(8.sm),
                              bgColor: Colors.transparent,
                              child: Text(
                                widget.plansData.signCode2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    wordSpacing: 10.w,
                                    letterSpacing: 5.w),
                              ),
                            ),
                          ],
                          if (widget.plansData.planType == 'VERTICAL') ...[
                            CustomChildContainer(
                              padding: EdgeInsets.all(8.sm),
                              bgColor: Colors.transparent,
                              height: 50.h,
                              child: Center(
                                child: Text(
                                  widget.plansData.signCode1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w900,
                                      wordSpacing: 20.w,
                                      letterSpacing: 5.w),
                                ),
                              ),
                            ),
                          ],
                          CustomContainer(
                            margin: EdgeInsets.only(left: 8.w, right: 8.w),
                            height: 35.h,
                            title: "SIGN CODE",
                            bgColor: AppColors.blueColor,
                            fgColor: AppColors.whiteColor,
                            fontsize: 10.sp,
                            fontweight: FontWeight.w900,
                            align: TextAlign.center,
                            border: Border.all(
                              color: AppColors.lightBlueColor,
                              width: 2.0,
                            ),
                          ),
                        ],

                        // Constant Position
                        if (widget.plansData.planName ==
                            'CONSTANT POSITION') ...[
                          WCard(
                            label: widget.plansData.winningNum1,
                            borderColor: Colors.transparent,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          NumberCard(
                            label: widget.plansData.num1,
                          ),
                        ],
                      ],
                    ),
                  ),
                  CustomContainer(
                    width: Utils.width(context) * 0.6,
                    height: 140.h,
                    padding: EdgeInsets.all(10.sm),
                    title: (planTypeWithName == 'VERTICAL LAPPING NUMBER')
                        ? 'In any two given event the number ${widget.plansData.num1} Laps ${widget.plansData.num2} on the 3rd box (${widget.plansData.winningNum1.toUpperCase()}) winning vertically.'
                        : (planTypeWithName == 'HORIZONTAL LAPPING NUMBER')
                            ? 'In any two given event the number ${widget.plansData.num1} Laps ${widget.plansData.num2} on the 2nd box(${widget.plansData.winningNum2.toUpperCase()}) and 3rd box(${widget.plansData.winningNum1.toUpperCase()}) winning horizontally.'
                            : (planTypeWithName == 'DIAGONAL LAPPING NUMBER' &&
                                    widget.plansData.isRightDiagonal)
                                ? 'In any two given event the number ${widget.plansData.num1} '
                                    'Laps ${widget.plansData.num2} on the 2nd box(${widget.plansData.winningNum2.toUpperCase()}) and 1st box(${widget.plansData.winningNum1.toUpperCase()}) winning diagonally.'
                                : (planTypeWithName ==
                                            'DIAGONAL LAPPING NUMBER' &&
                                        !widget.plansData.isRightDiagonal)
                                    ? 'In any two given event the number ${widget.plansData.num1} '
                                        'Laps ${widget.plansData.num2} on the 1st box(${widget.plansData.winningNum1.toUpperCase()}) and 2nd box(${widget.plansData.winningNum2.toUpperCase()}) winning diagonally.'
                                    : (planTypeWithName ==
                                            'VERTICAL BALL SPACING')
                                        ? 'In any two given event the number difference '
                                            'between the 1st box(${widget.plansData.winningNum1.toUpperCase()}) winning number on the first event and 1st box(${widget.plansData.winningNum2.toUpperCase()}) winning numbers '
                                            'on the 2nd event must be equal to ${widget.plansData.num1}'
                                        : (planTypeWithName ==
                                                'HORIZONTAL BALL SPACING')
                                            ? 'In any given event the number difference between the 1st box(${widget.plansData.winningNum1.toUpperCase()}) and 2nd '
                                                'box(${widget.plansData.winningNum2.toUpperCase()}) winning numbers must be equal to ${widget.plansData.num1}'
                                            : (planTypeWithName ==
                                                    ' SEQUENTIAL NUMBER')
                                                ? 'In any given event on board, the five(5) winning numbers '
                                                    'must have a numeric order ${widget.plansData.num1}.'
                                                : (planTypeWithName ==
                                                        ' EVENT SUMMATION')
                                                    ? 'In any two given event the sum of the five(5) winning numbers(W) '
                                                        'must be equal to ${widget.plansData.num1} with a constant number ${widget.plansData.num2} '
                                                        'at the 3rd box(${widget.plansData.winningNum2.toUpperCase()}) winning.'
                                                    : (planTypeWithName ==
                                                            ' POLAR ADDITION')
                                                        ? 'In any given event the sum of the first(W1) and fifth(W5) winning numbers '
                                                            'must be equal to ${widget.plansData.num1} with a constant number ${widget.plansData.num2} '
                                                            'at the 3rd box(${widget.plansData.winningNum2.toUpperCase()}) winning.'
                                                        : (planTypeWithName ==
                                                                'UP PIVOTED NUMBER')
                                                            ? 'In any two given event the number ${widget.plansData.num1} '
                                                                'must be in the 1st event winning numbers '
                                                                'and ${widget.plansData.num2} and  ${widget.plansData.num3} must be in '
                                                                '2nd event winning numbers.'
                                                            : (planTypeWithName ==
                                                                    'DOWN PIVOTED NUMBER')
                                                                ? 'In any two given event the number ${widget.plansData.num2} and  ${widget.plansData.num3} '
                                                                    'must be in the 1st event winning numbers '
                                                                    'and ${widget.plansData.num1} must be in 2nd event winning numbers.'
                                                                : (planTypeWithName ==
                                                                        'VERTICAL PROGRESSIVE NUMBER')
                                                                    ? 'In any two given event the five(5) winning numbers vertical '
                                                                        'progressive sign code of must be ${widget.plansData.signCode1}.'
                                                                    : (planTypeWithName ==
                                                                            'HORIZONTAL PROGRESSIVE NUMBER')
                                                                        ? 'In any two given event, the five(5) winning numbers horizontal '
                                                                            'progressive sign code of the 1st event must be  ${widget.plansData.signCode1} '
                                                                            'and that of the 2nd event must be  ${widget.plansData.signCode2}.'
                                                                        : 'In any given event, a constant number ${widget.plansData.num1} '
                                                                            'must be in the 1st box(${widget.plansData.winningNum1.toUpperCase()}) winning number.',
                    bgColor: AppColors.whiteColor.withOpacity(0.1),
                    fgColor: AppColors.blackColor,
                    fontsize: 15.sp,
                    fontweight: FontWeight.w600,
                    align: TextAlign.left,
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3.w,
                      ),
                    ),
                  ),
                ],
              ),
              CustomContainer(
                width: Utils.width(context) * 1,
                height: 40.h,
                title: 'REFERENCE EVENTS',
                bgColor: AppColors.greyColor.withOpacity(0.5),
                fgColor: AppColors.blackColor,
                fontsize: 15.sp,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 3.w,
                  ),
                ),
              ),
              SizedBox(
                width: Utils.width(context) * 1,
                child: Row(
                  children: const [
                    Flexible(
                      flex: 1,
                      child: CustomRowWidget(
                        c1text: 'MONDAY\nSPECIAL',
                        c2text: '124',
                        isColumn: true,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: CustomRowWidget(
                        c1text: 'MONDAY\nSPECIAL',
                        c2text: '323',
                        isColumn: true,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: CustomRowWidget(
                        c1text: 'MONDAY\nSPECIAL',
                        c2text: '424',
                        isColumn: true,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: CustomRowWidget(
                        c1text: 'MONDAY\nSPECIAL',
                        c2text: '524',
                        isColumn: true,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: CustomRowWidget(
                        c1text: 'MONDAY\nSPECIAL',
                        c2text: '624',
                        isColumn: true,
                        showRightBorder: false,
                      ),
                    ),
                  ],
                ),
              ),
              CustomContainer(
                width: Utils.width(context) * 1,
                height: 40.h,
                title: 'KEY FORECAST',
                bgColor: AppColors.greyColor.withOpacity(0.5),
                fgColor: AppColors.blackColor,
                fontsize: 15.sp,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 3.w,
                  ),
                ),
              ),
              CustomChildContainer(
                width: Utils.width(context) * 1,
                height: 85.h,
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 3.w,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title:
                            '1. Counting 3 weeks up from the plan, the 2nd box winning number of the event will counter and drop as a banker.',
                        fontcolor: AppColors.blackColor,
                        fontsize: 14.sp,
                        fontweight: FontWeight.w500,
                        align: TextAlign.left,
                      ),
                      Center(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'CASE1 : ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp),
                              ),
                              const TextSpan(text: '5 COUNTER '),
                              TextSpan(
                                text: '50',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'CASE2 : ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp),
                              ),
                              const TextSpan(text: '3 COUNTER '),
                              TextSpan(
                                text: '48',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'CASE3 : ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp),
                              ),
                              const TextSpan(text: '9 COUNTER '),
                              TextSpan(
                                text: '54',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomText(
                        title:
                            '2. Counting 5 weeks up from the plan the 5th box.',
                        fontcolor: AppColors.blackColor,
                        fontsize: 14.sp,
                        fontweight: FontWeight.w500,
                        align: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
              CustomContainer(
                width: Utils.width(context) * 1,
                height: 40.h,
                title: 'PROJECTED NUMBERS',
                bgColor: AppColors.greyColor.withOpacity(0.5),
                fgColor: AppColors.blackColor,
                fontsize: 15.sp,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
              ),
              CustomChildContainer(
                width: Utils.width(context) * 0.7,
                height: 75.h,
                margin: EdgeInsets.only(bottom: 10.h),
                bgColor: AppColors.greyColor.withOpacity(0.5),
                border: Border(
                  bottom: BorderSide(
                    width: 3.w,
                    color: AppColors.lightBlueColor,
                  ),
                  top: BorderSide(
                    width: 3.w,
                    color: AppColors.blackColor,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    vm.projectedNumbersList.length,
                    (index) => CustomContainer(
                      width: Utils.width(context) * 0.2,
                      height: 50.h,
                      padding: EdgeInsets.all(5.sm),
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3.w,
                        color: AppColors.lightBlueColor,
                      ),
                      title: vm.projectedNumbersList[index].toString(),
                      bgColor: AppColors.whiteColor.withOpacity(0.1),
                      fgColor: AppColors.blackColor,
                      fontsize: 15.sp,
                      fontweight: FontWeight.w700,
                      align: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    btnwidth: Utils.width(context) * 0.3,
                    btnheight: 35.h,
                    bottomLeftRadius: 5.r,
                    topLeftRadius: 5.r,
                    bottomRightRadius: 5.r,
                    topRightRadius: 5.r,
                    bdwidth: 2.w,
                    bgColor: AppColors.blueColor,
                    title: 'SAVE',
                    fontsize: 14.sp,
                    fontweight: FontWeight.w600,
                    onpress: () {},
                  ),
                  CustomButton(
                    btnwidth: Utils.width(context) * 0.6,
                    btnheight: 35.h,
                    bottomLeftRadius: 5.r,
                    topLeftRadius: 5.r,
                    bottomRightRadius: 5.r,
                    topRightRadius: 5.r,
                    bdwidth: 2.w,
                    bgColor: const Color(0xFF2f5597),
                    title: 'VIEW PLAN ON CHARTS',
                    fontsize: 14.sp,
                    fontweight: FontWeight.w600,
                    onpress: () => vm.viewReferenceEvents(context),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      );
    });
  }
}
