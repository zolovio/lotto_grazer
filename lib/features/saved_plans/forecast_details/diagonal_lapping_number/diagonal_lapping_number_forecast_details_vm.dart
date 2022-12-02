import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final diagonalLappingNumberForecastDetailsProvider =
    ChangeNotifierProvider.autoDispose<DiagonalLappingNumberForecastDetailsVm>(
        (ref) {
  return DiagonalLappingNumberForecastDetailsVm();
});

class DiagonalLappingNumberForecastDetailsVm extends ChangeNotifier {}
