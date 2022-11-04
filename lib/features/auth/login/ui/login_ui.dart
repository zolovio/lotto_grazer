import 'package:flutter/material.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  final ValueNotifier<bool> islogin = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
        child: const CutomAppBar(),
      ),
      body: ValueListenableBuilder(
          valueListenable: islogin,
          builder: (context, val, _) {
            return Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  leading: CustomButton(
                    title: 'LOGIN',
                    onpress: () {
                      islogin.value = !islogin.value;
                      // Navigator.of(context).pushNamed(RoutesName.login);
                    },
                    bgColor: islogin.value
                        ? AppColors.whiteColor
                        : const Color(0xFFbdd7ee),
                    fgColor: AppColors.blackColor,
                    bdColor: AppColors.blueColor,
                    btnwidth: Utils.width(context) * 0.25,
                    btnheight: Utils.height(context) * 0.06,
                    bottomRightRadius: 0.0,
                    topLeftRadius: 0.0,
                    fontsize: 16.0,
                    bdwidth: 3.0,
                  ),
                  trailing: CustomButton(
                    title: 'SIGNUP',
                    onpress: () {
                      islogin.value = !islogin.value;
                      // Navigator.of(context).pushNamed(RoutesName.login);
                    },
                    bgColor: !islogin.value
                        ? AppColors.whiteColor
                        : const Color(0xFFbdd7ee),
                    fgColor: AppColors.blackColor,
                    bdColor: AppColors.blueColor,
                    btnwidth: Utils.width(context) * 0.25,
                    btnheight: Utils.height(context) * 0.06,
                    bottomRightRadius: 0.0,
                    topLeftRadius: 0.0,
                    fontsize: 16.0,
                    bdwidth: 3.0,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
