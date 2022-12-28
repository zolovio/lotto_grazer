import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/dashboard/dashboard.dart';
import 'package:lotto_grazer/features/grenco_numbers/grenco_numbers_vm.dart';
import 'package:lotto_grazer/features/lotto_prediction/lotto_prediction_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/timing_keys_analysis_cards.dart';
import 'package:lotto_grazer/utils/utils.dart';

class TimingKeysScreen extends StatelessWidget {
  TimingKeysScreen({Key? key}) : super(key: key);

  List<dynamic> timingKeysData = [
    ["W2", "W3"],
    ["W15", "W3"],
    ["W"],
  ];

  List<SavedPlansData> plansData = [
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "DIAGONAL",
      planName: "LAPPING NUMBER",
      isRightDiagonal: true,
      winningNum1: 'w2',
      winningNum2: 'w3',
      num1: '40',
      num2: '59',
    ),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "HORIZONTAL",
      planName: "LAPPING NUMBER",
      winningNum1: 'w1',
      winningNum2: 'w3',
      num1: '40',
      num2: '59',
    ),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "VERTICAL",
      planName: "PROGRESSIVE NUMBER",
      winningNum1: 'w',
      signCode1: '---+',
      signCode2: '+--+',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(Utils.width(context) * 1, 60.h),
          child: const CustomAppBar(),
        ),
        body: Consumer(
          builder: (context, ref, _) {
            final _vm = ref.watch(grencoNumbersProvider);
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CustomContainer(
                    width: Utils.width(context) * 1,
                    height: 40.h,
                    title: 'TIMING KEYS',
                    bgColor: AppColors.blackColor,
                    fgColor: AppColors.whiteColor,
                    fontsize: 17.sp,
                    fontweight: FontWeight.w700,
                    border: Border.all(
                      width: 0.0,
                      color: AppColors.whiteColor.withOpacity(0.1),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: AppColors.blackColor, width: 3.w),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CommonDropDown(
                                initialValue: "LOTTERY",
                                list: const ["LOTTERY"],
                                onSelect: (value) {
                                  print(value);
                                },
                                setFont: 10.sp,
                                title: '',
                              ),
                              CommonDropDown(
                                initialValue: "GAME",
                                list: ["GAME"],
                                onSelect: (value) {
                                  print(value);
                                },
                                setFont: 10.sp,
                                title: '',
                              ),
                              CommonDropDown(
                                initialValue: _vm.drawDate,
                                list: _vm.drawDateList,
                                onSelect: (value) {
                                  _vm.setDrawDate(value);

                                  print(value);
                                },
                                setFont: 10.sp,
                                title: '',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CommonDropDown(
                                initialValue: _vm.lappingBox,
                                list: _vm.lappingBoxList,
                                onSelect: (value) {
                                  _vm.setLappingBox(value);
                                  print(value);
                                },
                                title: 'SELECT A PLAN PATTERN',
                                setFont: 10.sp,
                                setWidth: 150.w,
                              ),
                              CommonDropDown(
                                initialValue: "2",
                                list: _vm.countingWeeksList,
                                onSelect: (value) {
                                  _vm.setCountingWeeks(value);
                                  print(value);
                                },
                                title: 'COUNTING WEEKS',
                                setFont: 10.sp,
                                setWidth: 80.w,
                              ),
                              CommonDropDown(
                                initialValue: _vm.boardPlan,
                                list: _vm.boardPlanList,
                                onSelect: (value) {
                                  _vm.setBoardPlan(value);
                                  print(value);
                                },
                                title: 'BOARD PLAN',
                                setFont: 10.sp,
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          CustomButton(
                            btnwidth: Utils.width(context) * 0.3,
                            btnheight: 32.h,
                            bottomLeftRadius: 5.r,
                            topLeftRadius: 5.r,
                            bottomRightRadius: 5.r,
                            topRightRadius: 5.r,
                            bdwidth: 2.w,
                            bgColor: AppColors.blackColor,
                            bdColor: AppColors.lightBlueColor,
                            title: 'KEY SEARCH',
                            fontsize: 15.sp,
                            fontweight: FontWeight.w700,
                            onpress: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: timingKeysData.length,
                    (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(2.sm),
                        child: TimingKeysAnalysisCard(
                          savedPlansData: plansData[index],
                          winNum: timingKeysData[index],
                          planName: index == 0 ? 'ON BOARD' : 'ACROSS BOARD',
                          week: index == 0
                              ? "D--LAPPING"
                              : index == 1
                                  ? "POLAR ADDITION"
                                  : "PROGRESSIVE",
                          onDetailsTap: () => _vm.viewDetailsTap(
                            context,
                            firstNum: '18',
                            secondNum: '50',
                            winNum: 'w1',
                            gameName: 'PM GOLD',
                            countingWeek: "2",
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
        bottomNavigationBar: Container(
          height: 65.h,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            border: Border.all(color: AppColors.blackColor),
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 8.r, offset: const Offset(0, 5))],
          ),
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < navBarsItems().length; i++)
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 55.h,
                        width: 72.w,
                        padding: EdgeInsets.all(5.sm),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.blackColor),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(5.r), bottomRight: Radius.circular(5.r))),
                        child: Text(
                          navBarsItems()[i].title,
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12.sp),
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

List<BottomNavModel> navBarsItems() {
  return [
    BottomNavModel(
      inactiveTitle: "HOME",
      title: "HOME",
    ),
    BottomNavModel(
      inactiveTitle: "LOTTO PREDICTION",
      title: "LOTTO FORECAST",
    ),
    BottomNavModel(
      inactiveTitle: "TIMINGS KEYS",
      title: "TIMINGS KEYS",
    ),
    BottomNavModel(
      inactiveTitle: "2 SURE TRACER",
      title: "2 SURE TRACER",
    ),
    BottomNavModel(
      inactiveTitle: "POWER \nX PLAY",
      title: "POWER \nX PLAY",
    ),
    BottomNavModel(
      inactiveTitle: "SETTINGS",
      title: "SETTINGS",
    ),
  ];
}
