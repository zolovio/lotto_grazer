import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final grencoKeyChartProvider =
    ChangeNotifierProvider.autoDispose<GrencoKeyChartVm>((ref) {
  return GrencoKeyChartVm();
});

class GrencoKeyChartVm extends ChangeNotifier {
  List<String> keyList = ['VIEW KEYS', 'KEY SEARCH'];
  int selectedIndex = 0;

  void viewDetailsTap(BuildContext context) {
    print("view detail");
  }

  void onSelect(index) {
    selectedIndex = index;
    notifyListeners();
  }
}
