import 'package:flutter/material.dart';
import 'package:lotto_grazer/features/lotto%20result/lotto_last20_days_result_ui.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LottoResultUi extends StatefulWidget {
  const LottoResultUi({super.key});

  @override
  State<LottoResultUi> createState() => _LottoResultUiState();
}

class _LottoResultUiState extends State<LottoResultUi> {
  ValueNotifier<int?> val = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
        child: const CutomAppBar(),
      ),
      body: ValueListenableBuilder(
          valueListenable: val,
          builder: (context, thisval, _) {
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
                Row(
                  children: [
                    SizedBox(
                      width: Utils.width(context) * 0.5,
                      height: Utils.height(context) * 0.055,
                      child: RadioListTile<int>(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        activeColor: AppColors.blueColor,
                        title: CustomContainer(
                          title: 'TODAY RESULTS',
                          bgColor: AppColors.whiteColor.withOpacity(0.1),
                          fgColor: AppColors.blackColor,
                          fontsize: 14.0,
                          topLeftRadius: 10.0,
                          topRightRadius: 10.0,
                          bottomLeftRadius: 10.0,
                          bottomRightRadius: 10.0,
                          fontweight: FontWeight.w800,
                          border: Border.all(
                            width: 2.0,
                            color: AppColors.blueColor,
                          ),
                        ),
                        value: 0,
                        groupValue: val.value,
                        onChanged: (int? newvalue) {
                          val.value = newvalue;
                          print(thisval);
                        },
                      ),
                    ),
                    SizedBox(
                      width: Utils.width(context) * 0.5,
                      height: Utils.height(context) * 0.055,
                      child: RadioListTile<int>(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
                        activeColor: AppColors.blueColor,
                        title: CustomContainer(
                          title: 'LAST 20 DRAWS',
                          bgColor: AppColors.whiteColor.withOpacity(0.1),
                          fgColor: AppColors.blackColor,
                          fontsize: 14.0,
                          topLeftRadius: 10.0,
                          topRightRadius: 10.0,
                          bottomLeftRadius: 10.0,
                          bottomRightRadius: 10.0,
                          fontweight: FontWeight.w800,
                          border: Border.all(
                            width: 2.0,
                            color: AppColors.blueColor,
                          ),
                        ),
                        value: 1,
                        groupValue: val.value,
                        onChanged: (int? newvalue) {
                          val.value = newvalue;
                          print(thisval);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Utils.height(context) * 0.03,
                ),
                val.value == 1
                    ? const CustomSearchContainer()
                    : const CatContainer(
                        thistitle: 'NL NATIONAL',
                      ),
                const CustomDrawContainer(
                  date: '13/06/2022',
                  draw: '743',
                ),
                const CatContainer(
                  thistitle: 'PM GOLD',
                ),
                const CustomDrawContainer(
                  date: '13/06/2022',
                  draw: '921',
                ),
                const CatContainer(
                  thistitle: 'GC JET',
                ),
                const CustomDrawContainer(
                  date: '13/06/2022',
                  draw: '643',
                ),
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
