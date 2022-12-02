import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final verticalLappingNumberForecastDetailsProvider =
    ChangeNotifierProvider.autoDispose<VerticalLappingNumberForecastDetailsVm>((ref) {
  return VerticalLappingNumberForecastDetailsVm();
});

class VerticalLappingNumberForecastDetailsVm extends ChangeNotifier {}
