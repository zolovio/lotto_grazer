import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';

final languageUiVmVmProvider =
    ChangeNotifierProvider.autoDispose<LanguageUiVmVm>((ref) {
  return LanguageUiVmVm();
});

class LanguageUiVmVm extends ChangeNotifier {
  final List<bool> _isSelected = [false, false,false];
  List<bool> get isSelected => _isSelected;
  void setIsSelected(val, i) {
    _isSelected[i] = val;
    notifyListeners();
  }

  void onEnter(BuildContext context) {
    Navigator.of(context).pushNamed(RoutesName.login);
  }
}
