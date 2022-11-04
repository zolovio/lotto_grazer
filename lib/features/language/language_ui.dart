import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LanguageUi extends StatefulWidget {
  const LanguageUi({super.key});

  @override
  State<LanguageUi> createState() => _LanguageUiState();
}

class _LanguageUiState extends State<LanguageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: Utils.height(context) * 0.25,
              width: Utils.width(context) * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150.0),
                color: Colors.grey.shade300,
                border: Border.all(
                  color: AppColors.blueColor,
                  width: 3.0,
                ),
              ),
              child: const Center(
                child: Text(
                  "CHOOSE LANGUAGE",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
            CustomButton(
                title: 'ENGLISH',
                onpress: () {},
                bgColor: AppColors.blueColor,
                fgColor: AppColors.whiteColor,
                bdColor: AppColors.lightBlueColor,
                btnwidth: Utils.width(context) * 0.6,
                btnheight: Utils.height(context) * 0.06,
                bottomRightRadius: 10.0,
                topLeftRadius: 10.0,
                fontsize: 18.0),
            // SizedBox(
            //   // width: Utils.width(context) * 0.6,
            //   height: Utils.height(context) * 0.02,
            // ),
            CustomButton(
                title: 'FRENCH',
                onpress: () {},
                bgColor: AppColors.blueColor,
                fgColor: AppColors.whiteColor,
                bdColor: AppColors.lightBlueColor,
                btnwidth: Utils.width(context) * 0.6,
                btnheight: Utils.height(context) * 0.06,
                bottomRightRadius: 10.0,
                topLeftRadius: 10.0,
                fontsize: 18.0),
            // SizedBox(
            //   // width: Utils.width(context) * 0.6,
            //   height: Utils.height(context) * 0.02,
            // ),
            CustomButton(
                title: 'ENTER',
                onpress: () {
                  Navigator.of(context).pushNamed(RoutesName.login);
                },
                bgColor: AppColors.blackColor,
                fgColor: AppColors.whiteColor,
                bdColor: AppColors.darkBlueColor,
                btnwidth: Utils.width(context) * 0.3,
                btnheight: Utils.height(context) * 0.06,
                bottomRightRadius: 10.0,
                topLeftRadius: 10.0,
                fontsize: 18.0),
          ],
        ),
      ),
    );
  }
}
