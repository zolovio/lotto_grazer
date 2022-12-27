import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final horizontalLappingNumberForecastDetailsProvider = ChangeNotifierProvider
    .autoDispose<HorizontalLappingNumberForecastDetailsVm>((ref) {
  return HorizontalLappingNumberForecastDetailsVm();
});

class HorizontalLappingNumberForecastDetailsVm extends ChangeNotifier {}
