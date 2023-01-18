import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authUiVmVmProvider =
    ChangeNotifierProvider.autoDispose<AuthUiVmVm>((ref) {
  return AuthUiVmVm();
});

class AuthUiVmVm extends ChangeNotifier {
  bool _isLogin = true;
  bool get isLogin => _isLogin;
  void setIsLogin(val) {
    _isLogin = val;
    notifyListeners();
  }

  bool _isSignup = false;
  bool get isSignup => _isSignup;
  void setIsSignup(val) {
    _isSignup = val;
    notifyListeners();
  }

  void onLogin() {}
  void onSignUp() {}
}
