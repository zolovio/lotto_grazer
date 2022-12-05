import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lotto_grazer/features/lotto%20result/lotto_last20_draws_result_ui.dart';
import 'package:lotto_grazer/features/lotto%20result/lotto_result_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_radio_button.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LottoResultUi extends StatefulWidget {
  const LottoResultUi({super.key});

  @override
  State<LottoResultUi> createState() => _LottoResultUiState();
}

class _LottoResultUiState extends State<LottoResultUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
        child: const CustomAppBar(),
      ),
      body: Consumer(builder: (context, ref, _) {
        final vm = ref.watch(lottoLast20DrawsVmProvider);
        return ListView(
          children: [
            CustomContainer(
              width: Utils.width(context) * 1,
              height: Utils.height(context) * 0.08,
              title: 'LOTTO RESULT',
              bgColor: AppColors.blackColor,
              fgColor: AppColors.whiteColor,
              fontsize: 18.0,
              fontweight: FontWeight.w800,
              border: Border.all(
                width: 0.0,
                color: AppColors.whiteColor.withOpacity(0.1),
              ),
            ),
            SizedBox(
              height: Utils.height(context) * 0.08,
              width: Utils.width(context),
              child: CustomRadioButton(
                list: vm.keyList,
                selectedIndex: vm.selectedIndex,
                onSelect: (index) {
                  vm.setIndex(index);
                },
              ),
            ),
            SizedBox(
              height: Utils.height(context) * 0.03,
            ),
            vm.selectedIndex == 1
                ? const CustomSearchContainer()
                : const CatContainer(
                    thistitle: 'NL NATIONAL',
                  ),
            vm.selectedIndex == 1
                ? CustomContainer(
                    width: Utils.width(context) * 1,
                    height: Utils.height(context) * 0.07,
                    padding: const EdgeInsets.all(15.0),
                    title: 'LAST 2O DRAWS',
                    bgColor: AppColors.greyColor.withOpacity(0.5),
                    fgColor: AppColors.blackColor,
                    fontsize: 18.0,
                    fontweight: FontWeight.w800,
                    border: const Border(
                      bottom: BorderSide(
                        width: 3.0,
                        color: AppColors.blackColor,
                      ),
                    ),
                  )
                : const CustomDrawContainer(
                    date: '13/06/2022',
                    draw: '743',
                  ),
            vm.selectedIndex == 1
                ? ListTile(
                    contentPadding:
                        const EdgeInsets.only(right: 15.0, left: 40.0),
                    minLeadingWidth: 0,
                    dense: true,
                    horizontalTitleGap: 8.0,
                    leading: CustomText(
                        title: 'NL',
                        fontcolor: AppColors.blackColor,
                        fontweight: FontWeight.w500,
                        fontsize: 19.0,
                        underline: false),
                    title: CustomText(
                        title: 'NATIONAL LOTTO',
                        fontcolor: AppColors.blackColor,
                        fontweight: FontWeight.w800,
                        fontsize: 16.0,
                        underline: false),
                    trailing: CustomText(
                        title: 'YEAR 2022',
                        fontcolor: AppColors.blackColor,
                        fontweight: FontWeight.w800,
                        fontsize: 16.0,
                        underline: false),
                  )
                : const CatContainer(
                    thistitle: 'PM GOLD',
                  ),
            vm.selectedIndex == 0
                ? const CustomDrawContainer(
                    date: '13/06/2022',
                    draw: '921',
                  )
                : const Center(),
            vm.selectedIndex == 0
                ? const CatContainer(
                    thistitle: 'GC JET',
                  )
                : const Center(),
            vm.selectedIndex == 0
                ? const CustomDrawContainer(
                    date: '13/06/2022',
                    draw: '643',
                  )
                : const Center(),
            vm.selectedIndex == 1 ? const CustomTable() : const Center(),
          ],
        );
      }),
    );
  }
}

class CatContainer extends StatelessWidget {
  final String thistitle;
  const CatContainer({
    super.key,
    required this.thistitle,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: Utils.width(context) * 1,
      height: Utils.height(context) * 0.07,
      padding: const EdgeInsets.all(15.0),
      title: thistitle,
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontsize: 18.0,
      fontweight: FontWeight.w800,
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
    );
  }
}

class CustomDrawContainer extends StatelessWidget {
  final String draw;
  final String date;
  const CustomDrawContainer({
    super.key,
    required this.draw,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return CustomChildContainer(
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
        children: [
          ListTile(
            dense: false,
            title: CustomText(
                title: 'DRAW: $draw',
                fontcolor: AppColors.blackColor,
                fontweight: FontWeight.w700,
                fontsize: 14.0,
                underline: false),
            trailing: CustomText(
                title: date.toString(),
                fontcolor: AppColors.blackColor,
                fontweight: FontWeight.w700,
                fontsize: 14.0,
                underline: false),
          ),
          Center(
            child: CustomText(
                title: 'WINNING NUMBERS',
                fontcolor: AppColors.blackColor,
                fontweight: FontWeight.w700,
                fontsize: 16.0,
                underline: false),
          ),
          Row(
            children: const [
              CustomCircle(),
              CustomCircle(),
              CustomCircle(),
              CustomCircle(),
              CustomCircle(),
            ],
          ),
          Center(
            child: CustomText(
                title: 'MACHINE NUMBERS',
                fontcolor: AppColors.blackColor,
                fontweight: FontWeight.w700,
                fontsize: 16.0,
                underline: false),
          ),
          Row(
            children: const [
              CustomCircle(
                clr: AppColors.redColor,
              ),
              CustomCircle(
                clr: AppColors.redColor,
              ),
              CustomCircle(
                clr: AppColors.redColor,
              ),
              CustomCircle(
                clr: AppColors.redColor,
              ),
              CustomCircle(
                clr: AppColors.redColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCircle extends StatelessWidget {
  final Color clr;
  const CustomCircle({
    super.key,
    this.clr = AppColors.greenColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: Utils.width(context) * 0.2,
      height: Utils.height(context) * 0.07,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      title: '',
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontsize: 18.0,
      fontweight: FontWeight.w800,
      shape: BoxShape.circle,
      border: Border.all(
        width: 4.0,
        color: clr,
      ),
    );
  }
}
