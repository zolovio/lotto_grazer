import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final groupNumberChartVmProvider =
    ChangeNotifierProvider.autoDispose((ref) => GroupNumberChartVm());

class GroupNumberChartVm extends ChangeNotifier {
  final List tables = List.generate(
    9,
    (index) => {
      "c1": index + 1,
      "c2": '0${index + 1}',
      "c3": index + 10,
      "c4": index + 19,
      "c5": index + 28,
      "c6": index + 37,
      "c7": index + 46,
      "c8": index + 55,
      "c9": index + 64,
      "c10": index + 73,
      "c11": index + 82,
    },
  );
}
