import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/features/grenco_numbers/grenco_forecast_details/reference_events/reference_events.dart';

final grencoForecastDetailsProvider =
    ChangeNotifierProvider.autoDispose<GrencoForecastDetailsVm>((ref) {
  return GrencoForecastDetailsVm();
});

class GrencoForecastDetailsVm extends ChangeNotifier {
  void viewReferenceEvents(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const ReferenceEventsScreen()));
  }
}
