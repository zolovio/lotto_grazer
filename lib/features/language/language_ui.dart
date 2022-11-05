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
                height: Utils.height(context) * 0.25,
                width: Utils.width(context) * 0.5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade300,
                  border: Border.all(
                    color: AppColors.blueColor,
                    width: 3.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    "CHOOSE LANGUAGE",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackColor,
                        fontSize: 20.0,
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
                            bgColor: val[0]
                                ? AppColors.darkBlueColor
                                : AppColors.blueColor,
                            fgColor: AppColors.whiteColor,
                            bdColor: AppColors.lightBlueColor,
                            width: Utils.width(context) * 0.6,
                            height: Utils.height(context) * 0.06,
                            bottomRightRadius: 10.0,
                            topLeftRadius: 10.0,
                            fontsize: 18.0),
                        SizedBox(
                          height: Utils.height(context) * 0.05,
                          // width: Utils.width(context) * 0.2,
                        ),
                        CustomContainer(
                            title: 'FRENCH',
                            bgColor: val[2]
                                ? AppColors.darkBlueColor
                                : AppColors.blueColor,
                            fgColor: AppColors.whiteColor,
                            bdColor: AppColors.lightBlueColor,
                            width: Utils.width(context) * 0.6,
                            height: Utils.height(context) * 0.06,
                            bottomRightRadius: 10.0,
                            topLeftRadius: 10.0,
                            fontsize: 18.0),
                      ],
                    );
                  }),
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
