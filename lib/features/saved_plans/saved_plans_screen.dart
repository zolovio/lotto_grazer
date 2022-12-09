import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/saved_plans/saved_plans_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/components/number_card.dart';
import 'package:lotto_grazer/res/components/w_card.dart';
import 'package:lotto_grazer/utils/utils.dart';

class SavedPlansScreen extends StatefulWidget {
  const SavedPlansScreen({super.key});

  @override
  State<SavedPlansScreen> createState() => _SavedPlansScreenState();
}

class _SavedPlansScreenState extends State<SavedPlansScreen> {
  final ValueNotifier<bool> islogin = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(Utils.width(context) * 1, 70.h),
        child: const CustomAppBar(),
      ),
      body: Consumer(builder: (context, ref, _) {
        final _vm = ref.watch(savedPlansProvider);
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomContainer(
                width: Utils.width(context) * 1,
                height: 50.h,
                title: 'SAVED PLANS',
                bgColor: AppColors.blackColor,
                fgColor: AppColors.whiteColor,
                fontsize: 17.sp,
                fontweight: FontWeight.w700,
                border: Border.all(
                  width: 0.0,
                  color: AppColors.whiteColor.withOpacity(0.1),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
                child: CustomText(
                  title: 'Saved Plans are key plans used in '
                      'forecasting potential winning numbers for '
                      'lotto games in the past, you saved.',
                  fontcolor: AppColors.blackColor,
                  fontsize: 15.sp,
                  fontweight: FontWeight.w600,
                  align: TextAlign.start,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  height: 25.h,
                  decoration: BoxDecoration(
                      color: AppColors.greyColor,
                      border: Border(
                        top:
                            BorderSide(color: AppColors.blackColor, width: 3.w),
                        bottom:
                            BorderSide(color: AppColors.blackColor, width: 3.w),
                      )),
                  child: const Center()),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              childCount: _vm.savedPlansList.length,
              (context, index) {
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 3.w,
                          color: AppColors.blackColor,
                        ),
                      )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: Utils.width(context) * 0.32,
                            height: 30.h,
                            child: CustomContainer(
                              title: 'DRAW: ${_vm.savedPlansList[index].draw}',
                              bgColor: AppColors.whiteColor.withOpacity(0.1),
                              fgColor: AppColors.blackColor,
                              fontsize: 10.sp,
                              align: TextAlign.center,
                              fontweight: FontWeight.w700,
                              border: Border(
                                right: BorderSide(
                                  width: 3.w,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Utils.width(context) * 0.42,
                            height: 30.h,
                            child: CustomContainer(
                              title: _vm.savedPlansList[index].lotteryGameName,
                              bgColor: AppColors.whiteColor.withOpacity(0.1),
                              fgColor: AppColors.blackColor,
                              fontsize: 10.sp,
                              align: TextAlign.center,
                              fontweight: FontWeight.w700,
                              border: Border(
                                right: BorderSide(
                                  width: 3.w,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Utils.width(context) * 0.25,
                            height: 30.h,
                            child: CustomContainer(
                              title: _vm.savedPlansList[index].date,
                              bgColor: AppColors.whiteColor.withOpacity(0.1),
                              fgColor: AppColors.blackColor,
                              fontsize: 10.sp,
                              align: TextAlign.center,
                              fontweight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                          width: 3.w,
                          color: AppColors.blackColor,
                        ),
                      )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: Utils.width(context) * 0.32,
                            height: 140.h,
                            child: CustomChildContainer(
                              bgColor: AppColors.greyColor.withOpacity(0.3),
                              border: Border(
                                right: BorderSide(
                                  width: 3.w,
                                  color: AppColors.blackColor,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    title: "PLAN",
                                    underline: true,
                                    fontsize: 15.5.sp,
                                    fontweight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  CustomText(
                                    title: _vm.savedPlansList[index].planType,
                                    fontsize: 10.sp,
                                    fontweight: FontWeight.w500,
                                  ),
                                  CustomText(
                                    title: _vm.savedPlansList[index].planName,
                                    fontsize: 15.5.sp,
                                    fontweight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Utils.width(context) * 0.42,
                            height: 140.h,
                            child: CustomChildContainer(
                              bgColor: AppColors.whiteColor.withOpacity(0.1),
                              border: Border(
                                right: BorderSide(
                                  width: 3.w,
                                  color: AppColors.blackColor,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                    (_vm.savedPlansList[index].planName ==
                                            'PROGRESSIVE NUMBER')
                                        ? CrossAxisAlignment.stretch
                                        : CrossAxisAlignment.center,
                                children: [
                                  // vertical lapping numbers
                                  if (_vm.savedPlansList[index].planType ==
                                          "VERTICAL" &&
                                      _vm.savedPlansList[index].planName ==
                                          'LAPPING NUMBER') ...[
                                    WCard(
                                      label:
                                          _vm.savedPlansList[index].winningNum1,
                                      borderColor: Colors.transparent,
                                    ),
                                    NumberCard(
                                      label: _vm.savedPlansList[index].num1,
                                    ),
                                    NumberCard(
                                      label: _vm.savedPlansList[index].num2,
                                    )
                                  ],
                                  // diagonal lapping number
                                  if (_vm.savedPlansList[index].planType ==
                                          "DIAGONAL" &&
                                      _vm.savedPlansList[index].planName ==
                                          'LAPPING NUMBER') ...[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        WCard(
                                          label: _vm.savedPlansList[index]
                                              .winningNum1,
                                          borderColor: Colors.transparent,
                                        ),
                                        WCard(
                                          label: _vm.savedPlansList[index]
                                              .winningNum2,
                                          borderColor: Colors.transparent,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        NumberCard(
                                            label: _vm.savedPlansList[index]
                                                    .isRightDiagonal
                                                ? ''
                                                : _vm.savedPlansList[index]
                                                    .num1),
                                        NumberCard(
                                            label: _vm.savedPlansList[index]
                                                    .isRightDiagonal
                                                ? _vm.savedPlansList[index].num1
                                                : ''),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        NumberCard(
                                            label: _vm.savedPlansList[index]
                                                    .isRightDiagonal
                                                ? _vm.savedPlansList[index].num2
                                                : ''),
                                        NumberCard(
                                            label: _vm.savedPlansList[index]
                                                    .isRightDiagonal
                                                ? ''
                                                : _vm.savedPlansList[index]
                                                    .num2),
                                      ],
                                    ),
                                  ],
                                  // horizontal lapping number
                                  if (_vm.savedPlansList[index].planType ==
                                          "HORIZONTAL" &&
                                      _vm.savedPlansList[index].planName ==
                                          'LAPPING NUMBER') ...[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        WCard(
                                          label: _vm.savedPlansList[index]
                                              .winningNum1,
                                          borderColor: Colors.transparent,
                                        ),
                                        WCard(
                                          label: _vm.savedPlansList[index]
                                              .winningNum2,
                                          borderColor: Colors.transparent,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        NumberCard(
                                            label:
                                                _vm.savedPlansList[index].num1),
                                        NumberCard(
                                            label:
                                                _vm.savedPlansList[index].num2),
                                      ],
                                    ),
                                  ],
                                  // Pivoted numbers
                                  if (_vm.savedPlansList[index].planName ==
                                      'PIVOTED NUMBER') ...[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        WCard(
                                          label: _vm.savedPlansList[index]
                                              .winningNum1,
                                          borderColor: Colors.transparent,
                                        ),
                                      ],
                                    ),
                                    if (_vm
                                        .savedPlansList[index].isUpwardPivoted)
                                      NumberCard(
                                          label:
                                              _vm.savedPlansList[index].num1),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        NumberCard(
                                            label:
                                                _vm.savedPlansList[index].num2),
                                        NumberCard(
                                            label:
                                                _vm.savedPlansList[index].num3),
                                      ],
                                    ),
                                    if (!_vm
                                        .savedPlansList[index].isUpwardPivoted)
                                      NumberCard(
                                          label:
                                              _vm.savedPlansList[index].num1),
                                  ],
                                  // Ball Spacing
                                  if (_vm.savedPlansList[index].planName ==
                                      'BALL SPACING') ...[
                                    if (_vm.savedPlansList[index].planType ==
                                        'VERTICAL') ...[
                                      WCard(
                                        label: _vm
                                            .savedPlansList[index].winningNum1,
                                        borderColor: Colors.transparent,
                                      ),
                                      WCard(
                                        label: _vm
                                            .savedPlansList[index].winningNum2,
                                        borderColor: Colors.transparent,
                                      ),
                                    ],
                                    if (_vm.savedPlansList[index].planType ==
                                        'HORIZONTAL')
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          WCard(
                                            label: _vm.savedPlansList[index]
                                                .winningNum1,
                                            borderColor: Colors.transparent,
                                          ),
                                          WCard(
                                            label: _vm.savedPlansList[index]
                                                .winningNum2,
                                            borderColor: Colors.transparent,
                                          ),
                                        ],
                                      ),
                                    NumberCardWithTitle(
                                        num: _vm.savedPlansList[index].num1,
                                        title: "SPACING")
                                  ],
                                  // Event Summation
                                  if (_vm.savedPlansList[index].planName ==
                                      'EVENT SUMMATION') ...[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        WCard(
                                          label: _vm.savedPlansList[index]
                                              .winningNum1,
                                          borderColor: Colors.transparent,
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        WCard(
                                          label: _vm.savedPlansList[index]
                                              .winningNum2,
                                          borderColor: Colors.transparent,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        NumberCardWithTitle(
                                            num: _vm.savedPlansList[index].num1,
                                            title: "SUM"),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        NumberCardWithTitle(
                                            num: _vm.savedPlansList[index].num2,
                                            title: "CONSTANT"),
                                      ],
                                    )
                                  ],
                                  // Polar Addition
                                  if (_vm.savedPlansList[index].planName ==
                                      'POLAR ADDITION') ...[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        WCard(
                                          label: _vm.savedPlansList[index]
                                              .winningNum1,
                                          borderColor: Colors.transparent,
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        WCard(
                                          label: _vm.savedPlansList[index]
                                              .winningNum2,
                                          borderColor: Colors.transparent,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        NumberCardWithTitle(
                                            num: _vm.savedPlansList[index].num1,
                                            title: "ADDITION"),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        NumberCardWithTitle(
                                            num: _vm.savedPlansList[index].num2,
                                            title: "CONSTANT"),
                                      ],
                                    )
                                  ],
                                  // Sequential Number
                                  if (_vm.savedPlansList[index].planName ==
                                      'SEQUENTIAL NUMBER') ...[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        WCard(
                                          label: _vm.savedPlansList[index]
                                              .winningNum1,
                                          borderColor: Colors.transparent,
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        WCard(
                                          label: _vm.savedPlansList[index]
                                              .winningNum2,
                                          borderColor: Colors.transparent,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        NumberCardWithTitle(
                                            num: _vm.savedPlansList[index].num1,
                                            title: "V-CODE"),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        NumberCardWithTitle(
                                            num: _vm.savedPlansList[index].num2,
                                            title: "CONSTANT"),
                                      ],
                                    )
                                  ],
                                  // Progressive Number
                                  if (_vm.savedPlansList[index].planName ==
                                      'PROGRESSIVE NUMBER') ...[
                                    WCard(
                                      label:
                                          _vm.savedPlansList[index].winningNum1,
                                      borderColor: Colors.transparent,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.sm),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            CupertinoIcons.minus,
                                            size: 15.sp,
                                          ),
                                          Icon(
                                            CupertinoIcons.minus,
                                            size: 15.sp,
                                          ),
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                          Icon(
                                            CupertinoIcons.add,
                                            size: 15.sp,
                                          ),
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                          Icon(
                                            CupertinoIcons.minus,
                                            size: 15.sp,
                                          ),
                                          Icon(
                                            CupertinoIcons.minus,
                                            size: 15.sp,
                                          ),
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                          Icon(
                                            CupertinoIcons.add,
                                            size: 15.sp,
                                          ),
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                          if (_vm.savedPlansList[index]
                                                  .planType ==
                                              "VERTICAL")
                                            Icon(
                                              CupertinoIcons.add,
                                              size: 15.sp,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.sm),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            CupertinoIcons.minus,
                                            size: 15.sp,
                                          ),
                                          Icon(
                                            CupertinoIcons.minus,
                                            size: 15.sp,
                                          ),
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                          Icon(
                                            CupertinoIcons.add,
                                            size: 15.sp,
                                          ),
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                          Icon(
                                            CupertinoIcons.minus,
                                            size: 15.sp,
                                          ),
                                          Icon(
                                            CupertinoIcons.minus,
                                            size: 15.sp,
                                          ),
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                          Icon(
                                            CupertinoIcons.add,
                                            size: 15.sp,
                                          ),
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                          if (_vm.savedPlansList[index]
                                                  .planType ==
                                              "VERTICAL")
                                            Icon(
                                              CupertinoIcons.add,
                                              size: 15.sp,
                                            ),
                                        ],
                                      ),
                                    ),
                                    CustomContainer(
                                      margin: EdgeInsets.only(
                                          left: 8.w, right: 8.w),
                                      height: 35.h,
                                      title: "SIGN CODE",
                                      bgColor: AppColors.blueColor,
                                      fgColor: AppColors.whiteColor,
                                      fontsize: 10.sp,
                                      fontweight: FontWeight.w900,
                                      align: TextAlign.center,
                                      border: Border.all(
                                        color: AppColors.lightBlueColor,
                                        width: 2.0,
                                      ),
                                    ),
                                  ],

                                  // Constant Position
                                  if (_vm.savedPlansList[index].planName ==
                                      'CONSTANT POSITION') ...[
                                    WCard(
                                      label:
                                          _vm.savedPlansList[index].winningNum1,
                                      borderColor: Colors.transparent,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    NumberCard(
                                      label: _vm.savedPlansList[index].num1,
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Utils.width(context) * 0.25,
                            height: 140.h,
                            child: CustomChildContainer(
                              bgColor: AppColors.whiteColor.withOpacity(0.1),
                              child: Center(
                                  child: GestureDetector(
                                      onTap: () => _vm.viewDetailsTap(context,
                                          lotteryGameName: _vm
                                              .savedPlansList[index]
                                              .lotteryGameName,
                                          date: _vm.savedPlansList[index].date,
                                          pType: _vm
                                              .savedPlansList[index].planType,
                                          pName: _vm
                                              .savedPlansList[index].planName,
                                          winNum1: _vm.savedPlansList[index]
                                              .winningNum1,
                                          winNum2: _vm.savedPlansList[index]
                                              .winningNum2,
                                          isRightDiagonal: _vm
                                              .savedPlansList[index]
                                              .isRightDiagonal,
                                          isUpwardPivoted: _vm
                                              .savedPlansList[index]
                                              .isUpwardPivoted,
                                          n1: _vm.savedPlansList[index].num1,
                                          n2: _vm.savedPlansList[index].num2,
                                          n3: _vm.savedPlansList[index].num3),
                                      child: WCard(
                                          btnWidth: 80.w,
                                          btnHeight: 45.h,
                                          bgColor: AppColors.greyColor
                                              .withOpacity(0.3),
                                          textColor: AppColors.blackColor,
                                          borderColor: AppColors.blackColor,
                                          label: ' View \n Detail     '))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )),
          ],
        );
      }),
    );
  }
}
