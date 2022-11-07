import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final midFortuneLottoVmProvider =
    ChangeNotifierProvider.autoDispose((ref) => MidFortuneLottoVm());

class MidFortuneLottoVm extends ChangeNotifier {
  late DataTableSource myData;
  MidFortuneLottoVm() {
    myData = MyData();
  }
}

class MyData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
    100,
    (index) =>
        {"id": index, "title": "Item $index", "price": Random().nextInt(10000)},
  );
  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['id'].toString())),
      DataCell(Text(_data[index]['title'].toString())),
      DataCell(Text(_data[index]['price'].toString())),
      DataCell(Text('A')),
      DataCell(Text('B')),
      DataCell(Text('C')),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
