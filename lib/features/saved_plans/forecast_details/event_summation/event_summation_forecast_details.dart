import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/saved_plans/forecast_details/event_summation/event_summation_forecast_details_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/date_and_week_row.dart';
import 'package:lotto_grazer/res/components/number_card.dart';
import 'package:lotto_grazer/res/components/w_card.dart';
import 'package:lotto_grazer/res/components/custom_number_container.dart';
import 'package:lotto_grazer/res/components/custom_row_widget.dart';
import 'package:lotto_grazer/utils/utils.dart';

class EventSummationForecastDetails extends StatefulWidget {
  final String lotteryGameName;
  final String date;
  final String planType;
  final String planName;
  final String winningNum1;
  final String winningNum2;
  final String num1;
  final String num2;

  const EventSummationForecastDetails({
    super.key,
    required this.lotteryGameName,
    required this.date,
    required this.planType,
    required this.planName,
    required this.winningNum1,
    required this.winningNum2,
    required this.num1,
    required this.num2,
  });

  @override
  State<EventSummationForecastDetails> createState() =>
      _EventSummationForecastDetailsState();
}

class _EventSummationForecastDetailsState
    extends State<EventSummationForecastDetails> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final _vm = ref.watch(eventSummationForecastDetailsProvider);

      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(Utils.width(context) * 1, 70.h),
          child: const CustomAppBar(),
        ),
        body: ListView(
          children: [
            CustomContainer(
              width: Utils.width(context) * 1,
              height: 50.h,
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
            const DateAndWeekRow(
                gameName: "NL FORTUNE", countingWeek: "1", date: "02/05/2022"),
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
                            text: widget.planType,
                            style: TextStyle(
                                color: AppColors.redColor,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700),
                            children: [
                              TextSpan(
                                  text: '  ${widget.planName}',
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
                  height: 120.h,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          WCard(
                            label: widget.winningNum1,
                            borderColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: 5.h,
                          ),
                          WCard(
                            label: widget.winningNum2,
                            borderColor: Colors.transparent,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          NumberCardWithTitle(num: widget.num1, title: "SUM"),
                          SizedBox(
                            width: 5.h,
                          ),
                          NumberCardWithTitle(
                              num: widget.num2, title: "CONSTANT"),
                        ],
                      )
                    ],
                  ),
                ),
                CustomContainer(
                  width: Utils.width(context) * 0.6,
                  height: 120.h,
                  padding: EdgeInsets.all(10.sm),
                  title:
                      'In any two given event the sum of the five(5) winning numbers '
                      'must be equal to ${widget.num1} with a constant number ${widget.num2} '
                      'at the 3rd winning numbers.',
                  bgColor: AppColors.whiteColor.withOpacity(0.1),
                  fgColor: AppColors.blackColor,
                  fontsize: 14.sp,
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
            const CustomRowWidget(
              c1text: 'SPECIAL MONDAY',
              c2text: '931 - 933',
            ),
            const CustomRowWidget(
              c1text: 'LUCKY TUESDAY',
              c2text: '223 - 225',
            ),
            const CustomRowWidget(
              c1text: 'MIDWEEK',
              c2text: '1423 - 1425',
            ),
            const CustomRowWidget(
              c1text: 'FORTUNE',
              c2text: '123 - 125',
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
            CustomContainer(
              width: Utils.width(context) * 1,
              height: 100.h,
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
              title:
                  'Counting 3 weeks up from the plan, the five(5) winning numbers of the event will counter and drop as a banker,8 weeks down',
              bgColor: AppColors.whiteColor.withOpacity(0.1),
              fgColor: AppColors.blackColor,
              fontsize: 14.sp,
              fontweight: FontWeight.w600,
              align: TextAlign.left,
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 3.w,
                ),
              ),
            ),
            CustomContainer(
              width: Utils.width(context) * 1,
              height: 40.h,
              title: 'PROJECTED BANKERS',
              bgColor: AppColors.greyColor.withOpacity(0.5),
              fgColor: AppColors.blackColor,
              fontsize: 15.sp,
              fontweight: FontWeight.w700,
              align: TextAlign.center,
            ),
            CustomChildContainer(
              width: Utils.width(context) * 0.7,
              height: 55.h,
              margin: EdgeInsets.only(bottom: 4.h),
              bgColor: AppColors.whiteColor.withOpacity(0.1),
              border: Border(
                bottom: BorderSide(
                  width: 3.w,
                  color: AppColors.lightBlueColor,
                ),
                top: BorderSide(
                  width: 3.w,
                  color: AppColors.lightBlueColor,
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => CustomContainer(
                      width: Utils.width(context) * 0.2,
                      height: 50.h,
                      padding: EdgeInsets.all(5.sm),
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3.w,
                        color: AppColors.lightBlueColor,
                      ),
                      title: '1',
                      bgColor: AppColors.whiteColor.withOpacity(0.1),
                      fgColor: AppColors.blackColor,
                      fontsize: 15.sp,
                      align: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: CustomButton(
                btnwidth: Utils.width(context) * 0.05,
                bottomLeftRadius: 3.r,
                topLeftRadius: 3.r,
                bottomRightRadius: 3.r,
                topRightRadius: 3.r,
                bgColor: AppColors.blackColor.withOpacity(0.8),
                title: 'STAKE',
                fontsize: 15.sp,
                fontweight: FontWeight.w700,
                onpress: () {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomContainer(
                  width: Utils.width(context) * 0.2,
                  height: 30.h,
                  padding: EdgeInsets.all(5.sm),
                  border: Border.all(
                    width: 0.0,
                    color: AppColors.whiteColor.withOpacity(0.1),
                  ),
                  title: 'BEST 3 :',
                  bgColor: AppColors.whiteColor.withOpacity(0.1),
                  fgColor: AppColors.blackColor,
                  fontsize: 15.sp,
                  fontweight: FontWeight.w700,
                  align: TextAlign.center,
                ),
                SizedBox(
                  width: Utils.width(context) * 0.15,
                ),
                const CustomNumberContainer(
                  title: '1',
                ),
                const CustomNumberContainer(
                  title: '1',
                ),
                const CustomNumberContainer(
                  title: '1',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomContainer(
                  width: Utils.width(context) * 0.2,
                  height: 30.h,
                  padding: EdgeInsets.all(5.sm),
                  border: Border.all(
                    width: 0.0,
                    color: AppColors.whiteColor.withOpacity(0.1),
                  ),
                  title: 'BEST 5 :',
                  bgColor: AppColors.whiteColor.withOpacity(0.1),
                  fgColor: AppColors.blackColor,
                  fontsize: 15.sp,
                  fontweight: FontWeight.w700,
                  align: TextAlign.center,
                ),
                SizedBox(
                  width: Utils.width(context) * 0.025,
                ),
                const CustomNumberContainer(
                  title: '1',
                ),
                const CustomNumberContainer(
                  title: '1',
                ),
                const CustomNumberContainer(
                  title: '1',
                ),
                const CustomNumberContainer(
                  title: '1',
                ),
                const CustomNumberContainer(
                  title: '1',
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Center(
              child: CustomButton(
                btnwidth: Utils.width(context) * 0.6,
                btnheight: 35.h,
                bottomLeftRadius: 5.r,
                topLeftRadius: 5.r,
                bottomRightRadius: 5.r,
                topRightRadius: 5.r,
                bdwidth: 2.w,
                bgColor: const Color(0xFF2f5597),
                title: 'VIEW REFENCE CHARTS',
                fontsize: 14.sp,
                fontweight: FontWeight.w700,
                onpress: () {},
              ),
            ),
          ],
        ),
      );
    });
  }
}
