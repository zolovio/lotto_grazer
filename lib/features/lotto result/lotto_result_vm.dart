import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';

final lottoLast20DrawsVmProvider =
    ChangeNotifierProvider.autoDispose<LottoLast20DrawsVm>((ref) {
  return LottoLast20DrawsVm();
});

class LottoLast20DrawsVm extends ChangeNotifier {
  int? val = 0;
  final TableRow tableheader = TableRow(
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.1),
      ),
      children: [
        CustomContainer(
            title: 'DATE',
            align: TextAlign.center,
            padding: const EdgeInsets.all(5.0),
            bgColor: AppColors.blackColor.withOpacity(0.6),
            fgColor: AppColors.whiteColor,
            fontweight: FontWeight.w600,
            fontsize: 11.0,
            underline: false),
        CustomContainer(
            title: 'DRAW',
            align: TextAlign.center,
            padding: const EdgeInsets.all(5.0),
            bgColor: AppColors.blackColor.withOpacity(0.6),
            fgColor: AppColors.whiteColor,
            fontweight: FontWeight.w600,
            fontsize: 11.0,
            underline: false),
        CustomContainer(
            title: 'WINNING',
            align: TextAlign.center,
            padding: const EdgeInsets.all(5.0),
            bgColor: const Color(0XFFa8d08d),
            fgColor: AppColors.blackColor,
            fontweight: FontWeight.w600,
            fontsize: 11.0,
            underline: false),
        CustomContainer(
            title: 'MACHINE',
            align: TextAlign.center,
            padding: const EdgeInsets.all(5.0),
            bgColor: AppColors.orangeColor,
            fgColor: AppColors.blackColor,
            fontweight: FontWeight.w600,
            fontsize: 11.0,
            underline: false),
      ]);
  final tablerow = TableRow(children: [
    CustomContainer(
      title: '13/1',
      align: TextAlign.center,
      padding: const EdgeInsets.all(5.0),
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontweight: FontWeight.w500,
      fontsize: 12.0,
      underline: false,
    ),
    CustomContainer(
      title: '1323',
      align: TextAlign.center,
      padding: const EdgeInsets.all(5.0),
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontweight: FontWeight.w500,
      fontsize: 12.0,
      underline: false,
    ),
    Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        5,
        (index) => CustomContainer(
          title: ' 3 ',
          border: const Border(
            right: BorderSide(
              width: 1.5,
              color: AppColors.blackColor,
            ),
          ),
          align: TextAlign.center,
          padding: const EdgeInsets.all(5.0),
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontweight: FontWeight.w500,
          fontsize: 12.0,
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
          border: const Border(
            right: BorderSide(
              width: 1.5,
              color: AppColors.blackColor,
            ),
          ),
          align: TextAlign.center,
          padding: const EdgeInsets.all(5.0),
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontweight: FontWeight.w500,
          fontsize: 12.0,
          underline: false,
        ),
      ),
    ),
  ]);
  List<TableRow> tablerows = [];
  // void onSearchTap(BuildContext context) {
  //   navigatorKey.currentState?.pushNamed(RoutesName.midFortuneLotto);
  // }
}
