import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LottoKeyBook extends StatefulWidget {
  const LottoKeyBook({super.key});

  @override
  State<LottoKeyBook> createState() => _LottoKeyBookState();
}

class _LottoKeyBookState extends State<LottoKeyBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
        child: const CutomAppBar(),
      ),
    );
  }
}
