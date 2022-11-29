import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';

final grencoKeyChartProvider =
    ChangeNotifierProvider.autoDispose<GrencoKeyChartVm>((ref) {
  return GrencoKeyChartVm();
});

class GrencoKeyChartVm extends ChangeNotifier {
  List<String> keyList = ['VIEW KEYS', 'KEY SEARCH'];
  int selectedIndex = 0;

  void viewDetailsTap(BuildContext context) {
    Navigator.of(context).pushNamed(RoutesName.grencoForecastDetails);
    print("view detail");
  }

  void onSelect(index) {
    selectedIndex = index;
    notifyListeners();
  }
}
