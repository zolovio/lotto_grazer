import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';

final lottoLast20DrawsVmProvider =
    ChangeNotifierProvider.autoDispose<LottoLast20DrawsVm>((ref) {
  return LottoLast20DrawsVm();
});

class LottoLast20DrawsVm extends ChangeNotifier {
  List<String> keyList = ['TODAY RESULTS', 'LAST 20 DRAWS'];

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void setIndex(value) {
    _selectedIndex = value;
    notifyListeners();
  }

  // void onSearchTap(BuildContext context) {
  //   navigatorKey.currentState?.pushNamed(RoutesName.midFortuneLotto);
  // }
}
