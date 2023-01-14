import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/features/timing_keys/timing_keys_forecast_details/timing_keys_forecast_details.dart';

final timingKeysProvider =
    ChangeNotifierProvider.autoDispose<TimingKeysVm>((ref) {
  return TimingKeysVm();
});

class TimingKeysVm extends ChangeNotifier {
  String _lotteryType = 'LOTTERY TYPE';
  String _lotteryGame = 'LOTTERY GAME';
  String get lotteryType => _lotteryType;
  String get lotteryGame => _lotteryGame;
  List<String> lotteryTypeList = ['LOTTERY TYPE', 'X', 'Y', 'Z'];
  List<String> lotteryGameList = [
    'LOTTERY GAME',
    'PREMIER LOTTO',
    'GOLDENCHANCE LOTTO',
    'NLA LOTTO',
    'ALPHA LOTTO',
    'LONATO LOTTO'
  ];
  void setLotteryType(value) {
    _lotteryType = value;
    notifyListeners();
  }

  void setLotteryGame(value) {
    _lotteryGame = value;
    notifyListeners();
  }

  String _drawDate = 'DRAW DATE';
  String _lappingBox = 'ALL';
  String get drawDate => _drawDate;
  String get lappingBox => _lappingBox;
  List<String> drawDateList = [
    'DRAW DATE',
    '22/03/2022',
    '23/04/2021',
    '20/05/2020'
  ];
  List<String> lappingBoxList = [
    'ALL',
    'abc123444',
    'xyz',
    'efg',
  ];
  void setDrawDate(value) {
    _drawDate = value;
    notifyListeners();
  }

  void setLappingBox(value) {
    _lappingBox = value;
    notifyListeners();
  }

  String _countingWeeks = '1';
  String _boardPlan = 'ALL';
  String get countingWeeks => _countingWeeks;
  String get boardPlan => _boardPlan;
  List<String> countingWeeksList = ['1', '2', '3', '4'];
  List<String> boardPlanList = [
    'ALL',
    'ON BOARD',
    'ACROSS BOARDS',
  ];
  void setCountingWeeks(value) {
    _countingWeeks = value;
    notifyListeners();
  }

  void setBoardPlan(value) {
    _boardPlan = value;
    notifyListeners();
  }

  void viewDetailsTap(
    BuildContext context, {
    plansData,
    countingWeek,
  }) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => TimingKeysForecastDetails(
              plansData: plansData,
              countingWeek: countingWeek,
            )));
    print("view detail");
  }

  List<TimingKeysData> plansData = [
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "VERTICAL",
      planName: "LAPPING NUMBER",
      winningNum1: 'w3',
      num1: '40',
      num2: '59',
    ),
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "DIAGONAL",
      planName: "LAPPING NUMBER",
      isRightDiagonal: true,
      winningNum1: 'w1',
      winningNum2: 'w2',
      num1: '40',
      num2: '59',
    ),
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "DIAGONAL",
      planName: "LAPPING NUMBER",
      winningNum1: 'w1',
      winningNum2: 'w2',
      isRightDiagonal: false,
      num1: '40',
      num2: '59',
    ),
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "HORIZONTAL",
      planName: "LAPPING NUMBER",
      winningNum1: 'w1',
      winningNum2: 'w2',
      num1: '40',
      num2: '59',
    ),
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "UP",
      planName: "PIVOTED NUMBER",
      winningNum1: 'w',
      num1: '40',
      num2: '58',
      num3: '59',
      isUpwardPivoted: true,
    ),
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "DOWN",
      planName: "PIVOTED NUMBER",
      winningNum1: 'w',
      num1: '40',
      num2: '58',
      num3: '59',
      isUpwardPivoted: false,
    ),
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "HORIZONTAL",
      planName: "BALL SPACING",
      winningNum1: 'w1',
      winningNum2: 'w2',
      num1: '140',
    ),
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "VERTICAL",
      planName: "BALL SPACING",
      winningNum1: 'w1',
      winningNum2: 'w1',
      num1: '140',
    ),
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "",
      planName: "EVENT SUMMATION",
      winningNum1: 'w',
      winningNum2: 'w3',
      num1: '160',
      num2: '31',
    ),
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "",
      planName: "POLAR ADDITION",
      winningNum1: 'w15',
      winningNum2: 'w3',
      num1: '141',
      num2: '34',
    ),
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "",
      planName: "SEQUENTIAL NUMBER",
      winningNum1: 'w',
      num1: '14325',
    ),
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "VERTICAL",
      planName: "PROGRESSIVE NUMBER",
      winningNum1: 'w',
      signCode1: '-- -- * + --',
    ),
    TimingKeysData(
        draw: "966",
        lotteryGameName: "MONDAY SPECIAL",
        date: "02/06/2022",
        planType: "HORIZONTAL",
        planName: "PROGRESSIVE NUMBER",
        winningNum1: 'w',
        signCode1: '-- -- -- +',
        signCode2: '+ + -- +'),
    TimingKeysData(
      draw: "966",
      lotteryGameName: "MONDAY SPECIAL",
      date: "02/06/2022",
      planType: "",
      planName: "CONSTANT POSITION",
      winningNum1: 'w3',
      num1: '71',
    ),
  ];
}

class TimingKeysData {
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

  TimingKeysData({
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
