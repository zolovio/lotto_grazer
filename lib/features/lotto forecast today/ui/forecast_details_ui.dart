import 'package:flutter/material.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_number_container.dart';
import 'package:lotto_grazer/res/components/custom_row_widget.dart';
import 'package:lotto_grazer/res/components/date_and_week_row.dart';
import 'package:lotto_grazer/res/components/number_card.dart';
import 'package:lotto_grazer/res/components/w_card.dart';
import 'package:lotto_grazer/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              CustomContainer(
                width: Utils.width(context) * 0.6,
                height: 120.h,
                padding: EdgeInsets.all(10.sm),
                title:
                    'In any two given event the number 18 Laps 51 on the 3rd box winning.',
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
            c1text: 'PM METRO',
            c2text: '433 - 434',
          ),
          const CustomRowWidget(
            c1text: 'PM DIAMOND',
            c2text: '623 - 625',
          ),
          const CustomRowWidget(
            c1text: 'PM PEOPLE',
            c2text: '1423 - 1425',
          ),
          const CustomRowWidget(
            c1text: 'NL FORTUNE',
            c2text: '995 - 996',
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
                title: 'Save',
                fontsize: 14.sp,
                fontweight: FontWeight.w700,
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
                title: 'VIEW REFENCE CHARTS',
                fontsize: 14.sp,
                fontweight: FontWeight.w700,
                onpress: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
