import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/features/saved_plans/forecast_details/ball_spacing/ball_spacing_forecast_details.dart';
import 'package:lotto_grazer/features/saved_plans/forecast_details/constant_position/constant_position_forecast_details.dart';
import 'package:lotto_grazer/features/saved_plans/forecast_details/diagonal_lapping_number/diagonal_lapping_number_forecast_details.dart';
import 'package:lotto_grazer/features/saved_plans/forecast_details/event_summation/event_summation_forecast_details.dart';
import 'package:lotto_grazer/features/saved_plans/forecast_details/horizontal_lapping_number/horizontal_lapping_number_forecast_details.dart';
import 'package:lotto_grazer/features/saved_plans/forecast_details/pivoted_number/pivoted_number_forecast_details.dart';
import 'package:lotto_grazer/features/saved_plans/forecast_details/polar_addition/polar_addition_forecast_details.dart';
import 'package:lotto_grazer/features/saved_plans/forecast_details/progressive_number/progressive_number_forecast_details.dart';
import 'package:lotto_grazer/features/saved_plans/forecast_details/sequential_number/sequential_number_forecast_details.dart';
import 'package:lotto_grazer/features/saved_plans/forecast_details/vertical_lapping_number/vertical_lapping_number_forecast_details.dart';

final savedPlansProvider =
    ChangeNotifierProvider.autoDispose<SavedPlansVm>((ref) {
  return SavedPlansVm();
});

class SavedPlansVm extends ChangeNotifier {
  List<SavedPlansData> savedPlansList = [
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "VERTICAL",
      planName: "LAPPING NUMBER",
      winningNum1: 'w3',
      num1: '40',
      num2: '59',
    ),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "DIAGONAL",
      planName: "LAPPING NUMBER",
      isRightDiagonal: true,
      winningNum1: 'w2',
      winningNum2: 'w3',
      num1: '40',
      num2: '59',
    ),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "DIAGONAL",
      planName: "LAPPING NUMBER",
      winningNum1: 'w15',
      winningNum2: 'w2',
      isRightDiagonal: false,
      num1: '40',
      num2: '59',
    ),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "HORIZONTAL",
      planName: "LAPPING NUMBER",
      winningNum1: 'w1',
      winningNum2: 'w3',
      num1: '40',
      num2: '59',
    ),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "",
      planName: "PIVOTED NUMBER",
      winningNum1: 'w',
      num1: '40',
      num2: '58',
      num3: '59',
      isUpwardPivoted: true,
    ),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "",
      planName: "PIVOTED NUMBER",
      winningNum1: 'w',
      num1: '40',
      num2: '58',
      num3: '59',
      isUpwardPivoted: false,
    ),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "HORIZONTAL",
      planName: "BALL SPACING",
      winningNum1: 'w1',
      winningNum2: 'w2',
      num1: '140',
    ),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "VERTICAL",
      planName: "BALL SPACING",
      winningNum1: 'w1',
      winningNum2: 'w1',
      num1: '140',
    ),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "",
      planName: "EVENT SUMMATION",
      winningNum1: 'w15',
      winningNum2: 'w2',
      num1: '160',
      num2: '31',
    ),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "",
      planName: "POLAR ADDITION",
      winningNum1: 'w',
      winningNum2: 'w2',
      num1: '141',
      num2: '34',
    ),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "",
      planName: "SEQUENTIAL NUMBER",
      winningNum1: 'w',
      winningNum2: 'W3',
      num1: '14325',
      num2: '35',
    ),
    SavedPlansData(
        draw: "966",
        lotteryGameName: "NL FORTUNE",
        date: "02/06/2022",
        planType: "VERTICAL",
        planName: "PROGRESSIVE NUMBER",
        winningNum1: 'w',
        signCode1: '-- + -- ++',
        signCode2: '++ -- ++'),
    SavedPlansData(
        draw: "966",
        lotteryGameName: "NL FORTUNE",
        date: "02/06/2022",
        planType: "HORIZONTAL",
        planName: "PROGRESSIVE NUMBER",
        winningNum1: 'w',
        signCode1: '+ -- -- +',
        signCode2: '+ -- ++'),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "",
      planName: "CONSTANT POSITION",
      winningNum1: 'w3',
      num1: '71',
    ),
  ];

  void viewDetailsTap(
    BuildContext context, {
    required lotteryGameName,
    required date,
    required pType,
    required pName,
    required winNum1,
    isRightDiagonal,
    isUpwardPivoted,
    winNum2,
    n1,
    n2,
    n3,
    signCode1,
    signCode2,
  }) {
    String planTypeWithName = '$pType $pName';
    switch (planTypeWithName) {
      case "VERTICAL LAPPING NUMBER":
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => VerticalLappingNumberForecastDetails(
                  lotteryGameName: lotteryGameName,
                  date: date,
                  planType: pType,
                  planName: pName,
                  winningNum1: winNum1,
                  num1: n1,
                  num2: n2,
                )));
        break;
      case "DIAGONAL LAPPING NUMBER":
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DiagonalLappingNumberForecastDetails(
                  lotteryGameName: lotteryGameName,
                  date: date,
                  planType: pType,
                  planName: pName,
                  winningNum1: winNum1,
                  winningNum2: winNum2,
                  num1: n1,
                  num2: n2,
                  isRightDiagonal: isRightDiagonal,
                )));
        break;
      case "HORIZONTAL LAPPING NUMBER":
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HorizontalLappingNumberForecastDetails(
                  lotteryGameName: lotteryGameName,
                  date: date,
                  planType: pType,
                  planName: pName,
                  winningNum1: winNum1,
                  winningNum2: winNum2,
                  num1: n1,
                  num2: n2,
                )));
        break;
      case " PIVOTED NUMBER":
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PivotedNumberForecastDetails(
                  lotteryGameName: lotteryGameName,
                  date: date,
                  planType: pType,
                  planName: pName,
                  winningNum1: winNum1,
                  num1: n1,
                  num2: n2,
                  num3: n3,
                  isUpwardPivoted: isUpwardPivoted,
                )));
        break;
      case "HORIZONTAL BALL SPACING":
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BallSpacingForecastDetails(
                  lotteryGameName: lotteryGameName,
                  date: date,
                  planType: pType,
                  planName: pName,
                  winningNum1: winNum1,
                  winningNum2: winNum2,
                  num1: n1,
                )));
        break;
      case "VERTICAL BALL SPACING":
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BallSpacingForecastDetails(
                  lotteryGameName: lotteryGameName,
                  date: date,
                  planType: pType,
                  planName: pName,
                  winningNum1: winNum1,
                  winningNum2: winNum2,
                  num1: n1,
                )));
        break;
      case " EVENT SUMMATION":
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => EventSummationForecastDetails(
                  lotteryGameName: lotteryGameName,
                  date: date,
                  planType: pType,
                  planName: pName,
                  winningNum1: winNum1,
                  winningNum2: winNum2,
                  num1: n1,
                  num2: n2,
                )));
        break;
      case " POLAR ADDITION":
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PolarAdditionForecastDetails(
                  lotteryGameName: lotteryGameName,
                  date: date,
                  planType: pType,
                  planName: pName,
                  winningNum1: winNum1,
                  winningNum2: winNum2,
                  num1: n1,
                  num2: n2,
                )));
        break;
      case " SEQUENTIAL NUMBER":
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SequentialNumberForecastDetails(
                  lotteryGameName: lotteryGameName,
                  date: date,
                  planType: pType,
                  planName: pName,
                  winningNum1: winNum1,
                  winningNum2: winNum2,
                  num1: n1,
                  num2: n2,
                )));
        break;
      case "VERTICAL PROGRESSIVE NUMBER":
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProgressiveNumberForecastDetails(
                  lotteryGameName: lotteryGameName,
                  date: date,
                  planType: pType,
                  planName: pName,
                  winningNum1: winNum1,
                  signCode1: signCode1,
                  signCode2: signCode2,
                )));
        break;
      case "HORIZONTAL PROGRESSIVE NUMBER":
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProgressiveNumberForecastDetails(
                  lotteryGameName: lotteryGameName,
                  date: date,
                  planType: pType,
                  planName: pName,
                  winningNum1: winNum1,
                  signCode1: signCode1,
                  signCode2: signCode2,
                )));
        break;
      case " CONSTANT POSITION":
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ConstantPositionForecastDetails(
                  lotteryGameName: lotteryGameName,
                  date: date,
                  planType: pType,
                  planName: pName,
                  winningNum1: winNum1,
                  num1: n1,
                )));
        break;
      default:
        () {
          print('NothingFound');
        };
    }
  }
}

class SavedPlansData {
  final String draw;
  final String lotteryGameName;
  final String date;
  final String planType;
  final String planName;
  final String winningNum1;
  String winningNum2;
  String num1;
  String num2;
  String num3;
  String signCode1;
  String signCode2;

  bool isRightDiagonal;
  bool isUpwardPivoted;

  SavedPlansData({
    required this.draw,
    required this.lotteryGameName,
    required this.date,
    required this.planType,
    required this.planName,
    required this.winningNum1,
    this.winningNum2 = 'w',
    this.num1 = '',
    this.num2 = '',
    this.num3 = '',
    this.signCode1 = '',
    this.signCode2 = '',
    this.isRightDiagonal = true,
    this.isUpwardPivoted = true,
  });
}
