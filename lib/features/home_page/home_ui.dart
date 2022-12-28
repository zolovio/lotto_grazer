import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      'name': 'LOTTO\nPREDICTION',
      'navigation': RoutesName.lottoPrediction,
    },
    {
      'name': 'LOTTO\nKEYBOOK',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'LOTTO\nRESULT',
      'navigation': RoutesName.lottoResult,
    },
    {
      'name': 'OVERDUE\nNUMBERS',
      'navigation': RoutesName.overdueNumbers,
    },
    {
      'name': 'GRENCO\nNUMBERS',
      'navigation': RoutesName.grencoNumbers,
    },
    {
      'name': 'LOTTO TOOLS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'TIMING\nKEYS',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': '2 SURE\nTRACER',
      'navigation': RoutesName.lottoKeyBook,
    },
    {
      'name': 'POWER X PLAY',
      'navigation': RoutesName.lottoKeyBook,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(Utils.width(context) * 1, 60.h),
          child: const CustomAppBar(),
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.h,
                  mainAxisSpacing: 45.h,
                  childAspectRatio: 0.9.h,
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
                        SizedBox(
                          height: 5.h,
                        ),
                        (features[index]['name'].toString() == "POWER X PLAY")
                            ? RichText(
                                textAlign: TextAlign.center,
                                softWrap: true,
                                text: TextSpan(
                                    text: "POWER ",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor,
                                        fontSize: 12.sp,
                                        wordSpacing: 0,
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4),
                                    children: [
                                      TextSpan(
                                        text: "X",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.redColor,
                                            fontSize: 14.sp,
                                            wordSpacing: 0,
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline4),
                                      ),
                                      const TextSpan(text: ' PLAY'),
                                    ]))
                            : RichText(
                                textAlign: TextAlign.center,
                                softWrap: true,
                                text: TextSpan(
                                  text: features[index]['name'].toString(),
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.blackColor,
                                      fontSize: 12.sp,
                                      wordSpacing: 0,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline4),
                                ),
                              ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
