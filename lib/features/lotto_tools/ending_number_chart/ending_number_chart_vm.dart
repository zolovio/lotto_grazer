import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final endingNumberChartVmProvider =
    ChangeNotifierProvider.autoDispose((ref) => EndingNumberChartVm());

class EndingNumberChartVm extends ChangeNotifier {
  final List tables = List.generate(
    10,
    (index) => {
      "c1": index,
      "c2": (index == 0) ? index + 10 : '0$index',
      "c3": (index == 0) ? index + 20 : '1$index',
      "c4": (index == 0) ? index + 30 : '2$index',
      "c5": (index == 0) ? index + 40 : '3$index',
      "c6": (index == 0) ? index + 50 : '4$index',
      "c7": (index == 0) ? index + 60 : '5$index',
      "c8": (index == 0) ? index + 70 : '6$index',
      "c9": (index == 0) ? index + 80 : '7$index',
      "c10": (index == 0) ? index + 90 : '8$index',
    },
  );
}
