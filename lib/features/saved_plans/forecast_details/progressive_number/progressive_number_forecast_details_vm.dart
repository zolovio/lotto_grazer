import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final progressiveNumberForecastDetailsProvider =
    ChangeNotifierProvider.autoDispose<ProgressiveNumberForecastDetailsVm>(
        (ref) {
  return ProgressiveNumberForecastDetailsVm();
});

class ProgressiveNumberForecastDetailsVm extends ChangeNotifier {}
