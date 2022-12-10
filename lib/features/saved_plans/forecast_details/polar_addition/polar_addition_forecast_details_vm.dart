import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final polarAdditionForecastDetailsProvider =
    ChangeNotifierProvider.autoDispose<PolarAdditionForecastDetailsVm>((ref) {
  return PolarAdditionForecastDetailsVm();
});

class PolarAdditionForecastDetailsVm extends ChangeNotifier {}
