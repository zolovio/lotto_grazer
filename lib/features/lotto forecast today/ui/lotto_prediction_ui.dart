import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_bottom_tab_bar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
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

  List savedPlans = [
    {
      "draw": "996",
      "league": "NL FORTUNE",
      "date": "02/06/2022",
      "axis": "VERTICAL",
      "number": "LAPPING NUMBER",
      "pivoted": "",
      "spacing": "",
      "sum": [],
      "w_exists": ["W"],
      "w": ["40", "59"],
      "w1": [],
      "w2": [],
      "w3": [],
    },
    {
      "draw": "996",
      "league": "NL FORTUNE",
      "date": "02/06/2022",
      "axis": "DIAGONAL",
      "number": "LAPPING NUMBER",
      "pivoted": "",
      "spacing": "",
      "sum": [],
      "w_exists": ["W2", "W3"],
      "w": [],
      "w1": [],
      "w2": [" ", "59"],
      "w3": ["40", " "],
    },
    {
      "draw": "996",
      "league": "NL FORTUNE",
      "date": "02/06/2022",
      "axis": "DIAGONAL",
      "number": "LAPPING NUMBER",
      "pivoted": "",
      "spacing": "",
      "sum": [],
      "w_exists": ["W2", "W3"],
      "w": [],
      "w1": [],
      "w2": ["40", " "],
      "w3": [" ", "59"],
    },
    {
      "draw": "996",
      "league": "NL FORTUNE",
      "date": "02/06/2022",
      "axis": "HORIZONTAL",
      "number": "LAPPING NUMBER",
      "pivoted": "",
      "spacing": "",
      "sum": [],
      "w_exists": ["W1", "W2"],
      "w": [],
      "w1": ["40"],
      "w2": ["59"],
      "w3": [],
    },
    {
      "draw": "996",
      "league": "NL FORTUNE",
      "date": "02/06/2022",
      "axis": "",
      "number": "CONSTANT POSITION",
      "pivoted": "",
      "spacing": "",
      "sum": [],
      "w_exists": ["W3"],
      "w": [],
      "w1": [],
      "w2": [],
      "w3": ["71"],
    },
    {
      "draw": "996",
      "league": "NL FORTUNE",
      "date": "02/06/2022",
      "axis": "",
      "number": "PIVOTED NUMBER",
      "pivoted": "pivoted_up",
      "spacing": "",
      "sum": [],
      "w_exists": ["W"],
      "w": ["40", "58", "59"],
      "w1": [],
      "w2": [],
      "w3": [],
    },
    {
      "draw": "996",
      "league": "NL FORTUNE",
      "date": "02/06/2022",
      "axis": "",
      "number": "PIVOTED NUMBER",
      "pivoted": "pivoted_down",
      "spacing": "",
      "sum": [],
      "w_exists": ["W"],
      "w": ["58", "59", "40"],
      "w1": [],
      "w2": [],
      "w3": [],
    },
    {
      "draw": "996",
      "league": "NL FORTUNE",
      "date": "02/06/2022",
      "axis": "HORIZONTAL",
      "number": "BALL \n SPACING",
      "pivoted": "",
      "spacing": "SPACING",
      "sum": [],
      "w_exists": ["W1", "W2"],
      "w": [],
      "w1": ["140"],
      "w2": [],
      "w3": [],
    },
    {
      "draw": "996",
      "league": "NL FORTUNE",
      "date": "02/06/2022",
      "axis": "VERTICAL",
      "number": "BALL \n SPACING",
      "pivoted": "",
      "spacing": "SPACING",
      "sum": [],
      "w_exists": ["W1", "W1"],
      "w": [],
      "w1": ["140"],
      "w2": [],
      "w3": [],
    },
    {
      "draw": "996",
      "league": "NL FORTUNE",
      "date": "02/06/2022",
      "axis": "",
      "number": "EVENT SUMMATION",
      "pivoted": "",
      "spacing": "",
      "sum": ["SUM", "CONSTANT"],
      "w_exists": ["W15", "W2"],
      "w": [],
      "w1": [],
      "w2": ["31"],
      "w3": [],
      "w15": ["160"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
        child: const CustomAppBar(),
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
                    CustomButton(
                      title: 'FORECAST GAMES',
                      onpress: () {
                        setState(() {
                          _groupValue = "0";
                        });
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
                Row(
                  children: [
                    CustomButton(
                      title: 'SAVED PLANS',
                      onpress: () {
                        setState(() {
                          _groupValue = "1";
                        });
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
            height: Utils.height(context) * 0.06,
            title: _groupValue == "0" ? 'FORECAST GAMES' : "SAVED PLANS",
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
          _groupValue == "0"
              ? Expanded(
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
                                      title: predictedGames[index]['short_name'].toString(),
                                      fontcolor: AppColors.redColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 12.0,
                                      underline: false,
                                    ),
                                    CustomText(
                                      title: " | ${predictedGames[index]['full_name'].toString()}",
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
                                          title: 'DRAW:${predictedGames[index]['draw']}',
                                          fontcolor: AppColors.blackColor,
                                          fontweight: FontWeight.w700,
                                          fontsize: 14.0,
                                          underline: false),
                                      CustomText(
                                          title: predictedGames[index]['date'].toString(),
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
                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            onpress: () {
                                              // Navigator.of(context).pushNamed(RoutesName.forecastDetails);
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
                                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                        elevation: 2.0,
                                        color: AppColors.blackColor,
                                        textColor: AppColors.whiteColor,
                                        padding: const EdgeInsets.only(left: 15.0, right: 4.0),
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
                                                  title: predictedGames[index]["time_remaining"],
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
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: savedPlans.length,
                    itemBuilder: (context, index) {
                      String spacingChar = "";
                      if (savedPlans[index]["spacing"] != "") spacingChar = savedPlans[index]["w_exists"][0].toLowerCase();

                      return Column(
                        children: [
                          Row(
                            children: [
                              CustomChildContainer(
                                width: Utils.width(context) * 0.3,
                                height: Utils.height(context) * 0.04,
                                bgColor: AppColors.whiteColor,
                                border: const Border(
                                  bottom: BorderSide(
                                    color: AppColors.blackColor,
                                    width: 1.0,
                                  ),
                                  top: BorderSide(
                                    color: AppColors.blackColor,
                                    width: 2.0,
                                  ),
                                  right: BorderSide(
                                    color: AppColors.blackColor,
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CustomText(
                                          title: "DRAW ",
                                          fontcolor: AppColors.blackColor,
                                          fontweight: FontWeight.w700,
                                          fontsize: 12.0,
                                          underline: false,
                                        ),
                                        CustomText(
                                          title: " : ${savedPlans[index]['draw'].toString()}",
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
                                width: Utils.width(context) * 0.40,
                                height: Utils.height(context) * 0.04,
                                bgColor: AppColors.whiteColor,
                                border: const Border(
                                  bottom: BorderSide(
                                    color: AppColors.blackColor,
                                    width: 1.0,
                                  ),
                                  top: BorderSide(
                                    color: AppColors.blackColor,
                                    width: 2.0,
                                  ),
                                  right: BorderSide(
                                    color: AppColors.blackColor,
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      title: "${savedPlans[index]["league"]} ",
                                      fontcolor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 14.0,
                                      align: TextAlign.center,
                                      underline: false,
                                    ),
                                  ],
                                ),
                              ),
                              CustomChildContainer(
                                width: Utils.width(context) * 0.30,
                                height: Utils.height(context) * 0.04,
                                bgColor: AppColors.whiteColor,
                                border: const Border(
                                  bottom: BorderSide(
                                    color: AppColors.blackColor,
                                    width: 1.0,
                                  ),
                                  top: BorderSide(
                                    color: AppColors.blackColor,
                                    width: 2.0,
                                  ),
                                  right: BorderSide(
                                    color: AppColors.blackColor,
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      title: "${savedPlans[index]["date"]} ",
                                      fontcolor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 14.0,
                                      align: TextAlign.center,
                                      underline: false,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CustomChildContainer(
                                width: Utils.width(context) * 0.3,
                                height: Utils.height(context) * 0.16,
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
                                  right: BorderSide(
                                    color: AppColors.blackColor,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      title: "PLAN",
                                      fontcolor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 16.0,
                                      underline: true,
                                    ),
                                    SizedBox(height: Utils.height(context) * 0.015),
                                    CustomText(
                                      title: "${savedPlans[index]["axis"]}",
                                      fontcolor: AppColors.blackColor,
                                      fontweight: FontWeight.w600,
                                      fontsize: 10.0,
                                      underline: false,
                                    ),
                                    CustomText(
                                      align: TextAlign.center,
                                      title: "${savedPlans[index]["number"]}",
                                      fontcolor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 16.0,
                                      underline: false,
                                    ),
                                  ],
                                ),
                              ),
                              CustomChildContainer(
                                width: Utils.width(context) * 0.40,
                                height: Utils.height(context) * 0.16,
                                margin: const EdgeInsets.only(bottom: 4.0),
                                padding: const EdgeInsets.only(bottom: 10),
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
                                  left: BorderSide(
                                    color: AppColors.blackColor,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Table(
                                      defaultColumnWidth: FixedColumnWidth(Utils.width(context) * 0.13),
                                      border: TableBorder.symmetric(
                                        outside: BorderSide.none,
                                        inside: BorderSide.none,
                                      ),
                                      children: [
                                        TableRow(
                                          children: savedPlans[index]["w_exists"]
                                              .map<Widget>(
                                                (item) => Column(
                                                  children: [
                                                    Container(
                                                      height: Utils.height(context) * 0.04,
                                                      width: Utils.width(context) * 0.13,
                                                      margin: const EdgeInsets.only(right: 2),
                                                      decoration: const BoxDecoration(
                                                        color: AppColors.blackColor,
                                                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            item,
                                                            textAlign: TextAlign.center,
                                                            style: GoogleFonts.montserrat(
                                                              color: AppColors.whiteColor,
                                                              fontSize: 16.0,
                                                              fontWeight: FontWeight.w700,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(height: 2),
                                                    if (savedPlans[index]["pivoted"] == "" && savedPlans[index]["spacing"] == "")
                                                      Column(
                                                        children: savedPlans[index][item.toLowerCase()]
                                                            .map<Widget>(
                                                              (element) => savedPlans[index]["sum"].isEmpty
                                                                  ? Container(
                                                                      height: Utils.height(context) * 0.04,
                                                                      width: Utils.width(context) * 0.13,
                                                                      decoration: const BoxDecoration(
                                                                        shape: BoxShape.rectangle,
                                                                        color: AppColors.whiteColor,
                                                                        border: Border(
                                                                          left: BorderSide(
                                                                            color: AppColors.blueColor,
                                                                            width: 3.0,
                                                                          ),
                                                                          right: BorderSide(
                                                                            color: AppColors.blueColor,
                                                                            width: 3.0,
                                                                          ),
                                                                          bottom: BorderSide(
                                                                            color: AppColors.blueColor,
                                                                            width: 3.0,
                                                                          ),
                                                                          top: BorderSide(
                                                                            color: AppColors.blueColor,
                                                                            width: 3.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      child: Column(
                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            element,
                                                                            textAlign: TextAlign.center,
                                                                            style: GoogleFonts.montserrat(
                                                                              color: AppColors.blackColor,
                                                                              fontSize: 16.0,
                                                                              fontWeight: FontWeight.w700,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    )
                                                                  : Column(
                                                                      children: [
                                                                        Container(
                                                                          height: Utils.height(context) * 0.04,
                                                                          width: Utils.width(context) * 0.35,
                                                                          decoration: const BoxDecoration(
                                                                            shape: BoxShape.rectangle,
                                                                            color: AppColors.whiteColor,
                                                                            border: Border(
                                                                              left: BorderSide(
                                                                                color: AppColors.blueColor,
                                                                                width: 3.0,
                                                                              ),
                                                                              right: BorderSide(
                                                                                color: AppColors.blueColor,
                                                                                width: 3.0,
                                                                              ),
                                                                              bottom: BorderSide(
                                                                                color: AppColors.blueColor,
                                                                                width: 3.0,
                                                                              ),
                                                                              top: BorderSide(
                                                                                color: AppColors.blueColor,
                                                                                width: 3.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          child: Column(
                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                element,
                                                                                textAlign: TextAlign.center,
                                                                                style: GoogleFonts.montserrat(
                                                                                  color: AppColors.blackColor,
                                                                                  fontSize: 16.0,
                                                                                  fontWeight: FontWeight.w700,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height: Utils.height(context) * 0.025,
                                                                          width: Utils.width(context) * 0.25,
                                                                          decoration: const BoxDecoration(
                                                                            shape: BoxShape.rectangle,
                                                                            color: AppColors.blueColor,
                                                                            border: Border(
                                                                              left: BorderSide(
                                                                                color: AppColors.blueColor,
                                                                                width: 3.0,
                                                                              ),
                                                                              right: BorderSide(
                                                                                color: AppColors.blueColor,
                                                                                width: 3.0,
                                                                              ),
                                                                              bottom: BorderSide(
                                                                                color: AppColors.blueColor,
                                                                                width: 3.0,
                                                                              ),
                                                                              top: BorderSide(
                                                                                color: AppColors.blueColor,
                                                                                width: 3.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          child: Text(
                                                                            "SPACING",
                                                                            textAlign: TextAlign.center,
                                                                            style: GoogleFonts.montserrat(
                                                                              color: AppColors.whiteColor,
                                                                              fontSize: 11.0,
                                                                              fontWeight: FontWeight.w700,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                            )
                                                            .toList(),
                                                      ),
                                                    savedPlans[index]["pivoted"] != "" &&
                                                            savedPlans[index]["pivoted"] == "pivoted_up" &&
                                                            savedPlans[index]["spacing"] == ""
                                                        ? Container(
                                                            height: Utils.height(context) * 0.04,
                                                            width: Utils.width(context) * 0.13,
                                                            decoration: const BoxDecoration(
                                                              shape: BoxShape.rectangle,
                                                              color: AppColors.whiteColor,
                                                              border: Border(
                                                                left: BorderSide(
                                                                  color: AppColors.blueColor,
                                                                  width: 3.0,
                                                                ),
                                                                right: BorderSide(
                                                                  color: AppColors.blueColor,
                                                                  width: 3.0,
                                                                ),
                                                                bottom: BorderSide(
                                                                  color: AppColors.blueColor,
                                                                  width: 3.0,
                                                                ),
                                                                top: BorderSide(
                                                                  color: AppColors.blueColor,
                                                                  width: 3.0,
                                                                ),
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Text(
                                                                  savedPlans[index]["w"][0],
                                                                  textAlign: TextAlign.center,
                                                                  style: GoogleFonts.montserrat(
                                                                    color: AppColors.blackColor,
                                                                    fontSize: 16.0,
                                                                    fontWeight: FontWeight.w700,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                        : Container(),
                                                  ],
                                                ),
                                              )
                                              .toList(),
                                        ),
                                      ],
                                    ),
                                    if (savedPlans[index]["pivoted"] != "" && savedPlans[index]["pivoted"] == "pivoted_up")
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: savedPlans[index]["w_exists"]
                                            .map<Widget>(
                                              (item) => Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: Utils.height(context) * 0.04,
                                                    width: Utils.width(context) * 0.13,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      color: AppColors.whiteColor,
                                                      border: Border(
                                                        left: BorderSide(
                                                          color: AppColors.blueColor,
                                                          width: 3.0,
                                                        ),
                                                        right: BorderSide(
                                                          color: AppColors.blueColor,
                                                          width: 3.0,
                                                        ),
                                                        bottom: BorderSide(
                                                          color: AppColors.blueColor,
                                                          width: 3.0,
                                                        ),
                                                        top: BorderSide(
                                                          color: AppColors.blueColor,
                                                          width: 3.0,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          savedPlans[index]["w"][1],
                                                          textAlign: TextAlign.center,
                                                          style: GoogleFonts.montserrat(
                                                            color: AppColors.blackColor,
                                                            fontSize: 16.0,
                                                            fontWeight: FontWeight.w700,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: Utils.height(context) * 0.04,
                                                    width: Utils.width(context) * 0.13,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      color: AppColors.whiteColor,
                                                      border: Border(
                                                        left: BorderSide(
                                                          color: AppColors.blueColor,
                                                          width: 3.0,
                                                        ),
                                                        right: BorderSide(
                                                          color: AppColors.blueColor,
                                                          width: 3.0,
                                                        ),
                                                        bottom: BorderSide(
                                                          color: AppColors.blueColor,
                                                          width: 3.0,
                                                        ),
                                                        top: BorderSide(
                                                          color: AppColors.blueColor,
                                                          width: 3.0,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          savedPlans[index]["w"][2],
                                                          textAlign: TextAlign.center,
                                                          style: GoogleFonts.montserrat(
                                                            color: AppColors.blackColor,
                                                            fontSize: 16.0,
                                                            fontWeight: FontWeight.w700,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                            .toList(),
                                      ),
                                    savedPlans[index]["pivoted"] != "" && savedPlans[index]["pivoted"] == "pivoted_down"
                                        ? Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: Utils.height(context) * 0.04,
                                                width: Utils.width(context) * 0.13,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  color: AppColors.whiteColor,
                                                  border: Border(
                                                    left: BorderSide(
                                                      color: AppColors.blueColor,
                                                      width: 3.0,
                                                    ),
                                                    right: BorderSide(
                                                      color: AppColors.blueColor,
                                                      width: 3.0,
                                                    ),
                                                    bottom: BorderSide(
                                                      color: AppColors.blueColor,
                                                      width: 3.0,
                                                    ),
                                                    top: BorderSide(
                                                      color: AppColors.blueColor,
                                                      width: 3.0,
                                                    ),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      savedPlans[index]["w"][0],
                                                      textAlign: TextAlign.center,
                                                      style: GoogleFonts.montserrat(
                                                        color: AppColors.blackColor,
                                                        fontSize: 16.0,
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: Utils.height(context) * 0.04,
                                                width: Utils.width(context) * 0.13,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  color: AppColors.whiteColor,
                                                  border: Border(
                                                    left: BorderSide(
                                                      color: AppColors.blueColor,
                                                      width: 3.0,
                                                    ),
                                                    right: BorderSide(
                                                      color: AppColors.blueColor,
                                                      width: 3.0,
                                                    ),
                                                    bottom: BorderSide(
                                                      color: AppColors.blueColor,
                                                      width: 3.0,
                                                    ),
                                                    top: BorderSide(
                                                      color: AppColors.blueColor,
                                                      width: 3.0,
                                                    ),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      savedPlans[index]["w"][1],
                                                      textAlign: TextAlign.center,
                                                      style: GoogleFonts.montserrat(
                                                        color: AppColors.blackColor,
                                                        fontSize: 16.0,
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        : Container(),
                                    if (savedPlans[index]["pivoted"] != "" && savedPlans[index]["pivoted"] == "pivoted_down")
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: savedPlans[index]["w_exists"]
                                            .map<Widget>(
                                              (item) => Container(
                                                height: Utils.height(context) * 0.04,
                                                width: Utils.width(context) * 0.13,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  color: AppColors.whiteColor,
                                                  border: Border(
                                                    left: BorderSide(
                                                      color: AppColors.blueColor,
                                                      width: 3.0,
                                                    ),
                                                    right: BorderSide(
                                                      color: AppColors.blueColor,
                                                      width: 3.0,
                                                    ),
                                                    bottom: BorderSide(
                                                      color: AppColors.blueColor,
                                                      width: 3.0,
                                                    ),
                                                    top: BorderSide(
                                                      color: AppColors.blueColor,
                                                      width: 3.0,
                                                    ),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      savedPlans[index]["w"][2],
                                                      textAlign: TextAlign.center,
                                                      style: GoogleFonts.montserrat(
                                                        color: AppColors.blackColor,
                                                        fontSize: 16.0,
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                            .toList(),
                                      ),
                                    if (savedPlans[index]["spacing"] != "")
                                      Column(
                                        children: [
                                          Container(
                                            height: Utils.height(context) * 0.04,
                                            width: Utils.width(context) * 0.25,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: AppColors.whiteColor,
                                              border: Border(
                                                left: BorderSide(
                                                  color: AppColors.blueColor,
                                                  width: 3.0,
                                                ),
                                                right: BorderSide(
                                                  color: AppColors.blueColor,
                                                  width: 3.0,
                                                ),
                                                bottom: BorderSide(
                                                  color: AppColors.blueColor,
                                                  width: 3.0,
                                                ),
                                                top: BorderSide(
                                                  color: AppColors.blueColor,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  savedPlans[index][spacingChar][0],
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.montserrat(
                                                    color: AppColors.blackColor,
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: Utils.height(context) * 0.025,
                                            width: Utils.width(context) * 0.25,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: AppColors.blueColor,
                                              border: Border(
                                                left: BorderSide(
                                                  color: AppColors.blueColor,
                                                  width: 3.0,
                                                ),
                                                right: BorderSide(
                                                  color: AppColors.blueColor,
                                                  width: 3.0,
                                                ),
                                                bottom: BorderSide(
                                                  color: AppColors.blueColor,
                                                  width: 3.0,
                                                ),
                                                top: BorderSide(
                                                  color: AppColors.blueColor,
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "SPACING",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.montserrat(
                                                color: AppColors.whiteColor,
                                                fontSize: 11.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    // Column(
                                    //   children: savedPlans[index]["w_exists"]
                                    //       .map<Widget>(
                                    //         (element) => Container(
                                    //           height: Utils.height(context) * 0.04,
                                    //           width: Utils.width(context) * 0.13,
                                    //           decoration: const BoxDecoration(
                                    //             shape: BoxShape.rectangle,
                                    //             color: AppColors.whiteColor,
                                    //             border: Border(
                                    //               left: BorderSide(
                                    //                 color: AppColors.blueColor,
                                    //                 width: 3.0,
                                    //               ),
                                    //               right: BorderSide(
                                    //                 color: AppColors.blueColor,
                                    //                 width: 3.0,
                                    //               ),
                                    //               bottom: BorderSide(
                                    //                 color: AppColors.blueColor,
                                    //                 width: 3.0,
                                    //               ),
                                    //               top: BorderSide(
                                    //                 color: AppColors.blueColor,
                                    //                 width: 3.0,
                                    //               ),
                                    //             ),
                                    //           ),
                                    //           child: Column(
                                    //             mainAxisAlignment: MainAxisAlignment.center,
                                    //             children: [
                                    //               Text(
                                    //                 element,
                                    //                 textAlign: TextAlign.center,
                                    //                 style: GoogleFonts.montserrat(
                                    //                   color: AppColors.blackColor,
                                    //                   fontSize: 16.0,
                                    //                   fontWeight: FontWeight.w700,
                                    //                 ),
                                    //               ),
                                    //             ],
                                    //           ),
                                    //         ),
                                    //       )
                                    //       .toList(),
                                    // ),
                                  ],
                                ),
                              ),
                              CustomChildContainer(
                                width: Utils.width(context) * 0.30,
                                height: Utils.height(context) * 0.16,
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
                                    width: 1.0,
                                  ),
                                  left: BorderSide(
                                    color: AppColors.blackColor,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomButton(
                                        title: 'VIEW DETAIL',
                                        align: TextAlign.center,
                                        onpress: () {},
                                        btnwidth: Utils.width(context) * 0.25,
                                        btnheight: Utils.height(context) * 0.075,
                                        bgColor: AppColors.clickBackgroundColor,
                                        fgColor: AppColors.blackColor,
                                        bdColor: AppColors.blackColor,
                                        fontweight: FontWeight.w700,
                                        bottomRightRadius: 15.0,
                                        bottomLeftRadius: 15.0,
                                        topLeftRadius: 15.0,
                                        topRightRadius: 15.0,
                                        fontsize: 13.0,
                                        bdwidth: 2.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0, right: 5.0),
                                      child: CustomButton(
                                        title: 'DELETE',
                                        align: TextAlign.center,
                                        onpress: () {},
                                        btnwidth: Utils.width(context) * 0.25,
                                        btnheight: Utils.height(context) * 0.040,
                                        bgColor: AppColors.brownColor,
                                        fgColor: AppColors.whiteColor,
                                        bdColor: AppColors.brownColor,
                                        fontweight: FontWeight.w700,
                                        bottomRightRadius: 5.0,
                                        bottomLeftRadius: 5.0,
                                        topLeftRadius: 5.0,
                                        topRightRadius: 5.0,
                                        fontsize: 13.0,
                                        bdwidth: 2.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      );
                    },
                  ),
                ),
        ],
      ),
      bottomNavigationBar: const CustomBottomTabBar(),
    );
  }
}
