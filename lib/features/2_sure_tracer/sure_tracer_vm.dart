import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/components/number_card.dart';

final sureTracerVmProvider =
    ChangeNotifierProvider.autoDispose<SureTracerVm>((ref) {
  return SureTracerVm();
});

class SureTracerVm extends ChangeNotifier {
  final List<Widget> _evenList = [];
  final List<Widget> _oddList = [];
  get evenList => _evenList;
  get oddList => _oddList;
  void setEvenList(startVal, endVal) {
    for (var i = startVal; i <= endVal; i++) {
      if (i % 2 == 0) {
        _evenList.add(GradientNumberCard(
          label: '$i',
          width: 25.w,
        ));
      }
    }
  }

  void setOddList(startVal, endVal) {
    for (var i = startVal; i <= endVal; i++) {
      if (i % 2 != 0) {
        _oddList.add(GradientNumberCard(
          label: '$i',
          width: 25.w,
        ));
      }
    }
  }

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void setSelectedIndex(value) {
    _selectedIndex = value;
    notifyListeners();
  }

  List sureTracerList = [
    'PM | GOLD',
    'GC | STAR',
    'NL | MIDWEEK',
    'TG | KADOO',
    'AL | PRECISE'
  ];

  //Prediction
  bool _view1stCard = false;
  get view1stCard => _view1stCard;
  void setView1stCard(val) {
    _view1stCard = val;
    notifyListeners();
  }

  bool _view2ndCard = false;
  get view2ndCard => _view2ndCard;
  void setView2ndCard(val) {
    _view2ndCard = val;
    notifyListeners();
  }

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

  final List table1 = List.generate(
    4,
    (index) => {
      "w1": Random().nextInt(90),
      "w2": Random().nextInt(90),
      "w3": Random().nextInt(90),
      "w4": Random().nextInt(90),
      "w5": Random().nextInt(90),
      "draw": '111${index + 1}',
      "date": '02/22/2022',
    },
  );
  final List table2 = List.generate(
    4,
    (index) => {
      "w1": index == 3 ? '?' : Random().nextInt(90),
      "w2": index == 3 ? '?' : Random().nextInt(90),
      "w3": index == 3 ? '?' : Random().nextInt(90),
      "w4": index == 3 ? '?' : Random().nextInt(90),
      "w5": index == 3 ? '?' : Random().nextInt(90),
      "draw": '211${index + 1}',
      "date": '02/22/2022',
    },
  );

  SureTracerVm() {
    startTimer();
    setEvenList(8, 17);
    setOddList(41, 50);
  }
}
