import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final grencoForecastDetailsProvider =
    ChangeNotifierProvider.autoDispose<GrencoForecastDetailsVm>((ref) {
  return GrencoForecastDetailsVm();
});

class GrencoForecastDetailsVm extends ChangeNotifier {}
