import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/lotto_result/lotto_last20_draws_result_ui.dart';
import 'package:lotto_grazer/features/lotto_result/lotto_result_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_radio_button.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/components/info_widget.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LottoResultUi extends StatefulWidget {
  const LottoResultUi({super.key});

  @override
  State<LottoResultUi> createState() => _LottoResultUiState();
}

class _LottoResultUiState extends State<LottoResultUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(Utils.width(context) * 1, 60.h),
          child: const CustomAppBar(),
        ),
        body: Consumer(builder: (context, ref, _) {
          final vm = ref.watch(lottoLast20DrawsVmProvider);
          return ListView(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CustomContainer(
                    width: Utils.width(context) * 1,
                    height: 40.h,
                    title: 'LOTTO RESULT',
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
                      infoTitle: 'Lotto result',
                      infoText: " there's no info provided in key book!")
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
              SizedBox(
                height: 10.h,
              ),
              vm.selectedIndex == 1
                  ? CustomChildContainer(
                      width: Utils.width(context) * 1,
                      height: 115.h,
                      bgColor: AppColors.whiteColor.withOpacity(0.1),
                      border: Border(
                        top: BorderSide(
                          width: 3.w,
                          color: AppColors.blackColor,
                        ),
                        bottom: BorderSide(
                          width: 3.w,
                          color: AppColors.blackColor,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CommonDropDown(
                                initialValue: vm.lotteryType,
                                list: vm.lotteryTypeList,
                                onSelect: (value) {
                                  vm.setLotteryType(value);
                                  print(value);
                                },
                                title: '',
                                setWidth: 200.w,
                              ),
                              CommonDropDown(
                                initialValue: vm.lotteryGame,
                                list: vm.lotteryGameList,
                                onSelect: (value) {
                                  vm.setLotteryGame(value);
                                  print(value);
                                },
                                title: '',
                                setWidth: 200.w,
                              ),
                            ],
                          ),
                          CustomButton(
                            btnwidth: Utils.width(context) * 0.2,
                            btnheight: 32.h,
                            bottomLeftRadius: 5.r,
                            topLeftRadius: 5.r,
                            bottomRightRadius: 5.r,
                            topRightRadius: 5.r,
                            bdwidth: 2.w,
                            bgColor: AppColors.blueColor,
                            title: 'Search',
                            fontsize: 15.sp,
                            fontweight: FontWeight.w700,
                            onpress: () {},
                          ),
                        ],
                      ),
                    )
                  : const CatContainer(
                      thistitle: 'NL NATIONAL',
                    ),
              vm.selectedIndex == 1
                  ? CustomContainer(
                      width: Utils.width(context) * 1,
                      padding: EdgeInsets.all(15.sm),
                      title: 'LAST  2O  LOTTO  DRAWS',
                      bgColor: AppColors.greyColor.withOpacity(0.8),
                      fgColor: AppColors.blackColor,
                      fontsize: 17.sp,
                      fontweight: FontWeight.w800,
                      border: Border(
                        bottom: BorderSide(
                          width: 3.w,
                          color: AppColors.blackColor,
                        ),
                      ),
                    )
                  : const CustomDrawContainer(
                      date: '13/06/2022',
                      draw: '743',
                    ),
              vm.selectedIndex == 1
                  ? ListTile(
                      contentPadding: EdgeInsets.only(
                        right: 20.w,
                      ),
                      minLeadingWidth: 0,
                      dense: true,
                      horizontalTitleGap: 16.0,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomText(
                              title: 'NL',
                              fontcolor: AppColors.blackColor,
                              fontweight: FontWeight.w500,
                              fontsize: 16.5.sp,
                              underline: false),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                              title: 'NATIONAL LOTTO',
                              fontcolor: AppColors.blackColor,
                              fontweight: FontWeight.w800,
                              fontsize: 17.sp,
                              underline: false),
                          SizedBox(
                            width: 25.w,
                          ),
                        ],
                      ),
                      trailing: CustomText(
                          title: 'YEAR 2022',
                          fontcolor: AppColors.blackColor,
                          fontweight: FontWeight.w800,
                          fontsize: 16.5.sp,
                          underline: false),
                    )
                  : const CatContainer(
                      thistitle: 'PM GOLD',
                    ),
              vm.selectedIndex == 0
                  ? const CustomDrawContainer(
                      date: '13/06/2022',
                      draw: '921',
                    )
                  : const Center(),
              vm.selectedIndex == 0
                  ? const CatContainer(
                      thistitle: 'GC JET',
                    )
                  : const Center(),
              vm.selectedIndex == 0
                  ? const CustomDrawContainer(
                      date: '13/06/2022',
                      draw: '643',
                    )
                  : const Center(),
              vm.selectedIndex == 1 ? const CustomTable() : const Center(),
            ],
          );
        }),
      ),
    );
  }
}

class CatContainer extends StatelessWidget {
  final String thistitle;
  const CatContainer({
    super.key,
    required this.thistitle,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: Utils.width(context) * 1,
      padding: EdgeInsets.all(15.sm),
      title: thistitle,
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontsize: 17.sp,
      fontweight: FontWeight.w800,
      border: Border(
        top: BorderSide(
          width: 3.w,
          color: AppColors.blackColor,
        ),
        bottom: BorderSide(
          width: 3.w,
          color: AppColors.blackColor,
        ),
      ),
    );
  }
}

class CustomDrawContainer extends StatelessWidget {
  final String draw;
  final String date;
  const CustomDrawContainer({
    super.key,
    required this.draw,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return CustomChildContainer(
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      border: Border(
        top: BorderSide(
          width: 3.w,
          color: AppColors.blackColor,
        ),
        bottom: BorderSide(
          width: 3.w,
          color: AppColors.blackColor,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      title: 'DRAW: $draw',
                      fontcolor: AppColors.blackColor,
                      fontweight: FontWeight.w700,
                      fontsize: 13.sp,
                      underline: false),
                  CustomText(
                      title: date.toString(),
                      fontcolor: AppColors.blackColor,
                      fontweight: FontWeight.w700,
                      fontsize: 13.sp,
                      underline: false),
                ]),
          ),
          Center(
            child: CustomText(
                title: 'WINNING NUMBERS',
                fontcolor: AppColors.blackColor,
                fontweight: FontWeight.w700,
                fontsize: 15.sp,
                underline: false),
          ),
          Row(
            children: const [
              CustomCircle(),
              CustomCircle(),
              CustomCircle(),
              CustomCircle(),
              CustomCircle(),
            ],
          ),
          Center(
            child: CustomText(
                title: 'MACHINE NUMBERS',
                fontcolor: AppColors.blackColor,
                fontweight: FontWeight.w700,
                fontsize: 15.sp,
                underline: false),
          ),
          Row(
            children: const [
              CustomCircle(
                clr: AppColors.redColor,
              ),
              CustomCircle(
                clr: AppColors.redColor,
              ),
              CustomCircle(
                clr: AppColors.redColor,
              ),
              CustomCircle(
                clr: AppColors.redColor,
              ),
              CustomCircle(
                clr: AppColors.redColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCircle extends StatelessWidget {
  final Color clr;
  final String title;
  const CustomCircle(
      {super.key, this.clr = AppColors.greenColor, this.title = ''});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: Utils.width(context) * 0.2,
      height: 40.h,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      title: title,
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontsize: 17.sp,
      fontweight: FontWeight.w800,
      shape: BoxShape.circle,
      border: Border.all(
        width: 4.w,
        color: clr,
      ),
    );
  }
}
