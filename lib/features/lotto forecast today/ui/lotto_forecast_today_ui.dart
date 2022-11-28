import 'package:flutter/material.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LottoForecastTodayUi extends StatefulWidget {
  const LottoForecastTodayUi({super.key});

  @override
  State<LottoForecastTodayUi> createState() => _LottoForecastTodayUiState();
}

class _LottoForecastTodayUiState extends State<LottoForecastTodayUi> {
  List forecastgames = [
    {
      'short_name': 'NL',
      'full_name': 'FORTUNE',
      'draw': 996,
      'date': '02/06/2022',
    },
    {
      'short_name': 'GC',
      'full_name': 'JET',
      'draw': 336,
      'date': '02/06/2022',
    },
    {
      'short_name': 'AL',
      'full_name': 'PRIME',
      'draw': 754,
      'date': '02/06/2022',
    },
    {
      'short_name': 'PM',
      'full_name': 'GOLD',
      'draw': 1555,
      'date': '02/06/2022',
    },
    {
      'short_name': 'TG',
      'full_name': 'KADOO',
      'draw': 1555,
      'date': '02/06/2022',
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
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.08,
            title: 'LOTTO FORCAST TODAY',
            bgColor: AppColors.blackColor,
            fgColor: AppColors.whiteColor,
            fontsize: 18.0,
            fontweight: FontWeight.w800,
            border: Border.all(
              width: 0.0,
              color: AppColors.whiteColor.withOpacity(0.1),
            ),
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.13,
            padding: const EdgeInsets.all(15.0),
            title:
                'Today’s forecast lotto numbers are generated using timing keys and patterns that are carefully calculated to give you a winning, on lotto games played today. View,use and save.',
            bgColor: AppColors.whiteColor.withOpacity(0.1),
            fgColor: AppColors.blackColor,
            fontsize: 15.0,
            fontweight: FontWeight.w600,
            align: TextAlign.left,
            border: Border.all(
              width: 0.0,
              color: AppColors.whiteColor.withOpacity(0.1),
            ),
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.07,
            padding: const EdgeInsets.all(15.0),
            title: 'FORECAST GAMES',
            bgColor: AppColors.greyColor.withOpacity(0.5),
            fgColor: AppColors.blackColor,
            fontsize: 18.0,
            fontweight: FontWeight.w700,
            align: TextAlign.center,
            border: const Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
              top: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: forecastgames.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CustomChildContainer(
                      width: Utils.width(context) * 0.3,
                      height: Utils.height(context) * 0.11,
                      margin: const EdgeInsets.only(bottom: 4.0),
                      bgColor: AppColors.blueColor.withOpacity(0.25),
                      border: const Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                        top: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                        right: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              title:
                                  forecastgames[index]['short_name'].toString(),
                              fontcolor: AppColors.redColor,
                              fontweight: FontWeight.w700,
                              fontsize: 16.0,
                              underline: false),
                          CustomText(
                              title:
                                  forecastgames[index]['full_name'].toString(),
                              fontcolor: AppColors.blackColor,
                              fontweight: FontWeight.w700,
                              fontsize: 16.0,
                              underline: false),
                        ],
                      ),
                    ),
                    CustomChildContainer(
                      width: Utils.width(context) * 0.7,
                      height: Utils.height(context) * 0.11,
                      margin: const EdgeInsets.only(bottom: 4.0),
                      bgColor: AppColors.blueColor.withOpacity(0.25),
                      border: const Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                        top: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                        left: BorderSide(
                          color: Colors.black,
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
                                        'DRAW:${forecastgames[index]['draw']}',
                                    fontcolor: AppColors.blackColor,
                                    fontweight: FontWeight.w700,
                                    fontsize: 14.0,
                                    underline: false),
                                CustomText(
                                    title:
                                        forecastgames[index]['date'].toString(),
                                    fontcolor: AppColors.blackColor,
                                    fontweight: FontWeight.w700,
                                    fontsize: 14.0,
                                    underline: false),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: CustomButton(
                                title: 'VIEW FORECAST',
                                onpress: () {
                                  Navigator.of(context)
                                      .pushNamed(RoutesName.forecastDetails);
                                },
                                bottomLeftRadius: 5.0,
                                bottomRightRadius: 5.0,
                                topRightRadius: 5.0,
                                topLeftRadius: 5.0,
                                fontsize: 12.0,
                                btnwidth: Utils.width(context) * 0.05,
                                btnheight: Utils.height(context) * 0.042,
                              ),
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
    );
  }
}
