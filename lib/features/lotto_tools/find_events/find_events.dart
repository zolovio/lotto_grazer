import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lotto_grazer/features/lotto_tools/find_events/find_events_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_formfield.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class FindEventScreen extends StatefulWidget {
  const FindEventScreen({super.key});

  @override
  State<FindEventScreen> createState() => _FindEventScreenState();
}

class _FindEventScreenState extends State<FindEventScreen> {
  final List<TextEditingController> _numController = [];
  List<FocusNode> numFocusNode = [];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final vm = ref.watch(findEventVmProvider);
      return Expanded(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonDropDown(
                  initialValue: vm.numberOfBoard,
                  list: vm.numberOfBoardList,
                  onSelect: (value) {
                    vm.setNumberOfBoard(value);
                    print(value);
                  },
                  title: 'NUMBER OF BOARD:',
                ),
                CommonDropDown(
                  initialValue: vm.findBy,
                  list: vm.findByList,
                  onSelect: (value) {
                    vm.setFindBy(value);
                    print(value);
                  },
                  title: 'FIND BY:',
                ),
                CommonDropDown(
                  initialValue: vm.weeksBelow,
                  list: vm.weeksBelowList,
                  onSelect: (value) {
                    vm.setWeeksBelow(value);
                    print(value);
                  },
                  title: 'WEEKS BELOW:',
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: int.parse(vm.numberOfBoard),
                  itemBuilder: (context, index) {
                    _numController.add(TextEditingController());
                    numFocusNode.add(FocusNode());
                    return Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.blackColor, width: 3.w)),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.sm),
                            child: Container(
                              height: 60.h,
                              width: 60.w,
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              decoration: BoxDecoration(
                                color: AppColors.blackColor,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: AppColors.appbarColor, width: 1.5),
                              ),
                              child: Center(
                                child: CustomText(
                                  title: '${index + 1}',
                                  fontsize: 18.sp,
                                  fontcolor: AppColors.whiteColor,
                                  fontweight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.sm),
                            child: Column(
                              children: [
                                CommonDropDown(
                                  initialValue: vm.lotteryType[index],
                                  list: vm.lotteryTypeList,
                                  onSelect: (value) {
                                    vm.setLotteryType(value, index);
                                    debugPrint(value);
                                  },
                                  setWidth: 200.w,
                                ),
                                SizedBox(height: 10.h),
                                CommonDropDown(
                                  initialValue: vm.lotteryGame[index],
                                  list: vm.lotteryGameList,
                                  onSelect: (value) {
                                    vm.setLotteryGame(value, index);
                                    debugPrint(value);
                                  },
                                  setWidth: 200.w,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                CustomText(
                                  title: (vm.findBy == "EVENT NO")
                                      ? 'ENTER A NUMBER'
                                      : 'CHOOSE A DATE',
                                  fontsize: 10.sp,
                                  fontweight: FontWeight.w700,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.sm),
                                  child: (vm.findBy == 'EVENT NO')
                                      ? CustomFormField(
                                          title: '',
                                          fieldcontroller:
                                              _numController[index],
                                          focusnode: numFocusNode[index],
                                          onchange: (val) {},
                                          onsaved: (String? val) {},
                                          bgColor: Colors.transparent,
                                          fgColor: AppColors.blackColor,
                                          width: 100.w,
                                          height: 35.h,
                                          fontsize: 50.sp,
                                          bottomRightRadius: 15.0,
                                          bottomLeftRadius: 0.0,
                                          topLeftRadius: 15.0,
                                          topRightRadius: 0.0,
                                          keyboardtype: TextInputType.number,
                                          bdwidth: 2.5,
                                          gradientcolors: const [
                                            Color(0xFF41719c),
                                            Color(0xFF7296b6),
                                          ],
                                        )
                                      : GestureDetector(
                                          onTap: () async {
                                            DateTime? pickedDate =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2022, 1, 1),
                                              lastDate: DateTime(2050, 12, 31),
                                            );
                                            if (pickedDate != null) {
                                              String formattedDate =
                                                  DateFormat('dd/MM/yy')
                                                      .format(pickedDate);
                                              debugPrint(formattedDate);
                                              vm.setDate(formattedDate, index);
                                            }
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                border: Border.all(
                                                    color: AppColors
                                                        .lightBlueColor,
                                                    width: 2.w),
                                                borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(15.r),
                                                  topLeft:
                                                      Radius.circular(15.r),
                                                )),
                                            width: 100.w,
                                            height: 35.h,
                                            child: CustomText(
                                              title: vm.date[index],
                                              fontsize: 16.sp,
                                              fontweight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 180.w),
            child: CustomButton(
              btnheight: 32.h,
              bottomLeftRadius: 5.r,
              topLeftRadius: 5.r,
              bottomRightRadius: 5.r,
              topRightRadius: 5.r,
              bdwidth: 2.w,
              bgColor: AppColors.blueColor,
              bdColor: AppColors.lightBlueColor,
              title: 'Search',
              fontsize: 15.sp,
              fontweight: FontWeight.w700,
              onpress: () => vm.onSearchTap(context),
            ),
          ),
          SizedBox(
            height: 5.h,
          )
        ],
      ));
    });
  }
}
