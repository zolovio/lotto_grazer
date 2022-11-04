import 'package:flutter/material.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CutomAppBar(),
        preferredSize:
            Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
      ),
    );
  }
}
