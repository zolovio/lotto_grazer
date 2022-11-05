import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
    'LOTTO FORECAST TODAY',
    'THE RADICAL LOTTO KEYBOOK',
    'LOTTO RESULT',
    'OVERDUE NUMBERS',
    'GRENCO KEY CHART',
    'SAVED PLANS',
    'FIND & COMPARE EVENTS',
    'CLASSIFICATION CHART',
    'GROUP NUMBER CHART',
    'COLUMN NUMBER CHART',
    'ENDING NUMBER CHART',
  ];

  List timingkeys = [
    'LAPPING NUMER KEYS',
    'POLAR ADDITION KEYS',
    'EVENT SUMMATION KEYS',
    'PIVOTED NUMBER KEYS',
    'BALL SPACING KEYS',
    'CONSTANT POSITION KEYS',
    'SEQUENTIAL NUMBER KEYS',
    'PROGRESSIVE NUMBER KEYS',
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
                        features[index].toString(),
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
            bdColor: AppColors.lightBlueColor,
            bottomRightRadius: 0.0,
            bottomLeftRadius: 0.0,
            topLeftRadius: 0.0,
            topRightRadius: 0.0,
            fontsize: 19.0,
            fontweight: FontWeight.w700,
            bdwidth: 3.0,
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
                        timingkeys[index].toString(),
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
