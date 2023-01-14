import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/timing_keys/timing_keys_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/info_widget.dart';
import 'package:lotto_grazer/res/components/timing_keys_analysis_card.dart';
import 'package:lotto_grazer/utils/utils.dart';

class TimingKeysScreen extends StatefulWidget {
  const TimingKeysScreen({Key? key}) : super(key: key);

  @override
  State<TimingKeysScreen> createState() => _TimingKeysScreenState();
}

class _TimingKeysScreenState extends State<TimingKeysScreen> {
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
            final vm = ref.watch(timingKeysProvider);
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomContainer(
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
                      const InfoWidget(
                        infoTitle: "Timing Keys",
                        infoText:
                            'showcases eight(8) strategic key plan, patterns used to, calculate potential lotto winning number(s)'
                            'set to draw over some counting weeks on a lottery system.',
                      )
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top:
                            BorderSide(color: AppColors.blackColor, width: 3.w),
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
                                initialValue: vm.lotteryType,
                                list: vm.lotteryTypeList,
                                onSelect: (value) {
                                  vm.setLotteryType(value);
                                  print(value);
                                },
                                setFont: 10.sp,
                                title: '',
                              ),
                              CommonDropDown(
                                initialValue: vm.lotteryGame,
                                list: vm.lotteryGameList,
                                onSelect: (value) {
                                  vm.setLotteryGame(value);
                                  print(value);
                                },
                                setFont: 10.sp,
                                title: '',
                              ),
                              CommonDropDown(
                                initialValue: vm.drawDate,
                                list: vm.drawDateList,
                                onSelect: (value) {
                                  vm.setDrawDate(value);

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
                                initialValue: vm.lappingBox,
                                list: vm.lappingBoxList,
                                onSelect: (value) {
                                  vm.setLappingBox(value);
                                  print(value);
                                },
                                title: 'SELECT A PLAN PATTERN',
                                setFont: 10.sp,
                                setWidth: 150.w,
                              ),
                              CommonDropDown(
                                initialValue: vm.countingWeeks,
                                list: vm.countingWeeksList,
                                onSelect: (value) {
                                  vm.setCountingWeeks(value);
                                  print(value);
                                },
                                title: 'COUNTING WEEKS',
                                setFont: 10.sp,
                                setWidth: 80.w,
                              ),
                              CommonDropDown(
                                initialValue: vm.boardPlan,
                                list: vm.boardPlanList,
                                onSelect: (value) {
                                  vm.setBoardPlan(value);
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
                    childCount: vm.plansData.length,
                    (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(2.sm),
                        child: TimingKeysAnalysisCard(
                          timingKeysData: vm.plansData[index],
                          boardName: index == 0 ? 'ON BOARD' : 'ACROSS BOARD',
                          onDetailsTap: () => vm.viewDetailsTap(
                            context,
                            plansData: vm.plansData[index],
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
      ),
    );
  }
}
