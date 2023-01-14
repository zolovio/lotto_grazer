import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final powerXplayVmProvider =
    ChangeNotifierProvider.autoDispose<PowerXplayVm>((ref) {
  return PowerXplayVm();
});

class PowerXplayVm extends ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void setSelectedIndex(value) {
    _selectedIndex = value;
    notifyListeners();
  }

  int _selectedGameIndex = 0;
  int get selectedGameIndex => _selectedGameIndex;
  void setSelectedGameIndex(value) {
    _selectedGameIndex = value;
    notifyListeners();
  }

  int _selectedTeamIndex = 0;
  int get selectedTeamIndex => _selectedTeamIndex;
  void setSelectedTeamIndex(value) {
    _selectedTeamIndex = value;
    notifyListeners();
  }

  int _selectedPowerIndex = 0;
  int get selectedPowerIndex => _selectedPowerIndex;
  void setSelectedPowerIndex(value) {
    _selectedPowerIndex = value;
    notifyListeners();
  }

  List powerXplayList = [
    'POWER 5',
    'POWER 7',
    'POWER 10',
  ];

  List lotteryTypeList = [
    'NATIONAL LOTTERY',
    'PREMIER LOTTO',
    'GOLDEN CHANCE\nLOTTO',
  ];
  List gamesList = [
    [
      {'game': 'JET', 'closeTime': '00:30'},
      {'game': 'STAR', 'closeTime': '00:30'},
      {'game': 'VISION', 'closeTime': '00:30'},
      {'game': 'BRAVO', 'closeTime': '00:30'},
      {'game': 'IGWE1', 'closeTime': '00:30'},
    ],
    [
      {'game': 'JET', 'closeTime': '00:30'},
      {'game': 'STAR', 'closeTime': '00:30'},
      {'game': 'VISION', 'closeTime': '00:30'},
      {'game': 'BRAVO', 'closeTime': '00:30'},
      {'game': 'IGWE1', 'closeTime': '00:30'},
    ],
    [
      {'game': 'JET', 'closeTime': '00:30'},
      {'game': 'STAR', 'closeTime': '00:30'},
      {'game': 'VISION', 'closeTime': '00:30'},
      {'game': 'BRAVO', 'closeTime': '00:30'},
      {'game': 'IGWE1', 'closeTime': '00:30'},
    ]
  ];

  String _selectedBanker = '34';
  String get selectedBanker => _selectedBanker;
  void setSelectedBanker(value) {
    _selectedBanker = value;
    notifyListeners();
  }

  List<String> bankersList = ['34', '23', '4', '56', '78', '6', '47'];

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
    _startSec = 56;
    _startMin = 1;
    _startHr = 1;
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

  final List stakeHistoryList = List.generate(
    3,
    (index) => {
      "date": '05/10/2022',
      "ref": '01234GH',
      "lottery": index == 0
          ? 'NLA'
          : index == 1
              ? 'PREMIER'
              : 'GCCHANCE',
      "game": index == 0
          ? 'MIDWEEK'
          : index == 1
              ? 'METRO'
              : 'STAR',
      "power": index == 0
          ? 7
          : index == 1
              ? 10
              : 7,
      "team": Random().nextInt(1) + 1,
      "banker": Random().nextInt(90),
      "powerNumbers": index == 0
          ? <int>[13, 26, 39, 49, 59, 69, 70]
          : index == 1
              ? 'PROCESSING ......'
              : 'WAITING .....',
      "stake": 'N500',
      "win": index == 0 ? 'YES' : ' ',
      "amount": index == 0 ? '12,000' : ' ',
    },
  );

  PowerXplayVm() {
    startTimer();
  }
}
