import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pivotedNumberForecastDetailsProvider =
    ChangeNotifierProvider.autoDispose<PivotedNumberForecastDetailsVm>((ref) {
  return PivotedNumberForecastDetailsVm();
});

class PivotedNumberForecastDetailsVm extends ChangeNotifier {}
