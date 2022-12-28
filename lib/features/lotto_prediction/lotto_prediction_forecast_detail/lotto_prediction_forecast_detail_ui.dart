import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/features/lotto_prediction/lotto_prediction_forecast_detail/lotto_prediction_forecast_detail_vm.dart';
import 'package:lotto_grazer/features/lotto_prediction/lotto_prediction_forecast_detail/reference_charts/reference_charts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_number_container.dart';
import 'package:lotto_grazer/res/components/custom_row_widget.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/components/date_and_week_row.dart';
import 'package:lotto_grazer/res/components/number_card.dart';
import 'package:lotto_grazer/res/components/w_card.dart';
import 'package:lotto_grazer/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LottoPredictionForecastDetail extends StatefulWidget {
  const LottoPredictionForecastDetail({super.key});

  @override
  State<LottoPredictionForecastDetail> createState() =>
      _LottoPredictionForecastDetailState();
}

class _LottoPredictionForecastDetailState
    extends State<LottoPredictionForecastDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(Utils.width(context) * 1, 60.h),
          child: const CustomAppBar(),
        ),
        body: Consumer(builder: (context, ref, _) {
          final vm = ref.watch(lottoPredictionForecastDetailProvider);
          return ListView(
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
              const DateAndWeekRow(
                gameName: "NL FORTUNE",
                countingWeek: "1",
                date: "02/05/2022",
                isFromLottoPrediction: true,
                imageUrl:
                    'https://cdn-icons-png.flaticon.com/512/5052/5052170.png',
              ),
              Row(
                children: [
                  CustomContainer(
                    width: Utils.width(context) * 0.4,
                    height: 50.h,
                    // padding: const EdgeInsets.all(15.0),
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
                  CustomContainer(
                    width: Utils.width(context) * 0.6,
                    height: 50.h,
                    // padding: const EdgeInsets.all(15.0),
                    title: 'LAPPING NUMBER',
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
                        const WCard(
                          label: 'W3',
                          borderColor: Colors.transparent,
                        ),
                        const NumberCard(
                          label: "18",
                        ),
                        const NumberCard(
                          label: "51",
                        ),
                      ],
                    ),
                  ),
                  CustomChildContainer(
                    width: Utils.width(context) * 0.6,
                    height: 120.h,
                    padding: EdgeInsets.all(10.sm),
                    bgColor: AppColors.whiteColor.withOpacity(0.1),
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3.w,
                      ),
                    ),
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: GoogleFonts.montserrat(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          children: <TextSpan>[
                            const TextSpan(
                                text: 'In any two given event the number '),
                            TextSpan(
                              text: '18',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16.sp),
                            ),
                            const TextSpan(text: ' Laps '),
                            TextSpan(
                              text: '51',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16.sp),
                            ),
                            const TextSpan(text: ' on the 3rd box winning.'),
                          ],
                        ),
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
                        c1text: 'PM METRO',
                        c2text: '43 - 44',
                        isColumn: true,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: CustomRowWidget(
                        c1text: 'PM GOLD',
                        c2text: '33 - 34',
                        isColumn: true,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: CustomRowWidget(
                        c1text: 'NL FORTUNE',
                        c2text: '994 - 995',
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
                height: 55.h,
                margin: EdgeInsets.only(bottom: 10.h),
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
              ),
              Center(
                child: CustomButton(
                  btnwidth: Utils.width(context) * 0.055,
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomContainer(
                      width: Utils.width(context) * 0.2,
                      height: 35.h,
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
                      width: 30.w,
                    ),
                    const CustomNumberContainer(
                      title: '1',
                    ),
                    const CustomNumberContainer(
                      title: '2',
                    ),
                    const CustomNumberContainer(
                      title: '3',
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    btnwidth: Utils.width(context) * 0.3,
                    btnheight: 36.h,
                    bottomLeftRadius: 5.r,
                    topLeftRadius: 5.r,
                    bottomRightRadius: 5.r,
                    topRightRadius: 5.r,
                    bdwidth: 2.w,
                    bgColor: AppColors.blueColor,
                    title: 'Save',
                    fontsize: 14.sp,
                    fontweight: FontWeight.w700,
                    onpress: () {},
                  ),
                  CustomButton(
                    btnwidth: Utils.width(context) * 0.6,
                    btnheight: 36.h,
                    bottomLeftRadius: 5.r,
                    topLeftRadius: 5.r,
                    bottomRightRadius: 5.r,
                    topRightRadius: 5.r,
                    bdwidth: 2.w,
                    bgColor: const Color(0xFF2f5597),
                    title: 'VIEW PLAN ON CHARTS',
                    fontsize: 14.sp,
                    fontweight: FontWeight.w700,
                    onpress: () => vm.viewReferenceChart(context),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              )
            ],
          );
        }),
      ),
    );
  }
}
