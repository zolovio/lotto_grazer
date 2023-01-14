import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final columnNumberChartVmProvider =
    ChangeNotifierProvider.autoDispose((ref) => ColumnNumberChartVm());

class ColumnNumberChartVm extends ChangeNotifier {
  final List tables = List.generate(
    8,
    (index) => {
      "c1": (index + 1) * 10,
      "c2": (index + 1) * 10,
      "c3": '${index + 1}1',
      "c4": '${index + 1}2',
      "c5": '${index + 1}3',
      "c6": '${index + 1}4',
      "c7": '${index + 1}5',
      "c8": '${index + 1}6',
      "c9": '${index + 1}7',
      "c10": '${index + 1}8',
      "c11": '${index + 1}9',
    },
  );
}
