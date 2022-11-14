import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';
import 'package:lotto_grazer/utils/utils.dart';

class HomePageUi extends StatefulWidget {
  const HomePageUi({super.key});

  @override
  State<HomePageUi> createState() => _HomePageUiState();
}

class _HomePageUiState extends State<HomePageUi> {
  List features = [
    {
      'name': 'LOTTO FORECAST TODAY',
      'navigation': RoutesName.lottoForecastToday,
    },
    {
      'name': 'THE RADICAL LOTTO KEYBOOK',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'LOTTO RESULT',
      'navigation': RoutesName.lottoResult,
    },
    {
      'name': 'OVERDUE NUMBERS',
      'navigation': RoutesName.overdueNumbers,
    },
    {
      'name': 'GRENCO KEY CHART',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'SAVED PLANS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'FIND & COMPARE EVENTS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'CLASSIFICATION CHART',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'GROUP NUMBER CHART',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'COLUMN NUMBER CHART',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'ENDING NUMBER CHART',
      'navigation': RoutesName.lottoKeyBook,
    },
  ];

  List timingkeys = [
    {
      'name': 'ENDING NUMBER CHART',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'LAPPING NUMER KEYS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'POLAR ADDITION KEYS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'EVENT SUMMATION KEYS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'PIVOTED NUMBER KEYS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'BALL SPACING KEYS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'CONSTANT POSITION KEYS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'SEQUENTIAL NUMBER KEYS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'PROGRESSIVE NUMBER KEYS',
      'navigation': RoutesName.lottoKeyBook,
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
          SizedBox(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.45,
            child: GridView.builder(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              // physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.9,
              ),
              itemCount: features.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(features[index]['navigation']);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.flare_sharp,
                        size: 60.0,
                        color: AppColors.blueColor,
                      ),
                      Text(
                        features[index]['name'].toString(),
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor,
                            fontSize: 11.0,
                            wordSpacing: 0,
                            textStyle: Theme.of(context).textTheme.headline4),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.06,
            title: 'LOTTO TIMING KEYS',
            bgColor: AppColors.greyColor,
            fgColor: AppColors.blackColor,
            bottomRightRadius: 0.0,
            bottomLeftRadius: 0.0,
            topLeftRadius: 0.0,
            topRightRadius: 0.0,
            fontsize: 19.0,
            fontweight: FontWeight.w700,
            border: Border.all(
              width: 3.0,
              color: AppColors.lightBlueColor,
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(25.0),
              // physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 0.7,
              ),
              itemCount: timingkeys.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // Navigator.of(context).pushNamed(RoutesName.products);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.flare_sharp,
                        size: 60.0,
                        color: AppColors.blueColor,
                      ),
                      Text(
                        timingkeys[index]['name'].toString(),
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor,
                            fontSize: 11.0,
                            wordSpacing: 0,
                            textStyle: Theme.of(context).textTheme.headline4),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.06,
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              border: const Border(
                top: BorderSide(
                  color: AppColors.lightBlueColor,
                  width: 3.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
