import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/grenco_key_chart/grenco_key_chart_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/grenco_key_chart_analysis_card.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_radio_button.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';

class GrencoKeyChartScreen extends StatefulWidget {
  const GrencoKeyChartScreen({super.key});

  @override
  State<GrencoKeyChartScreen> createState() => _GrencoKeyChartScreenState();
}

class _GrencoKeyChartScreenState extends State<GrencoKeyChartScreen> {
  final ValueNotifier<bool> islogin = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(Utils.width(context) * 1, 70.h),
        child: const CustomAppBar(),
      ),
      body: Consumer(builder: (context, ref, _) {
        final _vm = ref.watch(grencoKeyChartProvider);
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomContainer(
                width: Utils.width(context) * 1,
                height: 50.h,
                title: 'GRENCO KEY CHART',
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
              child: Padding(
                padding: EdgeInsets.all(8.sm),
                child: CustomText(
                  title: 'The Grenco Lotto Key chart is a chart that '
                      'brings together, Group number keys, Ending '
                      'number keys and Column number keys, to '
                      'present a set of numbers, the lottery system '
                      'tends to pick at least two winning numbers '
                      'from, using the 3rd box winning Lapping plan. ',
                  fontcolor: AppColors.blackColor,
                  fontsize: 14.sp,
                  fontweight: FontWeight.w600,
                  align: TextAlign.start,
                ),
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
                            initialValue: 'LOTTERY TYPE',
                            list: ['LOTTERY TYPE', '2', '3', '4'],
                            onSelect: (value) {
                              print(value);
                            },
                            title: '',
                          ),
                          CommonDropDown(
                            initialValue: '1',
                            list: ['1', '2', '3', '4'],
                            onSelect: (value) {
                              print(value);
                            },
                            title: 'COUNTING WEEKS',
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 60.h,
                        width: size.width,
                        child: CustomRadioButton(
                          list: _vm.keyList,
                          selectedIndex: _vm.selectedIndex,
                          onSelect: (index) {
                            _vm.onSelect(index);
                          },
                        ),
                      ),
                      (_vm.selectedIndex == 0)
                          ? const Center()
                          : CustomChildContainer(
                              width: Utils.width(context) * 1,
                              height: 200.h,
                              bgColor: AppColors.whiteColor.withOpacity(0.1),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CommonDropDown(
                                    initialValue: 'SELECT FIRST NUMBER      ',
                                    list: [
                                      'SELECT FIRST NUMBER      ',
                                      '2',
                                      '4',
                                      '6'
                                    ],
                                    onSelect: (value) {
                                      print(value);
                                    },
                                    title: '',
                                  ),
                                  CommonDropDown(
                                    initialValue: 'SELECT SECOND NUMBER',
                                    list: [
                                      'SELECT SECOND NUMBER',
                                      '1',
                                      '2',
                                      '3'
                                    ],
                                    onSelect: (value) {
                                      print(value);
                                    },
                                    title: '',
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
                        top:
                            BorderSide(color: AppColors.blackColor, width: 3.w),
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
                    child: GrencoKeyChartAnalysisCard(
                      firstNum: '18',
                      secondNum: '50',
                      planName: 'ON BOARD PLAN',
                      week: "Week 1",
                      onDetailsTap: () => _vm.viewDetailsTap(
                        context,
                        firstNum: '18',
                        secondNum: '50',
                        planName: 'PM GOLD',
                        countingWeek: "2",
                      ),
                    ));
              },
            )),
          ],
        );
      }),
    );
  }
}
