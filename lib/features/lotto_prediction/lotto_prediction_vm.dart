import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lottoPredictionProvider = ChangeNotifierProvider.autoDispose<LottoPredictionVm>((ref) {
  return LottoPredictionVm();
});

class LottoPredictionVm extends ChangeNotifier {
  List<String> keyList = ['FORECAST GAMES', 'SAVED PLANS'];

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void setIndex(value) {
    _selectedIndex = value;
    notifyListeners();
  }

  //Forecast Games
  bool _isLoading = true;
  get isLoading => _isLoading;
  void setIsLoading(val) {
    _isLoading = val;
    notifyListeners();
  }

  late Timer _timer;
  late int _startSec;
  get startSec => _startSec;
  void setStartSecTime() {
    if (_startSec != 0) _startSec--;
    if (_startSec == 0 && _startMin != 0) {
      _startSec = 59;
      setStartMinTime();
    }
    notifyListeners();
  }

  late int _startMin;
  get startMin => _startMin;
  void setStartMinTime() {
    if (_startMin != 0) _startMin--;
    if (_startHr != 0 && _startMin == 0) {
      _startMin = 59;
      setStartHrTime();
    }

    notifyListeners();
  }

  late int _startHr;
  get startHr => _startHr;
  void setStartHrTime() {
    if (_startHr != 0) _startHr--;
    notifyListeners();
  }

  void startTimer() {
    _startSec = 10;
    _startMin = 0;
    _startHr = 0;
    setIsLoading(true);
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_startSec == 0 && _startMin == 0 && _startHr == 0) {
          timer.cancel();
          notifyListeners();
          setIsLoading(false);
        } else {
          setStartSecTime();
        }
      },
    );
  }

  LottoPredictionVm() {
    startTimer();
  }

  List forecastGamesList = [
    {
      'gameTitle': 'NL',
      'gameName': 'FORTUNE',
      'draw': '996',
      'date': '02/06/2022',
      'imageUrl': 'https://cdn-icons-png.flaticon.com/512/5052/5052170.png',
      'remainingTime': '12:04:59'
    },
    {
      'gameTitle': 'GC',
      'gameName': 'JET',
      'draw': '336',
      'date': '02/06/2022',
      'imageUrl': 'https://cdn-icons-png.flaticon.com/512/5052/5052170.png',
      'remainingTime': '12:04:59'
    },
    {
      'gameTitle': 'AL',
      'gameName': 'PRIME',
      'draw': '754',
      'date': '02/06/2022',
      'imageUrl': 'https://cdn-icons-png.flaticon.com/512/5052/5052170.png',
      'remainingTime': '12:04:59'
    },
    {
      'gameTitle': 'PM',
      'gameName': 'GOLD',
      'draw': '1555',
      'date': '02/06/2022',
      'imageUrl': 'https://cdn-icons-png.flaticon.com/512/5052/5052170.png',
      'remainingTime': '12:04:59'
    },
    {
      'gameTitle': 'TG',
      'gameName': 'KADOO',
      'draw': '1555',
      'date': '02/06/2022',
      'imageUrl': 'https://cdn-icons-png.flaticon.com/512/5052/5052170.png',
      'remainingTime': '12:04:59'
    },
  ];
  //Saved Plans
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
        signCode1: '-- + -- + +',
        signCode2: '-- + -- + +'),
    SavedPlansData(
      draw: "966",
      lotteryGameName: "NL FORTUNE",
      date: "02/06/2022",
      planType: "HORIZONTAL",
      planName: "PROGRESSIVE NUMBER",
      winningNum1: 'w',
      signCode1: '-- + -- +',
    ),
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
