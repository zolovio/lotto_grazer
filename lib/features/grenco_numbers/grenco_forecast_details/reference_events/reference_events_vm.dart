import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final referenceEventsVmProvider =
    ChangeNotifierProvider.autoDispose((ref) => ReferenceEventsVm());

class ReferenceEventsVm extends ChangeNotifier {
  int _selectedIndex = 1;
  get selectedIndex => _selectedIndex;
  void setSelectedIndex(val) {
    _selectedIndex = val;
    notifyListeners();
  }

  final List tables = [
    {
      1: {
        'gameType': 'PM',
        'gameName': 'GOLD LOTTO',
        'tableData': List.generate(
          5,
          (index) => {
            "date": '${index + 1}/01/2022',
            "draw": index + 1,
            "w1": "3",
            "w2": "3",
            "w3": index + 4,
            "w4": "3",
            "w5": "3",
            "m1": index + 7,
            "m2": "3",
            "m3": "3",
            "m4": "3",
            "m5": "3",
          },
        )
      },
      2: {
        'gameType': 'PM',
        'gameName': 'GOLD LOTTO',
        'tableData': List.generate(
          5,
          (index) => {
            "date": '${index + 6}/01/2022',
            "draw": index + 6,
            "w1": "3",
            "w2": index + 1,
            "w3": "3",
            "w4": "3",
            "w5": "3",
            "m1": "3",
            "m2": index + 8,
            "m3": "3",
            "m4": "3",
            "m5": "3",
          },
        )
      },
      3: {
        'gameType': 'PM',
        'gameName': 'GOLD LOTTO',
        'tableData': List.generate(
          5,
          (index) => {
            "date": '${index + 10}/01/2022',
            "draw": index + 10,
            "w1": "3",
            "w2": index + 2,
            "w3": "3",
            "w4": "3",
            "w5": "3",
            "m1": "3",
            "m2": "3",
            "m3": index + 9,
            "m4": "3",
            "m5": "3",
          },
        )
      },
      4: {
        'gameType': 'PM',
        'gameName': 'GOLD LOTTO',
        'tableData': List.generate(
          5,
          (index) => {
            "date": '${index + 12}/01/2022',
            "draw": index + 12,
            "w1": "3",
            "w2": "3",
            "w3": index + 5,
            "w4": "3",
            "w5": "3",
            "m1": "3",
            "m2": "3",
            "m3": "3",
            "m4": index + 7,
            "m5": "3",
          },
        )
      },
    }
  ];
}
