import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/features/saved_plans/forecast_details/pivoted_number/pivoted_number_forecast_details_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/number_card.dart';
import 'package:lotto_grazer/res/components/w_card.dart';
import 'package:lotto_grazer/res/components/custom_number_container.dart';
import 'package:lotto_grazer/res/components/custom_row_widget.dart';
import 'package:lotto_grazer/utils/utils.dart';

class PivotedNumberForecastDetails extends StatefulWidget {
  final String lotteryGameName;
  final String date;
  final String planType;
  final String planName;
  final String winningNum1;
  final String num1;
  final String num2;
  final String num3;
  final bool isUpwardPivoted;

  const PivotedNumberForecastDetails({
    super.key,
    required this.lotteryGameName,
    required this.date,
    required this.planType,
    required this.planName,
    required this.winningNum1,
    required this.num1,
    required this.num2,
    required this.num3,
    required this.isUpwardPivoted,
  });

  @override
  State<PivotedNumberForecastDetails> createState() =>
      _PivotedNumberForecastDetailsState();
}

class _PivotedNumberForecastDetailsState
    extends State<PivotedNumberForecastDetails> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final _vm = ref.watch(pivotedNumberForecastDetailsProvider);

      return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
          child: const CutomAppBar(),
        ),
        body: ListView(
          children: [
            CustomContainer(
              width: Utils.width(context) * 1,
              height: Utils.height(context) * 0.08,
              title: 'FORCAST DETAILS',
              bgColor: AppColors.blackColor,
              fgColor: AppColors.whiteColor,
              fontsize: 18.0,
              fontweight: FontWeight.w800,
              border: Border.all(
                width: 0.0,
                color: AppColors.blackColor,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: Utils.width(context) * 0.5,
                  height: Utils.height(context) * 0.08,
                  child: CustomContainer(
                    title: widget.lotteryGameName,
                    bgColor: AppColors.whiteColor.withOpacity(0.1),
                    fgColor: AppColors.blackColor,
                    fontsize: 16.0,
                    align: TextAlign.center,
                    fontweight: FontWeight.w800,
                    border: const Border(
                      right: BorderSide(
                        width: 3.0,
                        color: AppColors.blackColor,
                      ),
                      bottom: BorderSide(
                        width: 3.0,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Utils.height(context) * 0.08,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: Utils.width(context) * 0.35,
                            height: Utils.height(context) * 0.04,
                            child: CustomContainer(
                              title: 'COUNTING WEEKS',
                              bgColor: AppColors.whiteColor.withOpacity(0.1),
                              fgColor: AppColors.blackColor,
                              fontsize: 10.0,
                              align: TextAlign.center,
                              fontweight: FontWeight.w700,
                              border: const Border(
                                right: BorderSide(
                                  width: 3.0,
                                  color: AppColors.blackColor,
                                ),
                                bottom: BorderSide(
                                  width: 3.0,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Utils.width(context) * 0.15,
                            height: Utils.height(context) * 0.04,
                            child: CustomContainer(
                              title: '1',
                              bgColor: AppColors.whiteColor.withOpacity(0.1),
                              fgColor: AppColors.blackColor,
                              fontsize: 10.0,
                              align: TextAlign.center,
                              fontweight: FontWeight.w700,
                              border: const Border(
                                bottom: BorderSide(
                                  width: 3.0,
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
                            height: Utils.height(context) * 0.04,
                            child: CustomContainer(
                              title: 'UPDATED',
                              bgColor: AppColors.whiteColor.withOpacity(0.1),
                              fgColor: AppColors.blackColor,
                              fontsize: 10.0,
                              align: TextAlign.center,
                              fontweight: FontWeight.w700,
                              border: const Border(
                                right: BorderSide(
                                  width: 3.0,
                                  color: AppColors.blackColor,
                                ),
                                bottom: BorderSide(
                                  width: 3.0,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Utils.width(context) * 0.25,
                            height: Utils.height(context) * 0.04,
                            child: CustomContainer(
                              title: widget.date,
                              bgColor: AppColors.whiteColor.withOpacity(0.1),
                              fgColor: AppColors.blackColor,
                              fontsize: 10.0,
                              align: TextAlign.center,
                              fontweight: FontWeight.w700,
                              border: const Border(
                                bottom: BorderSide(
                                  width: 3.0,
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
            ),
            Row(
              children: [
                CustomContainer(
                  width: Utils.width(context) * 0.4,
                  height: Utils.height(context) * 0.07,
                  title: 'PLAN',
                  bgColor: AppColors.greyColor.withOpacity(0.5),
                  fgColor: AppColors.blackColor,
                  fontsize: 16.0,
                  fontweight: FontWeight.w700,
                  align: TextAlign.center,
                  border: const Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                    right: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                ),
                CustomChildContainer(
                  width: Utils.width(context) * 0.6,
                  height: Utils.height(context) * 0.07,
                  bgColor: AppColors.greyColor.withOpacity(0.5),
                  border: const Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                  child: Center(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: widget.isUpwardPivoted ? 'UP' : 'DOWN',
                            style: const TextStyle(
                                color: AppColors.redColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                            children: [
                              TextSpan(
                                  text: '  ${widget.planName}',
                                  style: const TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 14,
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
                  height: Utils.height(context) * 0.16,
                  bgColor: AppColors.whiteColor.withOpacity(0.1),
                  border: const Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                    right: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          WCard(
                            label: widget.winningNum1,
                            borderColor: Colors.transparent,
                          ),
                        ],
                      ),
                      if (widget.isUpwardPivoted)
                        NumberCard(label: widget.num1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          NumberCard(label: widget.num2),
                          NumberCard(label: widget.num3),
                        ],
                      ),
                      if (!widget.isUpwardPivoted)
                        NumberCard(label: widget.num1),
                    ],
                  ),
                ),
                CustomContainer(
                  width: Utils.width(context) * 0.6,
                  height: Utils.height(context) * 0.16,
                  padding: const EdgeInsets.all(10.0),
                  title: widget.isUpwardPivoted
                      ? 'In any two given event the number ${widget.num1} '
                          'must be in the event of the 1st event winning numbers '
                          'and ${widget.num2} and  ${widget.num3} must be in '
                          '2nd event winning numbers.'
                      : 'In any two given event the number ${widget.num2} and  ${widget.num3} '
                          'must be in the 1st event winning numbers '
                          'and ${widget.num1} must be in 2nd event winning numbers.',
                  bgColor: AppColors.whiteColor.withOpacity(0.1),
                  fgColor: AppColors.blackColor,
                  fontsize: 15.0,
                  fontweight: FontWeight.w600,
                  align: TextAlign.left,
                  border: const Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                ),
              ],
            ),
            CustomContainer(
              width: Utils.width(context) * 1,
              height: Utils.height(context) * 0.06,
              title: 'REFERENCE EVENTS',
              bgColor: AppColors.greyColor.withOpacity(0.5),
              fgColor: AppColors.blackColor,
              fontsize: 16.0,
              fontweight: FontWeight.w700,
              align: TextAlign.center,
              border: const Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 3.0,
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
              height: Utils.height(context) * 0.06,
              title: 'KEY FORECAST',
              bgColor: AppColors.greyColor.withOpacity(0.5),
              fgColor: AppColors.blackColor,
              fontsize: 16.0,
              fontweight: FontWeight.w700,
              align: TextAlign.center,
              border: const Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 3.0,
                ),
              ),
            ),
            CustomContainer(
              width: Utils.width(context) * 1,
              height: Utils.height(context) * 0.085,
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
              title: 'Counting 3 weeks up from the plan, the five(5) '
                  'winning numbers of the event will counter and '
                  'drop as a banker, 8 weeks down.',
              bgColor: AppColors.whiteColor.withOpacity(0.1),
              fgColor: AppColors.blackColor,
              fontsize: 15.0,
              fontweight: FontWeight.w500,
              align: TextAlign.left,
              border: const Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 3.0,
                ),
              ),
            ),
            CustomContainer(
              width: Utils.width(context) * 1,
              height: Utils.height(context) * 0.04,
              // padding: const EdgeInsets.all(15.0),
              title: 'PROJECTED BANKERS',
              bgColor: AppColors.greyColor.withOpacity(0.5),
              fgColor: AppColors.blackColor,
              fontsize: 16.0,
              fontweight: FontWeight.w700,
              align: TextAlign.center,
            ),
            CustomChildContainer(
              width: Utils.width(context) * 0.7,
              height: Utils.height(context) * 0.08,
              margin: const EdgeInsets.only(bottom: 4.0),
              bgColor: AppColors.whiteColor.withOpacity(0.1),
              border: const Border(
                bottom: BorderSide(
                  width: 3.0,
                  color: AppColors.lightBlueColor,
                ),
                top: BorderSide(
                  width: 3.0,
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
                      height: Utils.height(context) * 0.08,
                      padding: const EdgeInsets.all(5.0),
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3.0,
                        color: AppColors.lightBlueColor,
                      ),
                      title: '1',
                      bgColor: AppColors.whiteColor.withOpacity(0.1),
                      fgColor: AppColors.blackColor,
                      fontsize: 15.0,
                      align: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: CustomButton(
                btnwidth: Utils.width(context) * 0.05,
                bottomLeftRadius: 3.0,
                topLeftRadius: 3.0,
                bottomRightRadius: 3.0,
                topRightRadius: 3.0,
                bgColor: AppColors.blackColor.withOpacity(0.8),
                title: 'STAKE',
                fontsize: 16.0,
                fontweight: FontWeight.w700,
                onpress: () {},
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomContainer(
                  width: Utils.width(context) * 0.2,
                  height: Utils.height(context) * 0.08,
                  padding: const EdgeInsets.all(5.0),
                  // margin: const EdgeInsets.all(5.0),
                  border: Border.all(
                    width: 0.0,
                    color: AppColors.whiteColor.withOpacity(0.1),
                  ),
                  title: 'BEST 3 :',
                  bgColor: AppColors.whiteColor.withOpacity(0.1),
                  fgColor: AppColors.blackColor,
                  fontsize: 16.0,
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
                  height: Utils.height(context) * 0.08,
                  padding: const EdgeInsets.all(5.0),
                  border: Border.all(
                    width: 0.0,
                    color: AppColors.whiteColor.withOpacity(0.1),
                  ),
                  title: 'BEST 5 :',
                  bgColor: AppColors.whiteColor.withOpacity(0.1),
                  fgColor: AppColors.blackColor,
                  fontsize: 16.0,
                  fontweight: FontWeight.w700,
                  align: TextAlign.center,
                ),
                // SizedBox(
                //   width: Utils.width(context) * 0.1,
                // ),
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
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  btnwidth: Utils.width(context) * 0.6,
                  btnheight: Utils.height(context) * 0.05,
                  bottomLeftRadius: 5.0,
                  topLeftRadius: 5.0,
                  bottomRightRadius: 5.0,
                  topRightRadius: 5.0,
                  bdwidth: 2.0,
                  bgColor: const Color(0xFF2f5597),
                  title: 'VIEW REFENCE CHARTS',
                  fontsize: 14.0,
                  fontweight: FontWeight.w700,
                  onpress: () {},
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
