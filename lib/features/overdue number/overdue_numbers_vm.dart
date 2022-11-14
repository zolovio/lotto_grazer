import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';

final overduenumbersVmProvider =
    ChangeNotifierProvider.autoDispose<OverduenumbersVm>((ref) {
  return OverduenumbersVm();
});

class OverduenumbersVm extends ChangeNotifier {
  // int? val = 0;
  final List numbers = [
    '31',
    '32',
    '33',
    '38',
    '30',
    '43',
    '80',
    '12',
    '31',
    '55',
  ];
  final List drawDelayFrequency = [
    '41',
    '38',
    '33',
    '28',
    '26',
    '15',
    '14',
    '9',
    '8',
    '6',
  ];
  final TableRow tableheader = TableRow(
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.1),
        border: Border.all(
          width: 1.0,
          color: AppColors.blackColor,
        ),
      ),
      children: [
        CustomContainer(
            title: '\t',
            align: TextAlign.center,
            // padding: const EdgeInsets.all(5.0),
            bgColor: AppColors.whiteColor.withOpacity(0.1),
            fgColor: AppColors.blackColor,
            fontweight: FontWeight.w700,
            fontsize: 13.0,
            underline: false),
        CustomContainer(
            title: 'NUMBER',
            align: TextAlign.start,
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            bgColor: const Color(0XFFa9d18e),
            fgColor: AppColors.blackColor,
            fontweight: FontWeight.w800,
            fontsize: 14.0,
            underline: false),
        CustomContainer(
            title: 'DRAW DELAY FREQUENCY',
            align: TextAlign.center,
            padding: const EdgeInsets.all(12.0),
            bgColor: const Color(0XFFfff2cc),
            fgColor: AppColors.blackColor,
            fontweight: FontWeight.w700,
            fontsize: 13.0,
            underline: false),
      ]);
  // final tablerow =
  TableRow rowgenerator({
    required String titleCol1,
    required String titleCol2,
    required String titleCol3,
  }) {
    return TableRow(children: [
      CustomContainer(
        title: titleCol1.toString(),
        align: TextAlign.center,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        bgColor: AppColors.greyColor.withOpacity(0.25),
        fgColor: AppColors.blackColor,
        fontweight: FontWeight.w700,
        fontsize: 13.0,
        underline: false,
      ),
      CustomContainer(
        shape: BoxShape.circle,
        border: Border.all(
          width: 3.0,
          color: AppColors.blueColor,
        ),
        title: titleCol2.toString(),
        align: TextAlign.center,
        padding: const EdgeInsets.all(5.5),
        bgColor: AppColors.whiteColor.withOpacity(0.1),
        fgColor: AppColors.blackColor,
        fontweight: FontWeight.w700,
        fontsize: 13.0,
        underline: false,
      ),
      CustomContainer(
        title: titleCol3.toString(),
        align: TextAlign.center,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        bgColor: AppColors.whiteColor.withOpacity(0.1),
        fgColor: AppColors.blackColor,
        fontweight: FontWeight.w700,
        fontsize: 13.0,
        underline: false,
      ),
    ]);
  }

  List<TableRow> tablerows = [];
  // void onSearchTap(BuildContext context) {
  //   navigatorKey.currentState?.pushNamed(RoutesName.midFortuneLotto);
  // }
}
