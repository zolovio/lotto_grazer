import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
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
      'navigation': RoutesName.grencoKeyChart,
    },
    {
      'name': 'SAVED PLANS',
      'navigation': RoutesName.savedPlans,
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
        preferredSize: Size(Utils.width(context) * 1, 70.h),
        child: const CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 260.h,
              child: GridView.builder(
                padding:
                    EdgeInsets.symmetric(horizontal: 25.sm, vertical: 10.sm),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.sp,
                  childAspectRatio: 0.9.sm,
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
                        Icon(
                          Icons.flare_sharp,
                          size: 45.sp,
                          color: AppColors.blueColor,
                        ),
                        Text(
                          features[index]['name'].toString(),
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackColor,
                              fontSize: 11.sp,
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
              height: 45.h,
              title: 'LOTTO TIMING KEYS',
              bgColor: AppColors.greyColor,
              fgColor: AppColors.blackColor,
              bottomRightRadius: 0.0,
              bottomLeftRadius: 0.0,
              topLeftRadius: 0.0,
              topRightRadius: 0.0,
              fontsize: 18.sp,
              fontweight: FontWeight.w700,
              border: Border.all(
                width: 3.w,
                color: AppColors.lightBlueColor,
              ),
            ),
            SizedBox(
              height: 250.h,
              child: GridView.builder(
                padding: EdgeInsets.all(25.sm),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 5.0.sp,
                  childAspectRatio: 0.7.sm,
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
                        Icon(
                          Icons.flare_sharp,
                          size: 45.sp,
                          color: AppColors.blueColor,
                        ),
                        Text(
                          timingkeys[index]['name'].toString(),
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackColor,
                              fontSize: 11.sp,
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
              height: 25.h,
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
      ),
    );
  }
}
