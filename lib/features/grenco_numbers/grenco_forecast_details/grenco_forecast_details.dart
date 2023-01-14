import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/grenco_numbers/grenco_forecast_details/grenco_forecast_details_vm.dart';
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

class GrencoForecastDetails extends StatefulWidget {
  final String num1;
  final String num2;
  final String winNum;
  final String countingWeek;
  final String gameName;
  const GrencoForecastDetails(
      {super.key,
      required this.num1,
      required this.num2,
      required this.winNum,
      required this.gameName,
      required this.countingWeek});

  @override
  State<GrencoForecastDetails> createState() => _GrencoForecastDetailsState();
}

class _GrencoForecastDetailsState extends State<GrencoForecastDetails> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final vm = ref.watch(grencoForecastDetailsProvider);

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
                  gameName: widget.gameName,
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
                  CustomContainer(
                    width: Utils.width(context) * 0.6,
                    height: 50.h,
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
                        WCard(
                          label: widget.winNum,
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
                    height: 120.h,
                    padding: EdgeInsets.all(10.sm),
                    title:
                        'In any two given event the number ${widget.num1} Laps ${widget.num2}  on the 3rd box winning vertically.',
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
                height: 55.h,
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
                title: 'Stack group 5 set of numbers 4 weeks down. ',
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
              SizedBox(
                height: 10.h,
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
              SizedBox(
                height: 15.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    CustomNumberContainer(
                      title: '1',
                    ),
                    CustomNumberContainer(
                      title: '1',
                    ),
                    CustomNumberContainer(
                      title: '1',
                    ),
                    CustomNumberContainer(
                      title: '1',
                    ),
                    CustomNumberContainer(
                      title: '1',
                    ),
                    CustomNumberContainer(
                      title: '1',
                    ),
                    CustomNumberContainer(
                      title: '1',
                    ),
                    CustomNumberContainer(
                      title: '1',
                    ),
                    CustomNumberContainer(
                      title: '1',
                    ),
                    CustomNumberContainer(
                      title: '1',
                    ),
                  ],
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
