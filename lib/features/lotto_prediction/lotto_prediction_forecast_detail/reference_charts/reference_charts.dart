import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/lotto_prediction/lotto_prediction_forecast_detail/reference_charts/reference_charts_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';

class ReferenceChartsScreen extends StatefulWidget {
  const ReferenceChartsScreen({super.key});

  @override
  State<ReferenceChartsScreen> createState() => _ReferenceChartsScreenState();
}

class _ReferenceChartsScreenState extends State<ReferenceChartsScreen> {
  final ScrollController _controller = ScrollController();
  void animateToIndex(int i) {
    _controller.animateTo(i * 40.w,
        duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final vm = ref.watch(referenceChartsVmProvider);
      return SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(Utils.width(context) * 1, 60.h),
            child: const CustomAppBar(),
          ),
          body: Column(
            children: [
              CustomContainer(
                width: Utils.width(context) * 1,
                height: 40.h,
                title: 'REFERENCE CHARTS',
                bgColor: AppColors.blackColor,
                fgColor: AppColors.whiteColor,
                fontsize: 17.sp,
                fontweight: FontWeight.w700,
                border: Border.all(
                  width: 0.0,
                  color: AppColors.blackColor,
                ),
              ),
              CustomChildContainer(
                height: 50.h,
                margin: EdgeInsets.only(top: 10.h),
                bgColor: Colors.transparent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          if (vm.selectedIndex <= vm.tables[0].length &&
                              vm.selectedIndex > 1) {
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
                          itemCount: vm.tables[0].length,
                          itemBuilder: (context, i) {
                            int index = i + 1;
                            return Padding(
                              padding: EdgeInsets.only(
                                left: 40.w,
                              ),
                              child: GestureDetector(
                                onTap: () => vm.setSelectedIndex(index),
                                child: CustomContainer(
                                  // width: 60.w,
                                  bgColor: (vm.selectedIndex == index)
                                      ? const Color.fromARGB(255, 153, 219, 109)
                                          .withOpacity(0.5)
                                      : AppColors.whiteColor,
                                  border:
                                      Border.all(color: AppColors.blueColor),
                                  shape: BoxShape.circle,
                                  padding: EdgeInsets.all(18.sm),
                                  title: '$index',
                                  fontsize: 16.sp,
                                  fontweight: FontWeight.w800,
                                ),
                              ),
                            );
                          }),
                    ),
                    GestureDetector(
                        onTap: () {
                          if (vm.selectedIndex < vm.tables[0].length &&
                              vm.selectedIndex >= 1) {
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
              Expanded(
                child: ListView.builder(
                    itemCount: vm.tables.length,
                    itemBuilder: (context, index) {
                      int tableIndex = vm.selectedIndex;
                      return CustomChildContainer(
                        bgColor: AppColors.whiteColor,
                        border: Border.all(color: AppColors.blueColor),
                        padding: EdgeInsets.all(10.sm),
                        margin: EdgeInsets.all(10.sm),
                        child: Column(
                          children: [
                            CustomChildContainer(
                              border: Border.all(
                                  color: AppColors.blackColor, width: 2.w),
                              padding: EdgeInsets.all(10.sm),
                              bgColor: AppColors.whiteColor,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomText(
                                        title: vm.tables[index][tableIndex]
                                            ['gameType'],
                                        fontcolor: AppColors.redColor,
                                        fontweight: FontWeight.w800,
                                        fontsize: 16.sp,
                                        underline: false),
                                    SizedBox(
                                      height: 10.h,
                                      width: 15.w,
                                      child: VerticalDivider(
                                        thickness: 2.w,
                                        width: 1.w,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    CustomText(
                                        title: vm.tables[index][tableIndex]
                                            ['gameName'],
                                        fontcolor: AppColors.blackColor,
                                        fontweight: FontWeight.w800,
                                        fontsize: 16.sp,
                                        underline: false),
                                  ]),
                            ),
                            Table(
                              columnWidths: {
                                0: FlexColumnWidth(1.5.w),
                                1: FlexColumnWidth(1.w),
                                2: FlexColumnWidth(2.5.w),
                                3: FlexColumnWidth(2.5.w),
                              },
                              border: TableBorder.all(
                                color: AppColors.blackColor,
                                style: BorderStyle.solid,
                                width: 2.w,
                              ),
                              children: [
                                TableRow(
                                    decoration: BoxDecoration(
                                      color:
                                          AppColors.whiteColor.withOpacity(0.1),
                                    ),
                                    children: [
                                      CustomContainer(
                                          title: 'DATE',
                                          align: TextAlign.center,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5.h, horizontal: 5.sm),
                                          bgColor: AppColors.blackColor
                                              .withOpacity(0.6),
                                          fgColor: AppColors.whiteColor,
                                          fontweight: FontWeight.w600,
                                          fontsize: 11.sp,
                                          underline: false),
                                      CustomContainer(
                                          title: 'DRAW',
                                          align: TextAlign.center,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5.h, horizontal: 5.sm),
                                          bgColor: AppColors.blackColor
                                              .withOpacity(0.6),
                                          fgColor: AppColors.whiteColor,
                                          fontweight: FontWeight.w600,
                                          fontsize: 11.sp,
                                          underline: false),
                                      CustomContainer(
                                          title: 'WINNING',
                                          align: TextAlign.center,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5.h, horizontal: 5.sm),
                                          bgColor: const Color(0XFFa8d08d),
                                          fgColor: AppColors.blackColor,
                                          fontweight: FontWeight.w600,
                                          fontsize: 11.sp,
                                          underline: false),
                                      CustomContainer(
                                          title: 'MACHINE',
                                          align: TextAlign.center,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5.h, horizontal: 5.sm),
                                          bgColor: AppColors.orangeColor,
                                          fgColor: AppColors.blackColor,
                                          fontweight: FontWeight.w600,
                                          fontsize: 11.sp,
                                          underline: false),
                                    ]),
                                ...List.generate(
                                    vm.tables[index][tableIndex]['tableData']
                                        .length,
                                    (i) => TableRow(children: [
                                          CustomContainer(
                                            height: 30.h,
                                            title: vm.tables[index][tableIndex]
                                                    ['tableData'][i]['date']
                                                .toString(),
                                            align: TextAlign.center,
                                            padding: EdgeInsets.only(
                                                top: 5.sm, bottom: 5.sm),
                                            bgColor: AppColors.whiteColor
                                                .withOpacity(0.1),
                                            fgColor: AppColors.blackColor,
                                            fontweight: FontWeight.w500,
                                            fontsize: 10.sp,
                                            underline: false,
                                          ),
                                          CustomContainer(
                                            height: 30.h,
                                            title: vm.tables[index][tableIndex]
                                                    ['tableData'][i]['draw']
                                                .toString(),
                                            align: TextAlign.center,
                                            padding: EdgeInsets.all(5.sm),
                                            bgColor: AppColors.whiteColor
                                                .withOpacity(0.1),
                                            fgColor: AppColors.blackColor,
                                            fontweight: FontWeight.w500,
                                            fontsize: 10.sp,
                                            underline: false,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: List.generate(
                                              5,
                                              (rIndex) => CustomContainer(
                                                width: 25.w,
                                                height: 30.h,
                                                title: (rIndex == 0)
                                                    ? vm.tables[index][tableIndex]
                                                            ['tableData'][i]
                                                            ['w1']
                                                        .toString()
                                                    : (rIndex == 1)
                                                        ? vm.tables[index][tableIndex]
                                                                ['tableData'][i]
                                                                ['w2']
                                                            .toString()
                                                        : (rIndex == 2)
                                                            ? vm.tables[index]
                                                                    [tableIndex]
                                                                    ['tableData']
                                                                    [i]['w3']
                                                                .toString()
                                                            : (rIndex == 3)
                                                                ? vm.tables[index][tableIndex]['tableData'][i]['w4']
                                                                    .toString()
                                                                : vm.tables[index][tableIndex]['tableData'][i]['w5'].toString(),
                                                border: (rIndex == 4)
                                                    ? null
                                                    : Border(
                                                        right: BorderSide(
                                                          width: 1.5.w,
                                                          color: AppColors
                                                              .blackColor,
                                                        ),
                                                      ),
                                                align: TextAlign.center,
                                                padding: EdgeInsets.all(5.sm),
                                                bgColor: AppColors.whiteColor
                                                    .withOpacity(0.1),
                                                fgColor: AppColors.blackColor,
                                                fontweight: FontWeight.w500,
                                                fontsize: 10.sp,
                                                underline: false,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                              5,
                                              (rIndex) => CustomContainer(
                                                width: 25.w,
                                                height: 30.h,
                                                title: (rIndex == 0)
                                                    ? vm.tables[index][tableIndex]
                                                            ['tableData'][i]
                                                            ['m1']
                                                        .toString()
                                                    : (rIndex == 1)
                                                        ? vm.tables[index][tableIndex]
                                                                ['tableData'][i]
                                                                ['m2']
                                                            .toString()
                                                        : (rIndex == 2)
                                                            ? vm.tables[index]
                                                                    [tableIndex]
                                                                    ['tableData']
                                                                    [i]['m3']
                                                                .toString()
                                                            : (rIndex == 3)
                                                                ? vm.tables[index][tableIndex]['tableData'][i]['m4']
                                                                    .toString()
                                                                : vm.tables[index][tableIndex]['tableData'][i]['m5'].toString(),
                                                border: (rIndex == 4)
                                                    ? null
                                                    : Border(
                                                        right: BorderSide(
                                                          width: 1.5.w,
                                                          color: AppColors
                                                              .blackColor,
                                                        ),
                                                      ),
                                                align: TextAlign.center,
                                                padding: EdgeInsets.all(5.sm),
                                                bgColor: AppColors.whiteColor
                                                    .withOpacity(0.1),
                                                fgColor: AppColors.blackColor,
                                                fontweight: FontWeight.w500,
                                                fontsize: 10.sp,
                                                underline: false,
                                              ),
                                            ),
                                          ),
                                        ]))
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      );
    });
  }
}
