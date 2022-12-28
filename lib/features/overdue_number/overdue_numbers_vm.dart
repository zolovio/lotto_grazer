import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  // void onSearchTap(BuildContext context) {
  //   navigatorKey.currentState?.pushNamed(RoutesName.midFortuneLotto);
  // }
}
