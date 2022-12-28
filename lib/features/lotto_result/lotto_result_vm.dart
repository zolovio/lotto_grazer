import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lottoLast20DrawsVmProvider =
    ChangeNotifierProvider.autoDispose<LottoLast20DrawsVm>((ref) {
  return LottoLast20DrawsVm();
});

class LottoLast20DrawsVm extends ChangeNotifier {
  List<String> keyList = ['TODAY RESULTS', 'LAST 20 DRAWS'];
  String _lotteryType = 'LOTTERY TYPE';
  String _lotteryGame = 'LOTTERY GAME';
  String get lotteryType => _lotteryType;
  String get lotteryGame => _lotteryGame;
  List<String> lotteryTypeList = ['LOTTERY TYPE', 'X', 'Y', 'Z'];
  List<String> lotteryGameList = [
    'LOTTERY GAME',
    'PREMIER LOTTO',
    'GOLDENCHANCE LOTTO',
    'NLA LOTTO',
    'ALPHA LOTTO',
    'LONATO LOTTO'
  ];
  void setLotteryType(value) {
    _lotteryType = value;
    notifyListeners();
  }

  void setLotteryGame(value) {
    _lotteryGame = value;
    notifyListeners();
  }

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
