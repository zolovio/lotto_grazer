import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/grenco_numbers/grenco_numbers_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/grenco_numbers_analysis_card.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/components/info_widget.dart';
import 'package:lotto_grazer/utils/utils.dart';

class GrencoNumbersScreen extends StatefulWidget {
  const GrencoNumbersScreen({super.key});

  @override
  State<GrencoNumbersScreen> createState() => _GrencoNumbersScreenState();
}

class _GrencoNumbersScreenState extends State<GrencoNumbersScreen> {
  final ValueNotifier<bool> islogin = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(Utils.width(context) * 1, 60.h),
          child: const CustomAppBar(),
        ),
        body: Consumer(builder: (context, ref, _) {
          final _vm = ref.watch(grencoNumbersProvider);
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomContainer(
                      width: Utils.width(context) * 1,
                      height: 40.h,
                      title: 'GRENCO NUMBERS',
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
                        infoTitle: "Grenco Numbers",
                        infoText: 'are set of potential winning numbers '
                            'extracted from group numbers, ending '
                            'numbers and column numbers chart, that the  '
                            'lottery system tends to pick atleast two winning numbers '
                            'from using vertical lapping plan patterns. ')
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: AppColors.blackColor, width: 3.w))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonDropDown(
                              initialValue: _vm.lotteryType,
                              list: _vm.lotteryTypeList,
                              onSelect: (value) {
                                _vm.setLotteryType(value);
                              },
                              setFont: 10.sp,
                              title: '',
                            ),
                            CommonDropDown(
                              initialValue: _vm.lotteryGame,
                              list: _vm.lotteryGameList,
                              onSelect: (value) {
                                _vm.setLotteryGame(value);

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
                              title: 'LAPPING BOX',
                              setFont: 10.sp,
                              setWidth: 150.w,
                            ),
                            CommonDropDown(
                              initialValue: _vm.countingWeeks,
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
                          title: 'Search',
                          fontsize: 15.sp,
                          fontweight: FontWeight.w700,
                          onpress: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.greyColor.withOpacity(0.2),
                      border: Border(
                          top: BorderSide(
                              color: AppColors.blackColor, width: 3.w),
                          bottom: BorderSide(
                              color: AppColors.blackColor, width: 3.w))),
                  child: Padding(
                    padding: EdgeInsets.all(8.sm),
                    child: const CustomText(
                        title: 'KEY ANALYSIS', fontweight: FontWeight.w700),
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                childCount: 9,
                (context, index) {
                  return Padding(
                      padding: EdgeInsets.all(2.sm),
                      child: GrencoNumbersAnalysisCard(
                        firstNum: '18',
                        secondNum: '50',
                        winNum: 'w1',
                        planName: 'ON BOARD',
                        week: "Week 1",
                        onDetailsTap: () => _vm.viewDetailsTap(
                          context,
                          firstNum: '18',
                          secondNum: '50',
                          winNum: 'w1',
                          gameName: 'PM GOLD',
                          countingWeek: "2",
                        ),
                      ));
                },
              )),
            ],
          );
        }),
      ),
    );
  }
}
