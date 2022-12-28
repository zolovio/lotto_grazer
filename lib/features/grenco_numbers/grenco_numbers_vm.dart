import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/features/grenco_numbers/grenco_forecast_details/grenco_forecast_details.dart';

final grencoNumbersProvider =
    ChangeNotifierProvider.autoDispose<GrencoNumbersVm>((ref) {
  return GrencoNumbersVm();
});

class GrencoNumbersVm extends ChangeNotifier {
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
    firstNum,
    secondNum,
    winNum,
    gameName,
    countingWeek,
  }) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => GrencoForecastDetails(
              num1: firstNum,
              num2: secondNum,
              winNum: winNum,
              gameName: gameName,
              countingWeek: countingWeek,
            )));
    print("view detail");
  }
}
