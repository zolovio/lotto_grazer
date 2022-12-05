import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                    border: Border.all(
                      color: AppColors.blueColor,
                      width: 2.w,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "CHOOSE LANGUAGE",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackColor,
                          fontSize: 20.sp,
                          wordSpacing: 0,
                          textBaseline: TextBaseline.alphabetic,
                          textStyle: Theme.of(context).textTheme.headline4),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
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
                              border: Border.all(
                                width: 1.5.w,
                                color: AppColors.lightBlueColor,
                              ),
                              width: 220.w,
                              height: 45.h,
                              bottomRightRadius: 10.r,
                              topLeftRadius: 10.r,
                              fontsize: 18.sp),
                          SizedBox(
                            height: 50.h,
                          ),
                          CustomContainer(
                              title: 'FRENCH',
                              bgColor: val[2]
                                  ? AppColors.darkBlueColor
                                  : AppColors.blueColor,
                              fgColor: AppColors.whiteColor,
                              border: Border.all(
                                width: 1.5.w,
                                color: AppColors.lightBlueColor,
                              ),
                              width: 220.w,
                              height: 45.h,
                              bottomRightRadius: 10.r,
                              topLeftRadius: 10.r,
                              fontsize: 18.sp),
                        ],
                      );
                    }),
                SizedBox(
                  height: 60.h,
                ),
                CustomButton(
                  title: 'ENTER',
                  onpress: () {
                    Navigator.of(context).pushNamed(RoutesName.login);
                  },
                  bgColor: AppColors.blackColor,
                  fgColor: AppColors.whiteColor,
                  bdColor: AppColors.darkBlueColor,
                  btnwidth: 100.w,
                  btnheight: 42.h,
                  bottomRightRadius: 10.r,
                  topLeftRadius: 10.r,
                  fontsize: 18.sp,
                  bdwidth: 3.r,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
