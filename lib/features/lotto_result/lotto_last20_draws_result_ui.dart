import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/lotto_result/lotto_result_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';

class CustomTable extends StatefulWidget {
  const CustomTable({super.key});

  @override
  State<CustomTable> createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {
  TableRow tableheader = TableRow(
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.1),
      ),
      children: [
        CustomContainer(
            title: 'DATE',
            align: TextAlign.center,
            padding: EdgeInsets.all(5.sm),
            bgColor: AppColors.blackColor.withOpacity(0.6),
            fgColor: AppColors.whiteColor,
            fontweight: FontWeight.w600,
            fontsize: 11.sp,
            underline: false),
        CustomContainer(
            title: 'DRAW',
            align: TextAlign.center,
            padding: EdgeInsets.all(5.sm),
            bgColor: AppColors.blackColor.withOpacity(0.6),
            fgColor: AppColors.whiteColor,
            fontweight: FontWeight.w600,
            fontsize: 11.sp,
            underline: false),
        CustomContainer(
            title: 'WINNING',
            align: TextAlign.center,
            padding: EdgeInsets.all(5.sm),
            bgColor: const Color(0XFFa8d08d),
            fgColor: AppColors.blackColor,
            fontweight: FontWeight.w600,
            fontsize: 11.sp,
            underline: false),
        CustomContainer(
            title: 'MACHINE',
            align: TextAlign.center,
            padding: EdgeInsets.all(5.sm),
            bgColor: AppColors.orangeColor,
            fgColor: AppColors.blackColor,
            fontweight: FontWeight.w600,
            fontsize: 11.sp,
            underline: false),
      ]);

  final tablerow = TableRow(children: [
    CustomContainer(
      title: '13/1',
      align: TextAlign.center,
      padding: EdgeInsets.all(5.sm),
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontweight: FontWeight.w500,
      fontsize: 11.sp,
      underline: false,
    ),
    CustomContainer(
      title: '1323',
      align: TextAlign.center,
      padding: EdgeInsets.all(5.sm),
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontweight: FontWeight.w500,
      fontsize: 11.sp,
      underline: false,
    ),
    Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        5,
        (index) => CustomContainer(
          title: ' 3 ',
          border: (index == 4)
              ? null
              : Border(
                  right: BorderSide(
                    width: 1.5.w,
                    color: AppColors.blackColor,
                  ),
                ),
          align: TextAlign.center,
          padding: EdgeInsets.all(5.sm),
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontweight: FontWeight.w500,
          fontsize: 11.sp,
          underline: false,
        ),
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: List.generate(
        5,
        (index) => CustomContainer(
          title: ' 3 ',
          border: (index == 4)
              ? null
              : Border(
                  right: BorderSide(
                    width: 1.5.w,
                    color: AppColors.blackColor,
                  ),
                ),
          align: TextAlign.center,
          padding: EdgeInsets.all(5.sm),
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontweight: FontWeight.w500,
          fontsize: 11.sp,
          underline: false,
        ),
      ),
    ),
  ]);

  List<TableRow> tablerows = [];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final vm = ref.watch(lottoLast20DrawsVmProvider);
      tablerows = [
        tableheader,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
      ];
      return Table(
        columnWidths: {
          0: FlexColumnWidth(1.w),
          1: FlexColumnWidth(1.w),
          2: FlexColumnWidth(3.w),
          3: FlexColumnWidth(3.w),
        },
        border: TableBorder.all(
          color: AppColors.blackColor,
          style: BorderStyle.solid,
          width: 2.w,
        ),
        children: tablerows,
      );
    });
  }
}
