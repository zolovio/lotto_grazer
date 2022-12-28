import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/utils/utils.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class LottoKeyBook extends StatefulWidget {
  const LottoKeyBook({super.key});

  @override
  State<LottoKeyBook> createState() => _LottoKeyBookState();
}

class _LottoKeyBookState extends State<LottoKeyBook> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(Utils.width(context) * 1, 60.h),
          child: const CustomAppBar(),
        ),
        body: SfPdfViewer.asset(
          'assets/files/book.pdf',
          canShowHyperlinkDialog: true,
          canShowPaginationDialog: true,
          canShowScrollHead: true,
          canShowScrollStatus: true,
        ),
      ),
    );
  }
}
