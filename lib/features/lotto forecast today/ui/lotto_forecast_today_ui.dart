import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LottoForecastTodayUi extends StatefulWidget {
  const LottoForecastTodayUi({super.key});

  @override
  State<LottoForecastTodayUi> createState() => _LottoForecastTodayUiState();
}

class _LottoForecastTodayUiState extends State<LottoForecastTodayUi> {
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
            bottomRightRadius: 0.0,
            bottomLeftRadius: 0.0,
            topLeftRadius: 0.0,
            topRightRadius: 0.0,
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
            bottomRightRadius: 0.0,
            bottomLeftRadius: 0.0,
            topLeftRadius: 0.0,
            topRightRadius: 0.0,
            fontsize: 14.0,
            fontweight: FontWeight.w500,
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
            // bottomRightRadius: 0.0,
            // bottomLeftRadius: 0.0,
            // topLeftRadius: 0.0,
            // topRightRadius: 0.0,
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
              left: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
              right: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
