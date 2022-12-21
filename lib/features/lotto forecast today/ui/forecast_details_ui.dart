import 'dart:ui';

import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_bottom_tab_bar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/utils/utils.dart';

class ForecastDetails extends StatefulWidget {
  const ForecastDetails({super.key});

  @override
  State<ForecastDetails> createState() => _ForecastDetailsState();
}

class _ForecastDetailsState extends State<ForecastDetails> {
  @override
  Widget build(BuildContext context) {
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
            height: Utils.height(context) * 0.06,
            title: 'FORECAST DETAILS',
            bgColor: AppColors.blackColor,
            fgColor: AppColors.whiteColor,
            fontsize: 20.0,
            fontweight: FontWeight.w700,
            border: Border.all(
              width: 0.0,
              color: AppColors.blackColor,
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: Utils.width(context) * 0.5,
                height: Utils.height(context) * 0.06,
                child: CustomContainer(
                  title: 'NL FORTUNE',
                  checkWidget: true,
                  leadingIcon: FlagsCode.NL,
                  bgColor: AppColors.whiteColor,
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
                height: Utils.height(context) * 0.06,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: Utils.width(context) * 0.40,
                          height: Utils.height(context) * 0.03,
                          child: CustomContainer(
                            title: 'COUNTING WEEKS',
                            bgColor: AppColors.whiteColor,
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
                          width: Utils.width(context) * 0.10,
                          height: Utils.height(context) * 0.03,
                          child: CustomContainer(
                            title: '1',
                            bgColor: AppColors.whiteColor,
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
                          height: Utils.height(context) * 0.03,
                          child: CustomContainer(
                            title: 'DATE',
                            bgColor: AppColors.whiteColor,
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
                          height: Utils.height(context) * 0.03,
                          child: CustomContainer(
                            title: '02/06/2022',
                            bgColor: AppColors.whiteColor,
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
                height: Utils.height(context) * 0.05,
                // padding: const EdgeInsets.all(15.0),
                title: 'PLAN',
                bgColor: AppColors.greyColor.withOpacity(0.3),
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
                height: Utils.height(context) * 0.05,
                // padding: const EdgeInsets.all(15.0),
                title: 'LAPPING NUMBER',
                bgColor: AppColors.greyColor.withOpacity(0.3),
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
                height: Utils.height(context) * 0.13,
                bgColor: AppColors.whiteColor,
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
                    const SizedBox(height: 2.0),
                    CustomButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      title: 'W3',
                      onpress: () {
                        // Navigator.of(context)
                        //     .pushNamed(RoutesName.forecastDetails);
                      },
                      bottomLeftRadius: 3.0,
                      bottomRightRadius: 3.0,
                      topRightRadius: 3.0,
                      topLeftRadius: 3.0,
                      fontsize: 11.0,
                      btnwidth: Utils.width(context) * 0.15,
                      btnheight: Utils.height(context) * 0.035,
                    ),
                    const SizedBox(height: 3.0),
                    CustomContainer(
                      width: Utils.width(context) * 0.15,
                      height: Utils.height(context) * 0.04,
                      // margin: const EdgeInsets.only(top: 1.0),
                      title: '18',
                      bgColor: AppColors.whiteColor,
                      fgColor: AppColors.blackColor,
                      fontsize: 16.0,
                      fontweight: FontWeight.w700,
                      align: TextAlign.center,
                      border: Border.all(
                        color: AppColors.blueColor,
                        width: 3.0,
                      ),
                    ),
                    CustomContainer(
                      width: Utils.width(context) * 0.15,
                      height: Utils.height(context) * 0.04,
                      // margin: const EdgeInsets.all(0.0),
                      title: '51',
                      bgColor: AppColors.whiteColor,
                      fgColor: AppColors.blackColor,
                      fontsize: 16.0,
                      fontweight: FontWeight.w700,
                      align: TextAlign.center,
                      border: Border.all(
                        color: AppColors.blueColor,
                        width: 3.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColors.whiteColor,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                  ),
                ),
                height: Utils.height(context) * 0.13,
                width: Utils.width(context) * 0.6,
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: GoogleFonts.montserrat(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      children: const <TextSpan>[
                        TextSpan(text: 'In any two given event the number '),
                        TextSpan(
                          text: '18',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 17),
                        ),
                        TextSpan(text: ' Laps '),
                        TextSpan(
                          text: '51',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 17),
                        ),
                        TextSpan(text: ' on the 3rd box winning.'),
                      ],
                    ),
                  ),
                ),
              ),

              // CustomContainer(
              //   width: Utils.width(context) * 0.6,
              //   height: Utils.height(context) * 0.13,
              //   padding: const EdgeInsets.all(10.0),
              //   title:
              //       'In any two given event the number 18 Laps 51 on the 3rd box winning.',
              //   bgColor: AppColors.whiteColor.withOpacity(0.1),
              //   fgColor: AppColors.blackColor,
              //   fontsize: 15.0,
              //   fontweight: FontWeight.w600,
              //   align: TextAlign.left,
              //   border: const Border(
              //     bottom: BorderSide(
              //       color: Colors.black,
              //       width: 3.0,
              //     ),
              //   ),
              // ),
            ],
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.05,
            // padding: const EdgeInsets.all(15.0),
            title: 'REFERENCE EVENTS',
            bgColor: AppColors.greyColor.withOpacity(0.3),
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
          Row(
            children: const [
              Expanded(
                child: CustomRowWidget(
                  c1text: 'PM METRO',
                  c2text: '43 - 44',
                ),
              ),
              Expanded(
                child: CustomRowWidget(
                  c1text: 'PM GOLD',
                  c2text: '33 - 34',
                ),
              ),
              Expanded(
                child: CustomRowWidget(
                  c1text: 'NL FORTUNE',
                  c2text: '994 - 995',
                ),
              ),
            ],
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.05,
            title: 'KEY FORECAST',
            bgColor: AppColors.greyColor.withOpacity(0.3),
            fgColor: AppColors.blackColor,
            fontsize: 16.0,
            fontweight: FontWeight.w700,
            align: TextAlign.center,
            border: const Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
              right: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
          Container(
            height: 3,
            margin: const EdgeInsets.only(top: 1.5),
            color: AppColors.blackColor,
          ),
          // CustomContainer(
          //   padding: const EdgeInsets.only(left: 15.0, right: 10.0, top: 10.0),
          //   title:
          //       '1. Counting 3 weeks up from the plan, the 2\u1d3a\u1d30 winning numbers of the event '
          //       'will counter and drop as a banker.',
          //   bgColor: AppColors.whiteColor.withOpacity(0.1),
          //   fgColor: AppColors.blackColor,
          //   fontsize: 14.0,
          //   fontweight: FontWeight.w500,
          //   align: TextAlign.justify,
          // ),
          Container(
            padding: const EdgeInsets.only(left: 15.0, right: 10.0, top: 10.0),
            child: const Text(
              '1. Counting 3 weeks up from the plan, the 2\u1d3a\u1d30 winning numbers of the event '
              'will counter and drop as a banker.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15.0,
                fontFeatures: [
                  FontFeature.enable('sups'),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15.0, right: 10.0, top: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: AppColors.whiteColor,
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'CASE1 : ',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
                    ),
                    TextSpan(text: '5 COUNTER '),
                    TextSpan(
                      text: '50',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15.0, right: 10.0, top: 3.0),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: AppColors.whiteColor,
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'CASE2 : ',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
                    ),
                    TextSpan(text: '3 COUNTER '),
                    TextSpan(
                      text: '48',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                left: 15.0, right: 10.0, top: 3.0, bottom: 15.0),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: AppColors.whiteColor,
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 3.0,
                ),
              ),
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'CASE3 : ',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
                    ),
                    TextSpan(text: '9 COUNTER '),
                    TextSpan(
                      text: '54',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.04,
            // padding: const EdgeInsets.all(15.0),
            title: 'PROJECTED NUMBERS',
            border: const Border(
              bottom: BorderSide(
                width: 1.0,
                color: AppColors.blackColor,
              ),
            ),
            bgColor: AppColors.greyColor.withOpacity(0.3),
            fgColor: AppColors.blackColor,
            fontsize: 16.0,
            fontweight: FontWeight.w700,
            align: TextAlign.center,
          ),
          CustomChildContainer(
            width: Utils.width(context) * 0.7,
            height: Utils.height(context) * 0.08,
            margin: const EdgeInsets.only(bottom: 6.0),
            bgColor: AppColors.whiteColor,
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
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3.0,
                      color: AppColors.lightBlueColor,
                    ),
                    title: "${index + 1}",
                    bgColor: AppColors.whiteColor,
                    fgColor: AppColors.blackColor,
                    fontsize: 20.0,
                    fontweight: FontWeight.w700,
                    align: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: CustomButton(
              btnwidth: Utils.width(context) * 0.05,
              // btnheight: Utils.height(context) * 0.1,
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
                  color: AppColors.whiteColor,
                ),
                title: 'BEST 3 :',
                bgColor: AppColors.whiteColor,
                fgColor: AppColors.blackColor,
                fontsize: 16.0,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
              ),
              SizedBox(
                width: Utils.width(context) * 0.15,
              ),
              CustomNumberContainer(
                title: '1',
                width: Utils.width(context) * 0.11,
                height: Utils.height(context) * 0.040,
                color: AppColors.whiteColor,
                borderColor: AppColors.blueColor,
                padding: EdgeInsets.zero,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
              ),
              CustomNumberContainer(
                title: '2',
                width: Utils.width(context) * 0.11,
                height: Utils.height(context) * 0.040,
                color: AppColors.whiteColor,
                borderColor: AppColors.blueColor,
                padding: EdgeInsets.zero,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
              ),
              CustomNumberContainer(
                title: '3',
                width: Utils.width(context) * 0.11,
                height: Utils.height(context) * 0.040,
                color: AppColors.whiteColor,
                borderColor: AppColors.blueColor,
                padding: EdgeInsets.zero,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
              ),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     CustomContainer(
          //       width: Utils.width(context) * 0.2,
          //       height: Utils.height(context) * 0.08,
          //       padding: const EdgeInsets.all(5.0),
          //       border: Border.all(
          //         width: 0.0,
          //         color: AppColors.whiteColor,
          //       ),
          //       title: 'BEST 5 :',
          //       bgColor: AppColors.whiteColor,
          //       fgColor: AppColors.blackColor,
          //       fontsize: 16.0,
          //       fontweight: FontWeight.w700,
          //       align: TextAlign.center,
          //     ),
          //     // SizedBox(
          //     //   width: Utils.width(context) * 0.1,
          //     // ),
          //     const CustomNumberContainer(
          //       title: '1',
          //     ),
          //     const CustomNumberContainer(
          //       title: '1',
          //     ),
          //     const CustomNumberContainer(
          //       title: '1',
          //     ),
          //     const CustomNumberContainer(
          //       title: '1',
          //     ),
          //     const CustomNumberContainer(
          //       title: '1',
          //     ),
          //   ],
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                btnwidth: Utils.width(context) * 0.3,
                btnheight: Utils.height(context) * 0.05,
                bottomLeftRadius: 5.0,
                topLeftRadius: 5.0,
                bottomRightRadius: 5.0,
                topRightRadius: 5.0,
                bdwidth: 2.0,
                bgColor: AppColors.blueColor,
                title: 'SAVE',
                fontsize: 16.0,
                fontweight: FontWeight.w700,
                onpress: () {},
              ),
              CustomButton(
                btnwidth: Utils.width(context) * 0.6,
                btnheight: Utils.height(context) * 0.05,
                bottomLeftRadius: 5.0,
                topLeftRadius: 5.0,
                bottomRightRadius: 5.0,
                topRightRadius: 5.0,
                bdwidth: 2.0,
                bgColor: const Color(0xFF2f5597),
                title: 'VIEW PLAN ON CHARTS',
                fontsize: 14.0,
                fontweight: FontWeight.w700,
                onpress: () {},
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
      bottomNavigationBar: const CustomBottomTabBar(),
    );
  }
}

class CustomNumberContainer extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final Color color;
  final Color borderColor;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const CustomNumberContainer({
    super.key,
    required this.title,
    required this.padding,
    required this.margin,
    required this.width,
    required this.height,
    required this.color,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      border: Border.all(
        width: 2.0,
        color: borderColor,
      ),
      title: title,
      bgColor: color,
      fgColor: AppColors.blackColor,
      fontsize: 16.0,
      fontweight: FontWeight.w700,
      align: TextAlign.center,
    );
  }
}

class CustomRowWidget extends StatelessWidget {
  final String c1text;
  final String c2text;
  const CustomRowWidget({
    super.key,
    required this.c1text,
    required this.c2text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(
          width: Utils.width(context) * 0.4,
          // height: Utils.height(context) * 0.04,
          padding: const EdgeInsets.all(10.0),
          title: c1text,
          bgColor: AppColors.whiteColor,
          fgColor: AppColors.blackColor,
          fontsize: 16.0,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: const Border(
            left: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            right: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            top: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          // height: Utils.height(context) * 0.04,
          padding: const EdgeInsets.all(10.0),
          title: c2text,
          bgColor: AppColors.whiteColor,
          fgColor: AppColors.blackColor,
          fontsize: 16.0,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: const Border(
            left: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            right: BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
          ),
        ),
      ],
    );
  }
}
