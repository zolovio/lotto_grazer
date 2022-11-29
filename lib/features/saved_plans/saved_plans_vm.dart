import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';

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
    )
  ];

  void viewDetailsTap(BuildContext context) {
    Navigator.of(context).pushNamed(RoutesName.grencoForecastDetails);
    print("view detail");
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
    this.isRightDiagonal = true,
    this.isUpwardPivoted = true,
  });
}
