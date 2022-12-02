import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/features/grenco_key_chart/forecast_details/grenco_forecast_details_vm.dart';
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

class GrencoForecastDetails extends StatefulWidget {
  final String num1;
  final String num2;
  final String countingWeek;
  final String planName;
  const GrencoForecastDetails(
      {super.key,
      required this.num1,
      required this.num2,
      required this.planName,
      required this.countingWeek});

  @override
  State<GrencoForecastDetails> createState() => _GrencoForecastDetailsState();
}

class _GrencoForecastDetailsState extends State<GrencoForecastDetails> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final vm = ref.watch(grencoForecastDetailsProvider);

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
                    title: widget.planName,
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
                              title: widget.countingWeek,
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
                              title: '02/06/2022',
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
                CustomContainer(
                  width: Utils.width(context) * 0.6,
                  height: Utils.height(context) * 0.07,
                  title: 'LAPPING NUMBER',
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
                      WCard(
                        label: 'W3',
                        borderColor: Colors.transparent,
                      ),
                      NumberCard(
                        label: widget.num1,
                      ),
                      NumberCard(
                        label: widget.num2,
                      ),
                    ],
                  ),
                ),
                CustomContainer(
                  width: Utils.width(context) * 0.6,
                  height: Utils.height(context) * 0.16,
                  padding: const EdgeInsets.all(10.0),
                  title:
                      'In any two given event the number ${widget.num1} Laps ${widget.num2}  on the 3rd box winning.',
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
              c1text: 'PM GOLD',
              c2text: '133 - 134',
            ),
            const CustomRowWidget(
              c1text: 'PM GOLD',
              c2text: '623 - 624',
            ),
            const CustomRowWidget(
              c1text: 'PM GOLD',
              c2text: '931 - 932',
            ),
            const CustomRowWidget(
              c1text: 'PM GOLD',
              c2text: '873 - 874',
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
              height: Utils.height(context) * 0.08,
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
              title: 'Stack group 5 set of numbers 4 weeks down. ',
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
