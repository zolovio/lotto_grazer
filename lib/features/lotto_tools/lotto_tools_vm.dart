import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lottoToolsVmProvider =
    ChangeNotifierProvider.autoDispose<LottoToolsVm>((ref) {
  return LottoToolsVm();
});

class LottoToolsVm extends ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void setSelectedIndex(value) {
    _selectedIndex = value;
    notifyListeners();
  }
}
