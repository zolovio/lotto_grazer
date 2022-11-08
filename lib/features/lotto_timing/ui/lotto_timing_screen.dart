import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/lotto_timing/ui/lotto_timing_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/analysis_card.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_radio_button.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LottoTimingScreen extends StatefulWidget {
  const LottoTimingScreen({super.key});

  @override
  State<LottoTimingScreen> createState() => _LottoTimingScreenState();
}

class _LottoTimingScreenState extends State<LottoTimingScreen> {
  final ValueNotifier<bool> islogin = ValueNotifier(true);
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
        child: const CutomAppBar(),
      ),
      body: Consumer(builder: (context, ref, _) {
        final _vm = ref.watch(lottoTimingProvider);
        return ListView(
          children: [
            Container(
              width: size.width,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomText(
                  text: 'LAPPING NUMBER KEYS',
                  textColor: AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Lapping Number Key is a showcase of '
                    'potential lotto keys, using plan patterns of'
                    'numbers lapping vertically,horizontally or'
                    'diagonally, to decipher timing keys,that is'
                    'likely to be used by the lottery system to'
                    'drop its winning numbers.',
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.blackColor, width: 3.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonDropDown(
                          initialValue: 'LOTTERY TYPE',
                          list: ['LOTTERY TYPE', '2', '3', '4'],
                          onSelect: (value) {
                            print(value);
                          },
                          title: '',
                        ),
                        CommonDropDown(
                          initialValue: '2',
                          list: ['1', '2', '3', '28'],
                          onSelect: (value) {
                            print(value);
                          },
                          title: 'COUNTING WEEKS',
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: size.height * 0.08,
                      width: size.width,
                      child: CustomRadioButton(
                        list: _vm.keyList,
                        selectedIndex: _vm.selectedIndex,
                        onSelect: (index) {
                          _vm.onSelect(index);
                        },
                      ),
                    ),

                    ///
                    /// This should be work on condition based
                    ///
                    CustomText(
                      text: 'Select a lapping pattern',
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      textColor: AppColors.blackColor,
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                      width: size.width * 0.8,
                      child: CustomRadioButton(
                        fontSize: 12.sp,
                        isDecorated: false,
                        radioSize: 15.0,
                        list: _vm.lappingList,
                        selectedIndex: _vm.selectedLappingIndex,
                        onSelect: (index) {
                          _vm.onSelectLapping(index);
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: AppColors.blackColor, width: 3.0),
                      ),
                      child: Column(
                        children: [
                          CustomText(
                            text: 'Input an event winning numbers',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(height: 5.h),
                          Table(border: TableBorder.all(), children: [
                            TableRow(children: [
                              CustomText(text: ''),
                              CustomText(
                                text: 'W1',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: 'W2',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: 'W3',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: 'W4',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: 'W5',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ]),
                            TableRow(children: [
                              CustomText(
                                text: 'EVENT 1 ',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: 'W1',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: 'W2',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: 'W3',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: 'W4',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: 'W5',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ]),
                          ]),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 120.w),
                      child: InkWell(
                        onTap: () {
                          _vm.onSearchTap(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.blackColor,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                                color: AppColors.blueColor, width: 2.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            child: CustomText(
                              text: 'SEARCH',
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              textColor: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),

                    ///
                    ///
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.greyColor.withOpacity(0.2),
                  border: Border.all(color: AppColors.blackColor, width: 3.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                    text: 'KEY ANALYSIS', fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 2.h),
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: AnalysisCard(),
            ),
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: AnalysisCard(),
            ),
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: AnalysisCard(),
            ),
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: AnalysisCard(),
            ),
            SizedBox(height: 100.h),
          ],
        );
      }),
    );
  }
}
