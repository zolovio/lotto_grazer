import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/features/lotto%20result/lotto_result_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomChildContainer(
      width: Utils.width(context) * 1,
      height: Utils.height(context) * 0.2,
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      border: const Border(
        top: BorderSide(
          width: 3.0,
          color: AppColors.blackColor,
        ),
        bottom: BorderSide(
          width: 3.0,
          color: AppColors.blackColor,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(
                width: Utils.width(context) * 0.4,
                height: Utils.height(context) * 0.05,
                padding: const EdgeInsets.all(10.0),
                title: 'LOTTERY TYPE',
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                fgColor: AppColors.blackColor,
                fontsize: 15.0,
                fontweight: FontWeight.w600,
                topLeftRadius: 15.0,
                topRightRadius: 15.0,
                bottomLeftRadius: 15.0,
                bottomRightRadius: 15.0,
                border: Border.all(
                  width: 2.0,
                  color: AppColors.blueColor,
                ),
              ),
              CustomChildContainer(
                width: Utils.width(context) * 0.1,
                height: Utils.height(context) * 0.05,
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                padding: const EdgeInsets.all(5.0),
                border: Border.all(
                  width: 2.0,
                  color: AppColors.blueColor,
                ),
                child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_downward,
                    size: 25.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(
                width: Utils.width(context) * 0.4,
                height: Utils.height(context) * 0.05,
                padding: const EdgeInsets.all(10.0),
                title: 'LOTTERY GAME',
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                fgColor: AppColors.blackColor,
                fontsize: 15.0,
                fontweight: FontWeight.w600,
                topLeftRadius: 15.0,
                topRightRadius: 15.0,
                bottomLeftRadius: 15.0,
                bottomRightRadius: 15.0,
                border: Border.all(
                  width: 2.0,
                  color: AppColors.blueColor,
                ),
              ),
              CustomChildContainer(
                width: Utils.width(context) * 0.1,
                height: Utils.height(context) * 0.05,
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                padding: const EdgeInsets.all(5.0),
                border: Border.all(
                  width: 2.0,
                  color: AppColors.blueColor,
                ),
                child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_downward,
                    size: 25.0,
                  ),
                ),
              ),
            ],
          ),
          CustomButton(
            btnwidth: Utils.width(context) * 0.2,
            btnheight: Utils.height(context) * 0.05,
            bottomLeftRadius: 5.0,
            topLeftRadius: 5.0,
            bottomRightRadius: 5.0,
            topRightRadius: 5.0,
            bdwidth: 2.0,
            bgColor: AppColors.blueColor,
            title: 'Search',
            fontsize: 16.0,
            fontweight: FontWeight.w700,
            onpress: () {},
          ),
        ],
      ),
    );
  }
}

class CustomTable extends StatefulWidget {
  const CustomTable({super.key});

  @override
  State<CustomTable> createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {
  TableRow tableheader = TableRow(
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.1),
      ),
      children: [
        CustomContainer(
            title: 'DATE',
            align: TextAlign.center,
            padding: const EdgeInsets.all(5.0),
            bgColor: AppColors.blackColor.withOpacity(0.6),
            fgColor: AppColors.whiteColor,
            fontweight: FontWeight.w600,
            fontsize: 11.0,
            underline: false),
        CustomContainer(
            title: 'DRAW',
            align: TextAlign.center,
            padding: const EdgeInsets.all(5.0),
            bgColor: AppColors.blackColor.withOpacity(0.6),
            fgColor: AppColors.whiteColor,
            fontweight: FontWeight.w600,
            fontsize: 11.0,
            underline: false),
        CustomContainer(
            title: 'WINNING',
            align: TextAlign.center,
            padding: const EdgeInsets.all(5.0),
            bgColor: const Color(0XFFa8d08d),
            fgColor: AppColors.blackColor,
            fontweight: FontWeight.w600,
            fontsize: 11.0,
            underline: false),
        CustomContainer(
            title: 'MACHINE',
            align: TextAlign.center,
            padding: const EdgeInsets.all(5.0),
            bgColor: AppColors.orangeColor,
            fgColor: AppColors.blackColor,
            fontweight: FontWeight.w600,
            fontsize: 11.0,
            underline: false),
      ]);

  final tablerow = TableRow(children: [
    CustomContainer(
      title: '13/1',
      align: TextAlign.center,
      padding: const EdgeInsets.all(5.0),
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontweight: FontWeight.w500,
      fontsize: 12.0,
      underline: false,
    ),
    CustomContainer(
      title: '1323',
      align: TextAlign.center,
      padding: const EdgeInsets.all(5.0),
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontweight: FontWeight.w500,
      fontsize: 12.0,
      underline: false,
    ),
    Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        5,
        (index) => CustomContainer(
          title: ' 3 ',
          border: const Border(
            right: BorderSide(
              width: 1.5,
              color: AppColors.blackColor,
            ),
          ),
          align: TextAlign.center,
          padding: const EdgeInsets.all(5.0),
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontweight: FontWeight.w500,
          fontsize: 12.0,
          underline: false,
        ),
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: List.generate(
        5,
        (index) => CustomContainer(
          title: ' 3 ',
          border: const Border(
            right: BorderSide(
              width: 1.5,
              color: AppColors.blackColor,
            ),
          ),
          align: TextAlign.center,
          padding: const EdgeInsets.all(5.0),
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontweight: FontWeight.w500,
          fontsize: 12.0,
          underline: false,
        ),
      ),
    ),
  ]);

  List<TableRow> tablerows = [];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final vm = ref.watch(lottoLast20DrawsVmProvider);
      tablerows = [
        tableheader,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
        tablerow,
      ];
      return Table(
        columnWidths: const {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(2),
          3: FlexColumnWidth(2),
        },
        border: TableBorder.all(
          color: AppColors.blackColor,
          style: BorderStyle.solid,
          width: 2,
        ),
        children: tablerows,
      );
    });
  }
}
