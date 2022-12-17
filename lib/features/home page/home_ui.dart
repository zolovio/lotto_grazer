import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
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
      'name': 'LOTTO PREDICTION',
      'navigation': RoutesName.lottoForecastToday,
    },
    {
      'name': 'LOTTO KEYBOOK',
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
      'name': 'GRENCO NUMBERS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'LOTTO TOOLS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'TIMING KEYS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': '2 SURE TRACER',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'POWER X PLAY',
      'navigation': RoutesName.lottoKeyBook,
    },
  ];

  // List features = [
  //   {
  //     'name': 'LOTTO FORECAST TODAY',
  //     'navigation': RoutesName.lottoForecastToday,
  //   },
  //   {
  //     'name': 'THE RADICAL LOTTO KEYBOOK',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'LOTTO RESULT',
  //     'navigation': RoutesName.lottoResult,
  //   },
  //   {
  //     'name': 'OVERDUE NUMBERS',
  //     'navigation': RoutesName.overdueNumbers,
  //   },
  //   {
  //     'name': 'GRENCO KEY CHART',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'SAVED PLANS',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'FIND & COMPARE EVENTS',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'CLASSIFICATION CHART',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'GROUP NUMBER CHART',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'COLUMN NUMBER CHART',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'ENDING NUMBER CHART',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  // ];
  //
  // List timingKeys = [
  //   {
  //     'name': 'ENDING NUMBER CHART',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'LAPPING NUMER KEYS',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'POLAR ADDITION KEYS',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'EVENT SUMMATION KEYS',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'PIVOTED NUMBER KEYS',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'BALL SPACING KEYS',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'CONSTANT POSITION KEYS',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'SEQUENTIAL NUMBER KEYS',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  //   {
  //     'name': 'PROGRESSIVE NUMBER KEYS',
  //     'navigation': RoutesName.lottoKeyBook,
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
        child: const CutomAppBar(),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
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
          List itemName = [];
          if (index == 8) {
            itemName = features[index]['name'].toString().split(" ");
          }
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(features[index]['navigation']);
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Icon(
                  Icons.flare_sharp,
                  size: 60.0,
                  color: AppColors.blueColor,
                ),
                SizedBox(height: Utils.height(context) * 0.02),
                index == 8
                    ? Row(
                        children: [
                          Text(
                            "${itemName[0]} ",
                            textAlign: TextAlign.center,
                            softWrap: true,
                            maxLines: 2,
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackColor,
                              fontSize: 12.0,
                              wordSpacing: 0,
                            ),
                          ),
                          Text(
                            itemName[1],
                            textAlign: TextAlign.center,
                            softWrap: true,
                            maxLines: 2,
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              color: AppColors.redColor,
                              fontSize: 20.0,
                              wordSpacing: 0,
                            ),
                          ),
                          Text(
                            " ${itemName[2]}",
                            textAlign: TextAlign.center,
                            softWrap: true,
                            maxLines: 2,
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackColor,
                              fontSize: 12.0,
                              wordSpacing: 0,
                            ),
                          ),
                        ],
                      )
                    : Text(
                        features[index]['name'].toString(),
                        textAlign: TextAlign.center,
                        softWrap: true,
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackColor,
                          fontSize: 12.0,
                          wordSpacing: 0,
                          textStyle: Theme.of(context).textTheme.headline4,
                        ),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
