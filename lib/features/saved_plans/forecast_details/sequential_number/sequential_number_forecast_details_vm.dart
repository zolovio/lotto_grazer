import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sequentialNumberForecastDetailsProvider =
    ChangeNotifierProvider.autoDispose<SequentialNumberForecastDetailsVm>(
        (ref) {
  return SequentialNumberForecastDetailsVm();
});

class SequentialNumberForecastDetailsVm extends ChangeNotifier {}
