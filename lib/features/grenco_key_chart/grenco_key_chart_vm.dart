import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/features/grenco_key_chart/forecast_details/grenco_forecast_details.dart';

final grencoKeyChartProvider =
    ChangeNotifierProvider.autoDispose<GrencoKeyChartVm>((ref) {
  return GrencoKeyChartVm();
});

class GrencoKeyChartVm extends ChangeNotifier {
  List<String> keyList = ['VIEW KEYS', 'KEY SEARCH'];
  int selectedIndex = 0;

  void viewDetailsTap(
    BuildContext context, {
    firstNum,
    secondNum,
    planName,
    countingWeek,
  }) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => GrencoForecastDetails(
              num1: firstNum,
              num2: secondNum,
              planName: planName,
              countingWeek: countingWeek,
            )));
    print("view detail");
  }

  void onSelect(index) {
    selectedIndex = index;
    notifyListeners();
  }
}
