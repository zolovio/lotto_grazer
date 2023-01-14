import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/features/timing_keys/timing_keys_forecast_details/reference_events/reference_events.dart';

final timingKeysForecastDetailsProvider =
    ChangeNotifierProvider.autoDispose<TimingKeysForecastDetailsVm>((ref) {
  return TimingKeysForecastDetailsVm();
});

class TimingKeysForecastDetailsVm extends ChangeNotifier {
  List projectedNumbersList = [1, 2, 3];

  void viewReferenceEvents(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const ReferenceEventsScreen()));
  }
}
