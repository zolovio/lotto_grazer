import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';

class CustomBottomTabBar extends StatelessWidget {
  const CustomBottomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(7.0),
          topLeft: Radius.circular(7.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 3.0, left: 3.0, right: 3.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(5.0),
            topLeft: Radius.circular(5.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.clickBackgroundColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(.60),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            onTap: (value) {
              print(value);
              // Respond to item press.
            },
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  height: 60,
                  margin: const EdgeInsets.only(left: 3.0),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.blackColor, width: 2.0),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    ),
                  ),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'HOME',
                        style: GoogleFonts.montserrat(
                          color: AppColors.blackColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  height: 60,
                  margin: const EdgeInsets.only(left: 2.0),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.blackColor, width: 2.0),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    ),
                  ),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'LOTTO FORECAST',
                        style: GoogleFonts.montserrat(
                          color: AppColors.blackColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  height: 60,
                  margin: const EdgeInsets.only(left: 2.0),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.blackColor, width: 2.0),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    ),
                  ),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'TIMING KEYS',
                        style: GoogleFonts.montserrat(
                          color: AppColors.blackColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  height: 60,
                  margin: const EdgeInsets.only(left: 2.0),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.blackColor, width: 2.0),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    ),
                  ),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: '2 SURE TRACER',
                        style: GoogleFonts.montserrat(
                          color: AppColors.blackColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  height: 60,
                  margin: const EdgeInsets.only(left: 2.0),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.blackColor, width: 2.0),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    ),
                  ),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'POWER X PLAY',
                        style: GoogleFonts.montserrat(
                          color: AppColors.blackColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  height: 60,
                  margin: const EdgeInsets.only(left: 2.0, right: 3.0),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.blackColor, width: 2.0),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    ),
                  ),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'SETTINGS',
                        style: GoogleFonts.montserrat(
                          color: AppColors.blackColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
