import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:lotto_grazer/features/lotto_prediction/lotto_prediction_forecast_detail/reference_charts/reference_charts.dart';

final lottoPredictionForecastDetailProvider = ChangeNotifierProvider.autoDispose<LottoPredictionForecastDetailVm>((ref) {
  return LottoPredictionForecastDetailVm();
});

class LottoPredictionForecastDetailVm extends ChangeNotifier {
  List projectedNumbersList = [1, 2, 3, 4, 5];
  void viewReferenceChart(BuildContext context) {
    // Navigator.of(context).push(MaterialPageRoute(
    //     builder: (BuildContext context) => const ReferenceChartsScreen()));
  }
}
