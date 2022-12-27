import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final eventSummationForecastDetailsProvider =
    ChangeNotifierProvider.autoDispose<EventSummationForecastDetailsVm>((ref) {
  return EventSummationForecastDetailsVm();
});

class EventSummationForecastDetailsVm extends ChangeNotifier {}
