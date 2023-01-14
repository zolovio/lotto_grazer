import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';

final classificationChartVmProvider =
    ChangeNotifierProvider.autoDispose((ref) => ClassificationChartVm());

class ClassificationChartVm extends ChangeNotifier {
  late DataTableSource myData;
  ClassificationChartVm() {
    myData = MyData();
  }
}

class MyData extends DataTableSource {
  Widget verticalDivider = const VerticalDivider(
    color: AppColors.blackColor,
    thickness: 1,
  );
  final List<Map<String, dynamic>> _data = List.generate(
    90,
    (index) => {
      "number": index + 1,
      "ct": Random().nextInt(90),
      "bn": Random().nextInt(90),
      "sk": Random().nextInt(90),
      "tn": Random().nextInt(90),
      "mt": Random().nextInt(90),
      "pt": Random().nextInt(90),
      "eq": Random().nextInt(90),
      "sh": Random().nextInt(90),
      "cd": Random().nextInt(90),
    },
  );
  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(
        _data[index]['number'].toString(),
        style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w800),
        textAlign: TextAlign.center,
      )),
      DataCell(verticalDivider),
      DataCell(Text(
        _data[index]['ct'].toString(),
        style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500),
      )),
      DataCell(verticalDivider),
      DataCell(Text(
        _data[index]['bn'].toString(),
        style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500),
      )),
      DataCell(verticalDivider),
      DataCell(Text(
        _data[index]['sk'].toString(),
        style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500),
      )),
      DataCell(verticalDivider),
      DataCell(Text(
        _data[index]['tn'].toString(),
        style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500),
      )),
      DataCell(verticalDivider),
      DataCell(Text(
        _data[index]['mt'].toString(),
        style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500),
      )),
      DataCell(verticalDivider),
      DataCell(Text(
        _data[index]['pt'].toString(),
        style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500),
      )),
      DataCell(verticalDivider),
      DataCell(Text(
        _data[index]['eq'].toString(),
        style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500),
      )),
      DataCell(verticalDivider),
      DataCell(Text(
        _data[index]['sh'].toString(),
        style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500),
      )),
      DataCell(verticalDivider),
      DataCell(Text(
        _data[index]['cd'].toString(),
        style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500),
      )),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
