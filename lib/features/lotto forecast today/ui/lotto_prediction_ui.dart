import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_radio_button.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LottoPredictionUi extends StatefulWidget {
  const LottoPredictionUi({super.key});

  @override
  State<LottoPredictionUi> createState() => _LottoPredictionUiState();
}

class _LottoPredictionUiState extends State<LottoPredictionUi> {
  String selectedBox = "0";

  String? _groupValue = "0";

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  List predictedGames = [
    {
      'short_name': 'NL',
      'full_name': 'FORTUNE',
      'draw': 996,
      'date': '02/06/2022',
      'time_remaining': "",
    },
    {
      'short_name': 'GC',
      'full_name': 'JET',
      'draw': 336,
      'date': '02/06/2022',
      'time_remaining': "01: 05:34",
    },
    {
      'short_name': 'AL',
      'full_name': 'PRIME',
      'draw': 754,
      'date': '02/06/2022',
      'time_remaining': "04: 04:34",
    },
    {
      'short_name': 'PM',
      'full_name': 'GOLD',
      'draw': 1555,
      'date': '02/06/2022',
      'time_remaining': "06 :03:34",
    },
    {
      'short_name': 'TG',
      'full_name': 'KADOO',
      'draw': 1555,
      'date': '02/06/2022',
      'time_remaining': "10: 02:34",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
        child: const CutomAppBar(),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: CustomContainer(
                  height: Utils.height(context) * 0.06,
                  title: 'LOTTO PREDICTION',
                  bgColor: AppColors.blackColor,
                  fgColor: AppColors.whiteColor,
                  fontsize: 20.0,
                  fontweight: FontWeight.w700,
                  border: Border.all(
                    width: 0.0,
                    color: AppColors.whiteColor.withOpacity(0.1),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: AppColors.blackColor,
                  height: Utils.height(context) * 0.06,
                  child: const Icon(
                    Icons.info_outline,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0, top: 3.0, bottom: 3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomRadioButton<String>(
                      value: '0',
                      groupValue: _groupValue,
                      onChanged: _valueChangedHandler(),
                    ),
                    CustomButton(
                      title: 'FORECAST GAMES',
                      onpress: () {},
                      bgColor: AppColors.clickBackgroundColor,
                      fgColor: AppColors.blackColor,
                      bdColor: AppColors.lightBlueColor,
                      fontweight: FontWeight.w700,
                      bottomRightRadius: 10.0,
                      bottomLeftRadius: 10.0,
                      topLeftRadius: 10.0,
                      topRightRadius: 10.0,
                      fontsize: 13.0,
                      bdwidth: 2.0,
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomRadioButton<String>(
                      value: '1',
                      groupValue: _groupValue,
                      onChanged: _valueChangedHandler(),
                    ),
                    CustomButton(
                      title: 'SAVED PLANS',
                      onpress: () {
                        // Navigator.of(context).pushNamed(RoutesName.login);
                      },
                      bgColor: AppColors.clickBackgroundColor,
                      fgColor: AppColors.blackColor,
                      bdColor: AppColors.lightBlueColor,
                      fontweight: FontWeight.w700,
                      bottomRightRadius: 10.0,
                      bottomLeftRadius: 10.0,
                      topLeftRadius: 10.0,
                      topRightRadius: 10.0,
                      fontsize: 13.0,
                      bdwidth: 2.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.07,
            padding: const EdgeInsets.all(15.0),
            title: 'FORECAST GAMES',
            bgColor: AppColors.greyColor.withOpacity(0.2),
            fgColor: AppColors.blackColor,
            fontsize: 18.0,
            fontweight: FontWeight.w700,
            align: TextAlign.center,
            border: const Border(
              bottom: BorderSide(
                color: AppColors.blackColor,
                width: 1.0,
              ),
              top: BorderSide(
                color: AppColors.blackColor,
                width: 6.0,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: predictedGames.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CustomChildContainer(
                      width: Utils.width(context) * 0.3,
                      height: Utils.height(context) * 0.11,
                      margin: const EdgeInsets.only(bottom: 4.0),
                      bgColor: AppColors.whiteColor,
                      border: const Border(
                        bottom: BorderSide(
                          color: AppColors.blackColor,
                          width: 3.0,
                        ),
                        top: BorderSide(
                          color: AppColors.blackColor,
                          width: 3.0,
                        ),
                        right: BorderSide(
                          color: AppColors.blackColor,
                          width: 3.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/1.png",
                            width: 50,
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                title: predictedGames[index]['short_name']
                                    .toString(),
                                fontcolor: AppColors.redColor,
                                fontweight: FontWeight.w700,
                                fontsize: 12.0,
                                underline: false,
                              ),
                              CustomText(
                                title:
                                    " | ${predictedGames[index]['full_name'].toString()}",
                                fontcolor: AppColors.blackColor,
                                fontweight: FontWeight.w700,
                                fontsize: 12.0,
                                underline: false,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CustomChildContainer(
                      width: Utils.width(context) * 0.7,
                      height: Utils.height(context) * 0.11,
                      margin: const EdgeInsets.only(bottom: 4.0),
                      bgColor: AppColors.greyColor.withOpacity(0.2),
                      border: const Border(
                        bottom: BorderSide(
                          color: AppColors.blackColor,
                          width: 3.0,
                        ),
                        top: BorderSide(
                          color: AppColors.blackColor,
                          width: 3.0,
                        ),
                        left: BorderSide(
                          color: AppColors.blackColor,
                          width: 3.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: Utils.width(context) * 0.63,
                            height: Utils.height(context) * 0.04,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                    title:
                                        'DRAW:${predictedGames[index]['draw']}',
                                    fontcolor: AppColors.blackColor,
                                    fontweight: FontWeight.w700,
                                    fontsize: 14.0,
                                    underline: false),
                                CustomText(
                                    title: predictedGames[index]['date']
                                        .toString(),
                                    fontcolor: AppColors.blackColor,
                                    fontweight: FontWeight.w700,
                                    fontsize: 14.0,
                                    underline: false),
                              ],
                            ),
                          ),
                          predictedGames[index]["time_remaining"] == ""
                              ? Expanded(
                                  child: Center(
                                    child: CustomButton(
                                      title: 'VIEW   FORECAST',
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      onpress: () {
                                        Navigator.of(context).pushNamed(
                                            RoutesName.forecastDetails);
                                      },
                                      bottomLeftRadius: 5.0,
                                      bottomRightRadius: 5.0,
                                      topRightRadius: 5.0,
                                      topLeftRadius: 5.0,
                                      fontsize: 12.0,
                                      fontweight: FontWeight.w700,
                                      btnwidth: Utils.width(context) * 0.05,
                                      btnheight: Utils.height(context) * 0.042,
                                    ),
                                  ),
                                )
                              : MaterialButton(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  elevation: 2.0,
                                  color: AppColors.blackColor,
                                  textColor: AppColors.whiteColor,
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 4.0),
                                  shape: const RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: AppColors.blackColor,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  height: Utils.height(context) * 0.042,
                                  minWidth: Utils.width(context) * 0.05,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomText(
                                        title: "LOADING",
                                        fontcolor: AppColors.whiteColor,
                                        fontweight: FontWeight.w700,
                                        fontsize: 12.0,
                                        underline: false,
                                      ),
                                      const SizedBox(width: 2.0),
                                      Container(
                                        color: AppColors.whiteColor,
                                        height: Utils.height(context) * 0.036,
                                        width: Utils.width(context) * 0.20,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0,
                                          vertical: 6.0,
                                        ),
                                        child: Center(
                                          child: CustomText(
                                            title: predictedGames[index]
                                                ["time_remaining"],
                                            fontcolor: AppColors.redColor,
                                            fontweight: FontWeight.w700,
                                            fontsize: 12.0,
                                            underline: false,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
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
                      border:
                          Border.all(color: AppColors.blackColor, width: 2.0),
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
                      border:
                          Border.all(color: AppColors.blackColor, width: 2.0),
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
                      border:
                          Border.all(color: AppColors.blackColor, width: 2.0),
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
                      border:
                          Border.all(color: AppColors.blackColor, width: 2.0),
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
                      border:
                          Border.all(color: AppColors.blackColor, width: 2.0),
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
                      border:
                          Border.all(color: AppColors.blackColor, width: 2.0),
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
      ),
    );
  }
}
