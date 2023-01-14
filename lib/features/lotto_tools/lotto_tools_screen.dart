import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/lotto_tools/column_number_chart/column_number_chart.dart';
import 'package:lotto_grazer/features/lotto_tools/ending_number_chart/ending_number_chart.dart';
import 'package:lotto_grazer/features/lotto_tools/find_events/find_events.dart';
import 'package:lotto_grazer/features/lotto_tools/classification_chart/classification_chart.dart';
import 'package:lotto_grazer/features/lotto_tools/group_number_chart/group_number_chart.dart';
import 'package:lotto_grazer/features/lotto_tools/lotto_tools_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/components/info_widget.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LottoToolsScreen extends StatefulWidget {
  const LottoToolsScreen({super.key});

  @override
  State<LottoToolsScreen> createState() => _LottoToolsScreenState();
}

class _LottoToolsScreenState extends State<LottoToolsScreen> {
  final ScrollController _controller = ScrollController();
  void animateToIndex(int i) {
    _controller.animateTo(i * 100.w,
        duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  List lottoToolsList = [
    'FIND\nEVENTS',
    'CLASSIFICATION\nCHART',
    'GROUP\nNUMBER CHART',
    'ENDING\nNUMBER CHART',
    'COLUMN\nNUMBER CHART'
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final vm = ref.watch(lottoToolsVmProvider);
      return SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(Utils.width(context) * 1, 60.h),
            child: const CustomAppBar(),
          ),
          body: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CustomContainer(
                    width: Utils.width(context) * 1,
                    height: 40.h,
                    title: 'LOTTO TOOLS',
                    bgColor: AppColors.blackColor,
                    fgColor: AppColors.whiteColor,
                    fontsize: 17.sp,
                    fontweight: FontWeight.w700,
                    border: Border.all(
                      width: 0.0,
                      color: AppColors.blackColor,
                    ),
                  ),
                  const InfoWidget(
                    infoTitle: "Lotto Tools",
                    infoText:
                        'presents lotto charts that enhances lotto forecasting and ability to look '
                        'up past draw result, for strategic plan patterns and compare them, to decipher winning numbers.',
                  )
                ],
              ),
              CustomChildContainer(
                height: 40.h,
                margin: EdgeInsets.only(top: 10.h),
                bgColor: Colors.transparent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          if (vm.selectedIndex <= 4 && vm.selectedIndex > 0) {
                            vm.setSelectedIndex(vm.selectedIndex - 1);
                            animateToIndex(vm.selectedIndex);
                          }
                        },
                        child: Icon(
                          Icons.arrow_left,
                          size: 60.sp,
                          color: AppColors.blueColor,
                        )),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _controller,
                          itemCount: lottoToolsList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: GestureDetector(
                                onTap: () => vm.setSelectedIndex(index),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: (vm.selectedIndex == index)
                                          ? const Color.fromARGB(
                                                  255, 153, 219, 109)
                                              .withOpacity(0.5)
                                          : AppColors.whiteColor,
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(
                                          color: AppColors.blueColor,
                                          width: 1.5.w),
                                    ),
                                    padding: EdgeInsets.all(10.sm),
                                    child: CustomText(
                                      title: '${lottoToolsList[index]}',
                                      align: TextAlign.center,
                                      fontsize: 14.sp,
                                      fontweight: FontWeight.w800,
                                    )),
                              ),
                            );
                          }),
                    ),
                    GestureDetector(
                        onTap: () {
                          if (vm.selectedIndex < 4 && vm.selectedIndex >= 0) {
                            vm.setSelectedIndex(vm.selectedIndex + 1);
                            animateToIndex(vm.selectedIndex);
                          }
                        },
                        child: Icon(
                          Icons.arrow_right,
                          size: 60.sp,
                          color: AppColors.blueColor,
                        )),
                  ],
                ),
              ),
              CustomChildContainer(
                width: Utils.width(context) * 1,
                bgColor: AppColors.greyColor.withOpacity(0.5),
                margin: EdgeInsets.only(top: 10.h),
                border: Border.all(color: AppColors.blackColor, width: 3.w),
                child: Padding(
                  padding: EdgeInsets.all(15.sm),
                  child: CustomText(
                    title: (vm.selectedIndex == 0)
                        ? 'FIND AND COMPARE EVENTS'
                        : (vm.selectedIndex == 1)
                            ? 'CLASSIFICATION CHART'
                            : (vm.selectedIndex == 2)
                                ? 'GROUP NUMBER CHART'
                                : (vm.selectedIndex == 3)
                                    ? 'ENDING NUMBER CHART'
                                    : 'COLUMN NUMBER CHART',
                    fontcolor: AppColors.blackColor,
                    fontweight: FontWeight.w700,
                    fontsize: 15.sp,
                  ),
                ),
              ),
              (vm.selectedIndex == 0)
                  ? const FindEventScreen()
                  : (vm.selectedIndex == 1)
                      ? const ClassificationChartScreen()
                      : (vm.selectedIndex == 2)
                          ? const GroupNumberChartScreen()
                          : (vm.selectedIndex == 3)
                              ? const EndingNumberChartScreen()
                              : const ColumnNumberChartScreen(),
            ],
          ),
        ),
      );
    });
  }
}
