import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LanguageUi extends StatefulWidget {
  const LanguageUi({super.key});

  @override
  State<LanguageUi> createState() => _LanguageUiState();
}

class _LanguageUiState extends State<LanguageUi> {
  final ValueNotifier<List<bool>> _isSelected =
      ValueNotifier<List<bool>>([false, false, false]);
  @override
  Widget build(BuildContext context) {
    print('build');
    return WillPopScope(
      onWillPop: () => Utils.onWillPop(context),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                height: Utils.height(context) * 0.30,
                width: Utils.width(context) * 0.8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.chooseBackgroundColor,
                  border: Border.all(
                    color: AppColors.blueColor,
                    width: 4.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    "CHOOSE LANGUAGE",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackColor,
                        fontSize: 28.0,
                        wordSpacing: 0,
                        textBaseline: TextBaseline.alphabetic,
                        textStyle: Theme.of(context).textTheme.headline4),
                  ),
                ),
              ),
              ValueListenableBuilder(
                valueListenable: _isSelected,
                builder: (context, val, _) {
                  return ToggleButtons(
                    // borderColor: AppColors.whiteColor.withOpacity(0.1),
                    fillColor: AppColors.whiteColor.withOpacity(0.1),
                    renderBorder: false,
                    onPressed: ((index) {
                      _isSelected.value.setAll(0, [false, false, false]);
                      _isSelected.value[index] = !_isSelected.value[index];
                      print(val);
                      _isSelected.notifyListeners();
                      // setState(() {});
                    }),
                    isSelected: val,
                    verticalDirection: VerticalDirection.down,
                    direction: Axis.vertical,
                    selectedColor: AppColors.darkBlueColor,
                    children: [
                      CustomContainer(
                        title: 'ENGLISH',
                        leadingIcon: FlagsCode.US,
                        checkWidget: true,
                        bgColor: AppColors.backgroundColor,
                        fgColor: val[0]
                            ? AppColors.blackColor
                            : AppColors.whiteColor,
                        border: Border.all(
                          width: 2.0,
                          color: AppColors.backgroundColor,
                        ),
                        width: Utils.width(context) * 0.6,
                        height: Utils.height(context) * 0.06,
                        bottomRightRadius: 10.0,
                        topLeftRadius: 10.0,
                        fontsize: 18.0,
                      ),
                      SizedBox(
                        height: Utils.height(context) * 0.05,
                        // width: Utils.width(context) * 0.2,
                      ),
                      CustomContainer(
                        title: 'FRENCH',
                        leadingIcon: FlagsCode.FR,
                        checkWidget: true,
                        bgColor: AppColors.backgroundColor,
                        fgColor: val[2]
                            ? AppColors.blackColor
                            : AppColors.whiteColor,
                        border: Border.all(
                          width: 2.0,
                          color: AppColors.backgroundColor,
                        ),
                        width: Utils.width(context) * 0.6,
                        height: Utils.height(context) * 0.06,
                        bottomRightRadius: 10.0,
                        topLeftRadius: 10.0,
                        fontsize: 18.0,
                      ),
                    ],
                  );
                },
              ),
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
                fontsize: 18.0,
                bdwidth: 3.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
