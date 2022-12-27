import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ballSpacingForecastDetailsProvider =
    ChangeNotifierProvider.autoDispose<BallSpacingForecastDetailsVm>((ref) {
  return BallSpacingForecastDetailsVm();
});

class BallSpacingForecastDetailsVm extends ChangeNotifier {}
