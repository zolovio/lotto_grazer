import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/lotto_prediction/lotto_prediction_forecast_detail/lotto_prediction_forecast_detail_ui.dart';
import 'package:lotto_grazer/features/lotto_prediction/lotto_prediction_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_radio_button.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/components/info_widget.dart';
import 'package:lotto_grazer/res/components/number_card.dart';
import 'package:lotto_grazer/res/components/w_card.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LottoPredictionUi extends StatefulWidget {
  const LottoPredictionUi({super.key});

  @override
  State<LottoPredictionUi> createState() => _LottoPredictionUiState();
}

class _LottoPredictionUiState extends State<LottoPredictionUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(Utils.width(context) * 1, 60.h),
          child: const CustomAppBar(),
        ),
        body: Consumer(builder: (context, ref, _) {
          final vm = ref.watch(lottoPredictionProvider);
          return Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CustomContainer(
                    width: Utils.width(context) * 1,
                    height: 40.h,
                    title: 'LOTTO PREDICTION',
                    bgColor: AppColors.blackColor,
                    fgColor: AppColors.whiteColor,
                    fontsize: 17.sp,
                    fontweight: FontWeight.w700,
                    border: Border.all(
                      width: 0.0,
                      color: AppColors.whiteColor.withOpacity(0.1),
                    ),
                  ),
                  const InfoWidget(
                    showExtraInfo: true,
                    infoTitle: "Lotto Prediction",
                    infoText:
                        'are numbers generated using timing keys and patterns that are '
                        'carefully calculated to give you a winning, on lotto games played today. View,use and save. ',
                    extraInfoTitle: 'Saved forecast plans',
                    extraInfoText:
                        'used in deciphering potential winning numbers '
                        'can be viewed in, can be in future.',
                  )
                ],
              ),
              SizedBox(
                height: 60.h,
                width: Utils.width(context),
                child: Center(
                  child: CustomRadioButton(
                    list: vm.keyList,
                    selectedIndex: vm.selectedIndex,
                    onSelect: (index) {
                      vm.setIndex(index);
                    },
                  ),
                ),
              ),
              CustomContainer(
                width: Utils.width(context) * 1,
                height: 50.h,
                padding: EdgeInsets.all(15.sm),
                title: vm.selectedIndex == 0 ? 'FORECAST GAMES' : 'SAVED PLANS',
                bgColor: AppColors.whiteColor,
                fgColor: AppColors.blackColor,
                fontsize: 17.sp,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 3.w,
                  ),
                  top: BorderSide(
                    color: Colors.black,
                    width: 3.w,
                  ),
                ),
              ),
              vm.selectedIndex == 0
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: vm.forecastGamesList.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              CustomChildContainer(
                                width: Utils.width(context) * 0.3,
                                height: 79.5.h,
                                margin: EdgeInsets.only(bottom: 4.h),
                                bgColor: AppColors.whiteColor,
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.black,
                                    width: 3.w,
                                  ),
                                  top: BorderSide(
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
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl: vm.forecastGamesList[index]
                                              ['imageUrl']
                                          .toString(),
                                      height: 30.h,
                                      width: 30.w,
                                      placeholder: (context, url) => Icon(
                                        Icons.image,
                                        size: 22.sp,
                                        color: AppColors.greyColor,
                                      ),
                                      errorWidget: (context, url, error) =>
                                          Icon(
                                        Icons.image,
                                        size: 22.sp,
                                        color: AppColors.greyColor,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomText(
                                            title: vm.forecastGamesList[index]
                                                    ['gameTitle']
                                                .toString(),
                                            fontcolor: AppColors.redColor,
                                            fontweight: FontWeight.w700,
                                            fontsize: 15.sp,
                                            underline: false),
                                        SizedBox(
                                          height: 10.h,
                                          width: 10.w,
                                          child: VerticalDivider(
                                            thickness: 2.w,
                                            width: 1.w,
                                            color: AppColors.blackColor,
                                          ),
                                        ),
                                        CustomText(
                                            title: vm.forecastGamesList[index]
                                                    ['gameName']
                                                .toString(),
                                            fontcolor: AppColors.blackColor,
                                            fontweight: FontWeight.w700,
                                            fontsize: 15.sp,
                                            underline: false),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              CustomChildContainer(
                                width: Utils.width(context) * 0.7,
                                height: 79.5.h,
                                margin: EdgeInsets.only(bottom: 4.h),
                                bgColor: AppColors.whiteColor,
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.black,
                                    width: 3.w,
                                  ),
                                  top: BorderSide(
                                    color: Colors.black,
                                    width: 3.w,
                                  ),
                                  left: BorderSide(
                                    color: Colors.black,
                                    width: 3.w,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: Utils.width(context) * 0.63,
                                      height: 30.h,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                              title:
                                                  'DRAW:${vm.forecastGamesList[index]['draw']}',
                                              fontcolor: AppColors.blackColor,
                                              fontweight: FontWeight.w700,
                                              fontsize: 13.sp,
                                              underline: false),
                                          CustomText(
                                              title: vm.forecastGamesList[index]
                                                      ['date']
                                                  .toString(),
                                              fontcolor: AppColors.blackColor,
                                              fontweight: FontWeight.w700,
                                              fontsize: 13.sp,
                                              underline: false),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: !vm.isLoading
                                          ? CustomButton(
                                              title: ' VIEW  FORECAST ',
                                              onpress: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            const LottoPredictionForecastDetail()));
                                              },
                                              bottomLeftRadius: 5.r,
                                              bottomRightRadius: 5.r,
                                              topRightRadius: 5.r,
                                              topLeftRadius: 5.r,
                                              fontsize: 11.sp,
                                              btnwidth:
                                                  Utils.width(context) * 0.07,
                                              btnheight: 30.h,
                                            )
                                          : Container(
                                              decoration: BoxDecoration(
                                                color: AppColors.blackColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(5.r),
                                                  bottomRight:
                                                      Radius.circular(5.r),
                                                  topRight:
                                                      Radius.circular(5.r),
                                                  topLeft: Radius.circular(5.r),
                                                ),
                                                border: Border.all(
                                                  color: AppColors.blackColor,
                                                  width: 2.w,
                                                ),
                                              ),
                                              height: 35.h,
                                              width: 180.w,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomText(
                                                    title: "LOADING",
                                                    fontcolor:
                                                        AppColors.whiteColor,
                                                    fontweight: FontWeight.w600,
                                                    fontsize: 11.sp,
                                                  ),
                                                  SizedBox(width: 2.w),
                                                  CustomContainer(
                                                      width: 100.w,
                                                      height: 32.h,
                                                      padding:
                                                          EdgeInsets.all(8.sm),
                                                      fgColor:
                                                          AppColors.redColor,
                                                      align: TextAlign.center,
                                                      fontsize: 11.sp,
                                                      fontweight:
                                                          FontWeight.w600,
                                                      //Here can be used time from api
                                                      // title:vm.forecastGamesList[index]['remainingTime'],
                                                      title:
                                                          '${vm.startHr}:${vm.startMin}:${vm.startSec}'),
                                                ],
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  : Expanded(
                      child: ListView.builder(
                        itemCount: vm.savedPlansList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                  bottom: BorderSide(
                                    width: 3.w,
                                    color: AppColors.blackColor,
                                  ),
                                )),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: Utils.width(context) * 0.32,
                                      height: 30.h,
                                      child: CustomContainer(
                                        title:
                                            'DRAW: ${vm.savedPlansList[index].draw}',
                                        bgColor: AppColors.whiteColor
                                            .withOpacity(0.1),
                                        fgColor: AppColors.blackColor,
                                        fontsize: 10.sp,
                                        align: TextAlign.center,
                                        fontweight: FontWeight.w700,
                                        border: Border(
                                          right: BorderSide(
                                            width: 3.w,
                                            color: AppColors.blackColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Utils.width(context) * 0.42,
                                      height: 30.h,
                                      child: CustomContainer(
                                        title: vm.savedPlansList[index]
                                            .lotteryGameName,
                                        bgColor: AppColors.whiteColor
                                            .withOpacity(0.1),
                                        fgColor: AppColors.blackColor,
                                        fontsize: 10.sp,
                                        align: TextAlign.center,
                                        fontweight: FontWeight.w700,
                                        border: Border(
                                          right: BorderSide(
                                            width: 3.w,
                                            color: AppColors.blackColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Utils.width(context) * 0.25,
                                      height: 30.h,
                                      child: CustomContainer(
                                        title: vm.savedPlansList[index].date,
                                        bgColor: AppColors.whiteColor
                                            .withOpacity(0.1),
                                        fgColor: AppColors.blackColor,
                                        fontsize: 10.sp,
                                        align: TextAlign.center,
                                        fontweight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                  bottom: BorderSide(
                                    width: 3.w,
                                    color: AppColors.blackColor,
                                  ),
                                )),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: Utils.width(context) * 0.32,
                                      height: 140.h,
                                      child: CustomChildContainer(
                                        bgColor: AppColors.greyColor
                                            .withOpacity(0.3),
                                        border: Border(
                                          right: BorderSide(
                                            width: 3.w,
                                            color: AppColors.blackColor,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomText(
                                              title: "PLAN",
                                              underline: true,
                                              fontsize: 16.sp,
                                              fontweight: FontWeight.w700,
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            CustomText(
                                              title: vm.savedPlansList[index]
                                                  .planType,
                                              fontsize: 12.sp,
                                              fontweight: FontWeight.w600,
                                            ),
                                            CustomText(
                                              title:
                                                  '${vm.savedPlansList[index].planName.split(' ')[0]}\n${vm.savedPlansList[index].planName.split(' ')[1]}',
                                              fontsize: 16.sp,
                                              align: TextAlign.center,
                                              fontweight: FontWeight.w700,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Utils.width(context) * 0.42,
                                      height: 140.h,
                                      child: CustomChildContainer(
                                        bgColor: AppColors.whiteColor
                                            .withOpacity(0.1),
                                        border: Border(
                                          right: BorderSide(
                                            width: 3.w,
                                            color: AppColors.blackColor,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment: (vm
                                                      .savedPlansList[index]
                                                      .planName ==
                                                  'PROGRESSIVE NUMBER')
                                              ? CrossAxisAlignment.stretch
                                              : CrossAxisAlignment.center,
                                          children: [
                                            // vertical lapping numbers
                                            if (vm.savedPlansList[index]
                                                        .planType ==
                                                    "VERTICAL" &&
                                                vm.savedPlansList[index]
                                                        .planName ==
                                                    'LAPPING NUMBER') ...[
                                              WCard(
                                                label: vm.savedPlansList[index]
                                                    .winningNum1,
                                                borderColor: Colors.transparent,
                                              ),
                                              NumberCard(
                                                label: vm
                                                    .savedPlansList[index].num1,
                                              ),
                                              NumberCard(
                                                label: vm
                                                    .savedPlansList[index].num2,
                                              )
                                            ],
                                            // diagonal lapping number
                                            if (vm.savedPlansList[index]
                                                        .planType ==
                                                    "DIAGONAL" &&
                                                vm.savedPlansList[index]
                                                        .planName ==
                                                    'LAPPING NUMBER') ...[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  WCard(
                                                    label: vm
                                                        .savedPlansList[index]
                                                        .winningNum1,
                                                    borderColor:
                                                        Colors.transparent,
                                                  ),
                                                  WCard(
                                                    label: vm
                                                        .savedPlansList[index]
                                                        .winningNum2,
                                                    borderColor:
                                                        Colors.transparent,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  NumberCard(
                                                      label: vm
                                                              .savedPlansList[
                                                                  index]
                                                              .isRightDiagonal
                                                          ? ''
                                                          : vm
                                                              .savedPlansList[
                                                                  index]
                                                              .num1),
                                                  NumberCard(
                                                      label: vm
                                                              .savedPlansList[
                                                                  index]
                                                              .isRightDiagonal
                                                          ? vm
                                                              .savedPlansList[
                                                                  index]
                                                              .num1
                                                          : ''),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  NumberCard(
                                                      label: vm
                                                              .savedPlansList[
                                                                  index]
                                                              .isRightDiagonal
                                                          ? vm
                                                              .savedPlansList[
                                                                  index]
                                                              .num2
                                                          : ''),
                                                  NumberCard(
                                                      label: vm
                                                              .savedPlansList[
                                                                  index]
                                                              .isRightDiagonal
                                                          ? ''
                                                          : vm
                                                              .savedPlansList[
                                                                  index]
                                                              .num2),
                                                ],
                                              ),
                                            ],
                                            // horizontal lapping number
                                            if (vm.savedPlansList[index]
                                                        .planType ==
                                                    "HORIZONTAL" &&
                                                vm.savedPlansList[index]
                                                        .planName ==
                                                    'LAPPING NUMBER') ...[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  WCard(
                                                    label: vm
                                                        .savedPlansList[index]
                                                        .winningNum1,
                                                    borderColor:
                                                        Colors.transparent,
                                                  ),
                                                  WCard(
                                                    label: vm
                                                        .savedPlansList[index]
                                                        .winningNum2,
                                                    borderColor:
                                                        Colors.transparent,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  NumberCard(
                                                      label: vm
                                                          .savedPlansList[index]
                                                          .num1),
                                                  NumberCard(
                                                      label: vm
                                                          .savedPlansList[index]
                                                          .num2),
                                                ],
                                              ),
                                            ],
                                            // Pivoted numbers
                                            if (vm.savedPlansList[index]
                                                    .planName ==
                                                'PIVOTED NUMBER') ...[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  WCard(
                                                    label: vm
                                                        .savedPlansList[index]
                                                        .winningNum1,
                                                    borderColor:
                                                        Colors.transparent,
                                                  ),
                                                ],
                                              ),
                                              if (vm.savedPlansList[index]
                                                  .isUpwardPivoted)
                                                NumberCard(
                                                    label: vm
                                                        .savedPlansList[index]
                                                        .num1),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  NumberCard(
                                                      label: vm
                                                          .savedPlansList[index]
                                                          .num2),
                                                  NumberCard(
                                                      label: vm
                                                          .savedPlansList[index]
                                                          .num3),
                                                ],
                                              ),
                                              if (!vm.savedPlansList[index]
                                                  .isUpwardPivoted)
                                                NumberCard(
                                                    label: vm
                                                        .savedPlansList[index]
                                                        .num1),
                                            ],
                                            // Ball Spacing
                                            if (vm.savedPlansList[index]
                                                    .planName ==
                                                'BALL SPACING') ...[
                                              if (vm.savedPlansList[index]
                                                      .planType ==
                                                  'VERTICAL') ...[
                                                WCard(
                                                  label: vm
                                                      .savedPlansList[index]
                                                      .winningNum1,
                                                  borderColor:
                                                      Colors.transparent,
                                                ),
                                                WCard(
                                                  label: vm
                                                      .savedPlansList[index]
                                                      .winningNum2,
                                                  borderColor:
                                                      Colors.transparent,
                                                ),
                                              ],
                                              if (vm.savedPlansList[index]
                                                      .planType ==
                                                  'HORIZONTAL')
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    WCard(
                                                      label: vm
                                                          .savedPlansList[index]
                                                          .winningNum1,
                                                      borderColor:
                                                          Colors.transparent,
                                                    ),
                                                    WCard(
                                                      label: vm
                                                          .savedPlansList[index]
                                                          .winningNum2,
                                                      borderColor:
                                                          Colors.transparent,
                                                    ),
                                                  ],
                                                ),
                                              NumberCardWithTitle(
                                                  num: vm.savedPlansList[index]
                                                      .num1,
                                                  title: "SPACING")
                                            ],
                                            // Event Summation
                                            if (vm.savedPlansList[index]
                                                    .planName ==
                                                'EVENT SUMMATION') ...[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  WCard(
                                                    label: vm
                                                        .savedPlansList[index]
                                                        .winningNum1,
                                                    borderColor:
                                                        Colors.transparent,
                                                  ),
                                                  SizedBox(
                                                    width: 4.w,
                                                  ),
                                                  WCard(
                                                    label: vm
                                                        .savedPlansList[index]
                                                        .winningNum2,
                                                    borderColor:
                                                        Colors.transparent,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  NumberCardWithTitle(
                                                      num: vm
                                                          .savedPlansList[index]
                                                          .num1,
                                                      title: "SUM"),
                                                  SizedBox(
                                                    width: 4.w,
                                                  ),
                                                  NumberCardWithTitle(
                                                      num: vm
                                                          .savedPlansList[index]
                                                          .num2,
                                                      title: "CONSTANT"),
                                                ],
                                              )
                                            ],
                                            // Polar Addition
                                            if (vm.savedPlansList[index]
                                                    .planName ==
                                                'POLAR ADDITION') ...[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  WCard(
                                                    label: vm
                                                        .savedPlansList[index]
                                                        .winningNum1,
                                                    borderColor:
                                                        Colors.transparent,
                                                  ),
                                                  SizedBox(
                                                    width: 4.w,
                                                  ),
                                                  WCard(
                                                    label: vm
                                                        .savedPlansList[index]
                                                        .winningNum2,
                                                    borderColor:
                                                        Colors.transparent,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  NumberCardWithTitle(
                                                      num: vm
                                                          .savedPlansList[index]
                                                          .num1,
                                                      title: "ADDITION"),
                                                  SizedBox(
                                                    width: 4.w,
                                                  ),
                                                  NumberCardWithTitle(
                                                      num: vm
                                                          .savedPlansList[index]
                                                          .num2,
                                                      title: "CONSTANT"),
                                                ],
                                              )
                                            ],
                                            // Sequential Number
                                            if (vm.savedPlansList[index]
                                                    .planName ==
                                                'SEQUENTIAL NUMBER') ...[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  WCard(
                                                    label: vm
                                                        .savedPlansList[index]
                                                        .winningNum1,
                                                    borderColor:
                                                        Colors.transparent,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  NumberCardWithTitle(
                                                      num: vm
                                                          .savedPlansList[index]
                                                          .num1,
                                                      title: "V-CODE"),
                                                ],
                                              )
                                            ],
                                            // Progressive Number
                                            if (vm.savedPlansList[index]
                                                    .planName ==
                                                'PROGRESSIVE NUMBER') ...[
                                              WCard(
                                                label: vm.savedPlansList[index]
                                                    .winningNum1,
                                                borderColor: Colors.transparent,
                                              ),
                                              if (vm.savedPlansList[index]
                                                      .planType ==
                                                  'HORIZONTAL') ...[
                                                CustomChildContainer(
                                                  padding: EdgeInsets.all(8.sm),
                                                  bgColor: Colors.transparent,
                                                  child: Text(
                                                    vm.savedPlansList[index]
                                                        .signCode1,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .blackColor,
                                                        fontSize: 20.sp,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        wordSpacing: 10.w,
                                                        letterSpacing: 5.w),
                                                  ),
                                                ),
                                                CustomChildContainer(
                                                  padding: EdgeInsets.all(8.sm),
                                                  bgColor: Colors.transparent,
                                                  child: Text(
                                                    vm.savedPlansList[index]
                                                        .signCode2,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .blackColor,
                                                        fontSize: 20.sp,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        wordSpacing: 10.w,
                                                        letterSpacing: 5.w),
                                                  ),
                                                ),
                                              ],
                                              if (vm.savedPlansList[index]
                                                      .planType ==
                                                  'VERTICAL') ...[
                                                CustomChildContainer(
                                                  padding: EdgeInsets.all(8.sm),
                                                  bgColor: Colors.transparent,
                                                  height: 50.h,
                                                  child: Center(
                                                    child: Text(
                                                      vm.savedPlansList[index]
                                                          .signCode1,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .blackColor,
                                                          fontSize: 20.sp,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          wordSpacing: 20.w,
                                                          letterSpacing: 5.w),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                              CustomContainer(
                                                margin: EdgeInsets.only(
                                                    left: 8.w, right: 8.w),
                                                height: 35.h,
                                                title: "SIGN CODE",
                                                bgColor: AppColors.blueColor,
                                                fgColor: AppColors.whiteColor,
                                                fontsize: 10.sp,
                                                fontweight: FontWeight.w900,
                                                align: TextAlign.center,
                                                border: Border.all(
                                                  color:
                                                      AppColors.lightBlueColor,
                                                  width: 2.0,
                                                ),
                                              ),
                                            ],

                                            // Constant Position
                                            if (vm.savedPlansList[index]
                                                    .planName ==
                                                'CONSTANT POSITION') ...[
                                              WCard(
                                                label: vm.savedPlansList[index]
                                                    .winningNum1,
                                                borderColor: Colors.transparent,
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              NumberCard(
                                                label: vm
                                                    .savedPlansList[index].num1,
                                              ),
                                            ],
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Utils.width(context) * 0.25,
                                      height: 140.h,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Center(
                                              child: GestureDetector(
                                                  onTap: () =>
                                                      vm.viewDetailsTap(context,
                                                          plansData:
                                                              vm.savedPlansList[
                                                                  index],
                                                          countingWeek: '2'),
                                                  child: WCard(
                                                      btnWidth: 80.w,
                                                      btnHeight: 40.h,
                                                      bgColor: AppColors
                                                          .greyColor
                                                          .withOpacity(0.3),
                                                      textColor:
                                                          AppColors.blackColor,
                                                      borderColor:
                                                          AppColors.blackColor,
                                                      label:
                                                          ' View \n Detail     '))),
                                          Center(
                                              child: GestureDetector(
                                                  onTap: () {},
                                                  child: WCard(
                                                      btnWidth: 80.w,
                                                      btnHeight: 25.h,
                                                      bgColor:
                                                          const Color.fromARGB(
                                                              255, 174, 73, 19),
                                                      textColor:
                                                          AppColors.whiteColor,
                                                      borderColor:
                                                          Colors.transparent,
                                                      label: 'DELETE'))),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
            ],
          );
        }),
      ),
    );
  }
}
