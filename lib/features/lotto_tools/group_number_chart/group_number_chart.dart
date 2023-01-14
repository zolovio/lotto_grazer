import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/lotto_tools/group_number_chart/group_number_chart_vm.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/colors.dart';

class GroupNumberChartScreen extends StatefulWidget {
  const GroupNumberChartScreen({super.key});

  @override
  State<GroupNumberChartScreen> createState() => _GroupNumberChartScreenState();
}

class _GroupNumberChartScreenState extends State<GroupNumberChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final vm = ref.watch(groupNumberChartVmProvider);
      return Expanded(
        child: ListView(
          children: [
            CustomChildContainer(
              bgColor: AppColors.whiteColor,
              border: Border.all(color: AppColors.blueColor, width: 2.5.w),
              padding: EdgeInsets.all(5.sm),
              margin: EdgeInsets.all(5.sm),
              child: Table(
                columnWidths: {
                  0: FlexColumnWidth(0.8.w),
                  1: FlexColumnWidth(3.5.w),
                },
                border: TableBorder.all(
                  color: AppColors.blackColor,
                  style: BorderStyle.solid,
                  width: 2.w,
                ),
                children: [
                  TableRow(
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor.withOpacity(0.1),
                      ),
                      children: [
                        CustomContainer(
                            title: 'GROUP',
                            align: TextAlign.center,
                            padding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 5.sm),
                            bgColor: AppColors.whiteColor.withOpacity(0.1),
                            fgColor: AppColors.blackColor,
                            fontweight: FontWeight.w700,
                            fontsize: 12.sp,
                            underline: false),
                        CustomContainer(
                            title: 'NUMBERS',
                            align: TextAlign.center,
                            padding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 5.sm),
                            bgColor: AppColors.whiteColor.withOpacity(0.1),
                            fgColor: AppColors.blackColor,
                            fontweight: FontWeight.w700,
                            fontsize: 12.sp,
                            underline: false),
                      ]),
                  ...List.generate(
                      vm.tables.length,
                      (index) => TableRow(children: [
                            CustomContainer(
                              height: 25.h,
                              title: vm.tables[index]['c1'].toString(),
                              align: TextAlign.center,
                              padding: EdgeInsets.only(top: 5.sm, bottom: 5.sm),
                              bgColor: AppColors.whiteColor.withOpacity(0.1),
                              fgColor: AppColors.blackColor,
                              fontweight: FontWeight.w800,
                              fontsize: 12.sp,
                              underline: false,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(
                                10,
                                (rIndex) => CustomContainer(
                                  width: 30.w,
                                  height: 25.h,
                                  title: (rIndex == 0)
                                      ? vm.tables[index]['c2'].toString()
                                      : (rIndex == 1)
                                          ? vm.tables[index]['c3'].toString()
                                          : (rIndex == 2)
                                              ? vm.tables[index]['c4']
                                                  .toString()
                                              : (rIndex == 3)
                                                  ? vm.tables[index]['c5']
                                                      .toString()
                                                  : (rIndex == 4)
                                                      ? vm.tables[index]['c6']
                                                          .toString()
                                                      : (rIndex == 5)
                                                          ? vm.tables[index]
                                                                  ['c7']
                                                              .toString()
                                                          : (rIndex == 6)
                                                              ? vm.tables[index]
                                                                      ['c8']
                                                                  .toString()
                                                              : (rIndex == 7)
                                                                  ? vm.tables[
                                                                          index]
                                                                          ['c9']
                                                                      .toString()
                                                                  : (rIndex ==
                                                                          8)
                                                                      ? vm.tables[
                                                                              index]
                                                                              [
                                                                              'c10']
                                                                          .toString()
                                                                      : vm.tables[
                                                                              index]
                                                                              [
                                                                              'c11']
                                                                          .toString(),
                                  border: (rIndex == 9)
                                      ? null
                                      : Border(
                                          right: BorderSide(
                                            width: 1.5.w,
                                            color: AppColors.blackColor,
                                          ),
                                        ),
                                  align: TextAlign.center,
                                  padding: EdgeInsets.all(5.sm),
                                  bgColor:
                                      AppColors.whiteColor.withOpacity(0.1),
                                  fgColor: AppColors.blackColor,
                                  fontweight: FontWeight.w600,
                                  fontsize: 11.sp,
                                  underline: false,
                                ),
                              ),
                            ),
                          ]))
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
