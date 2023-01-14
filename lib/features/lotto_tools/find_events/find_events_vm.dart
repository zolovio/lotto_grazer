import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/features/lotto_tools/find_events/find_events_charts/find_events_charts.dart';

final findEventVmProvider =
    ChangeNotifierProvider.autoDispose<FindEventVm>((ref) {
  return FindEventVm();
});

class FindEventVm extends ChangeNotifier {
  FindEventVm() {
    setlength = numberOfBoardList.length;
  }
  late int setlength;
  late List<String> lotteryType =
      List.generate(setlength, (index) => 'LOTTERY TYPE');
  late List<String> lotteryGame =
      List.generate(setlength, (index) => 'LOTTERY GAME');
  late List<String> date = List.generate(setlength, (index) => 'DD/MM/YY');
  String _numberOfBoard = '1';
  String _findBy = 'EVENT NO';
  String _weeksBelow = '1';
  String get findBy => _findBy;
  String get numberOfBoard => _numberOfBoard;
  String get weeksBelow => _weeksBelow;
  List<String> lotteryTypeList = ['LOTTERY TYPE', 'X', 'Y', 'Z'];
  List<String> lotteryGameList = [
    'LOTTERY GAME',
    'PREMIER LOTTO',
    'GOLDENCHANCE LOTTO',
    'NLA LOTTO',
    'ALPHA LOTTO',
    'LONATO LOTTO'
  ];
  List<String> findByList = ['EVENT NO', 'DATE'];
  List<String> weeksBelowList = List.generate(10, (index) => '${index + 1}');
  List<String> numberOfBoardList = ['1', '2', '3', '4', '5', '6'];

  void setLotteryType(value, index) {
    lotteryType[index] = value;
    print(value);
    print(index);

    notifyListeners();
  }

  void setLotteryGame(value, index) {
    lotteryGame[index] = value;
    print(value);
    print(index);
    print(lotteryGame[index]);

    notifyListeners();
  }

  void setDate(value, index) {
    date[index] = value;
    print(value);
    print(index);
    print(date[index]);

    notifyListeners();
  }

  void setNumberOfBoard(value) {
    _numberOfBoard = value;
    notifyListeners();
  }

  void setFindBy(value) {
    _findBy = value;
    notifyListeners();
  }

  void setWeeksBelow(value) {
    _weeksBelow = value;
    notifyListeners();
  }

  void onSearchTap(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const FindEventsChartsScreen()));
  }
}
