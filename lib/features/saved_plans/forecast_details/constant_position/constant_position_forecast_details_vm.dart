import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final constantPositionForecastDetailsProvider =
    ChangeNotifierProvider.autoDispose<ConstantPositionForecastDetailsVm>(
        (ref) {
  return ConstantPositionForecastDetailsVm();
});

class ConstantPositionForecastDetailsVm extends ChangeNotifier {}
