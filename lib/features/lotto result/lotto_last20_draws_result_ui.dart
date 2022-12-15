import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/lotto%20result/lotto_result_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/utils/utils.dart';

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomChildContainer(
      width: Utils.width(context) * 1,
      height: 200.h,
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CommonDropDown(
            initialValue: 'LOTTERY TYPE',
            list: ['LOTTERY TYPE', 'X', 'Y', 'Z'],
            onSelect: (value) {
              print(value);
            },
            title: '',
          ),
          CommonDropDown(
            initialValue: 'LOTTERY GAME',
            list: ['LOTTERY GAME', 'A', 'B', 'C'],
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
    );
  }
}

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
