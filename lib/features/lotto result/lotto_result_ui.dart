import 'package:flutter/material.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
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
      body: ListView(
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
          ValueListenableBuilder(
              valueListenable: val,
              builder: (context, thisval, _) {
                return Row(
                  children: [
                    SizedBox(
                      width: Utils.width(context) * 0.5,
                      height: Utils.height(context) * 0.055,
                      child: RadioListTile<int>(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0.0),
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
                );
              }),
        ],
      ),
    );
  }
}
