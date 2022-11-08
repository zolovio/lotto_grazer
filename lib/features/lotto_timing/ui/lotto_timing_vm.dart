import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../main.dart';
import '../../../../utils/routes/routes_names.dart';

final lottoTimingProvider =
    ChangeNotifierProvider.autoDispose<LottoTimingVm>((ref) {
  return LottoTimingVm();
});

class LottoTimingVm extends ChangeNotifier {
  List<String> keyList = ['VIEW KEYS', 'KEY SEARCH'];
  List<String> lappingList = ['Horizontal', 'Vertical', 'Diagonal'];
  int selectedIndex = 0;
  int selectedLappingIndex = 0;

  void onSearchTap(BuildContext context) {
    navigatorKey.currentState?.pushNamed(RoutesName.midFortuneLotto);
  }

  void onSelect(index) {
    selectedIndex = index;
    print(keyList[index]);
    notifyListeners();
  }

  void onSelectLapping(index) {
    selectedLappingIndex = index;
    notifyListeners();
  }
}
