import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/lotto_tools/classification_chart/classification_chart_vm.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/colors.dart';

class ClassificationChartScreen extends StatefulWidget {
  const ClassificationChartScreen({super.key});

  @override
  State<ClassificationChartScreen> createState() =>
      _ClassificationChartScreenState();
}

class _ClassificationChartScreenState extends State<ClassificationChartScreen> {
  Widget verticalDivider = const VerticalDivider(
    color: AppColors.blackColor,
    thickness: 1,
  );

  Widget customRichText(shortName, fullName) => SizedBox(
      width: 135.w,
      child: RichText(
          text: TextSpan(
              text: shortName,
              style: TextStyle(
                color: AppColors.redColor,
                fontWeight: FontWeight.w800,
                fontSize: 15.sp,
              ),
              children: [
            const TextSpan(
                text: ' = ', style: TextStyle(color: AppColors.blackColor)),
            TextSpan(
                text: fullName,
                style: const TextStyle(color: AppColors.blackColor)),
          ])));

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final vm = ref.watch(classificationChartVmProvider);
      return Expanded(
        child: Column(
          children: [
            CustomChildContainer(
                height: 85.h,
                border: Border(
                  right: BorderSide(
                    width: 3.w,
                    color: AppColors.blackColor,
                  ),
                  left: BorderSide(
                    width: 3.w,
                    color: AppColors.blackColor,
                  ),
                  bottom: BorderSide(
                    width: 3.w,
                    color: AppColors.blackColor,
                  ),
                ),
                padding: EdgeInsets.all(10.sm),
                bgColor: AppColors.whiteColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        customRichText('CT', 'COUNTER'),
                        customRichText('BN', 'BONANZA'),
                        customRichText('SK', 'STRING KEY')
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        customRichText('TN', 'TURNING'),
                        customRichText('MT', 'MALTA'),
                        customRichText('PT', 'PARTNER')
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        customRichText('EQ', 'EQUIVALENT'),
                        customRichText('SH', 'SHADOW'),
                        customRichText('CD', 'CODE')
                      ],
                    ),
                  ],
                )),
            Expanded(
              child: ListView(
                children: [
                  CustomChildContainer(
                    bgColor: AppColors.whiteColor,
                    border:
                        Border.all(color: AppColors.blueColor, width: 2.5.w),
                    padding: EdgeInsets.all(5.sm),
                    margin: EdgeInsets.all(10.sm),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomChildContainer(
                          border: Border(
                            right: BorderSide(
                              width: 1.5.w,
                              color: AppColors.blackColor,
                            ),
                            left: BorderSide(
                              width: 1.5.w,
                              color: AppColors.blackColor,
                            ),
                            top: BorderSide(
                              width: 1.5.w,
                              color: AppColors.blackColor,
                            ),
                          ),
                          padding: EdgeInsets.all(10.sm),
                          bgColor: AppColors.whiteColor,
                          child: CustomText(
                            title: '90 PARTS AND THEIR COUNTERPART',
                            fontsize: 16.sp,
                            fontweight: FontWeight.w700,
                          ),
                        ),
                        Theme(
                          data: Theme.of(context).copyWith(
                            cardTheme: const CardTheme(
                                margin: EdgeInsets.all(0.0),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: AppColors.blackColor))),
                            dividerColor: AppColors.blackColor,
                          ),
                          child: PaginatedDataTable(
                            headingRowHeight: 25.h,
                            columnSpacing: 0.0,
                            horizontalMargin: 10.w,
                            dataRowHeight: 25.h,
                            columns: [
                              DataColumn(
                                  label: CustomText(
                                title: "NUMBER",
                                fontsize: 13.sp,
                                fontweight: FontWeight.w800,
                              )),
                              DataColumn(label: verticalDivider),
                              DataColumn(
                                  label: CustomText(
                                title: "CT",
                                fontsize: 13.sp,
                                fontweight: FontWeight.w800,
                              )),
                              DataColumn(label: verticalDivider),
                              DataColumn(
                                  label: CustomText(
                                title: "BN",
                                fontsize: 13.sp,
                                fontweight: FontWeight.w800,
                              )),
                              DataColumn(label: verticalDivider),
                              DataColumn(
                                  label: CustomText(
                                title: "SK",
                                fontsize: 13.sp,
                                fontweight: FontWeight.w800,
                              )),
                              DataColumn(label: verticalDivider),
                              DataColumn(
                                  label: CustomText(
                                title: "TN",
                                fontsize: 13.sp,
                                fontweight: FontWeight.w800,
                              )),
                              DataColumn(label: verticalDivider),
                              DataColumn(
                                  label: CustomText(
                                title: "MT",
                                fontsize: 13.sp,
                                fontweight: FontWeight.w800,
                              )),
                              DataColumn(label: verticalDivider),
                              DataColumn(
                                  label: CustomText(
                                title: "PT",
                                fontsize: 13.sp,
                                fontweight: FontWeight.w800,
                              )),
                              DataColumn(label: verticalDivider),
                              DataColumn(
                                  label: CustomText(
                                title: "EQ",
                                fontsize: 13.sp,
                                fontweight: FontWeight.w800,
                              )),
                              DataColumn(label: verticalDivider),
                              DataColumn(
                                  label: CustomText(
                                title: "SH",
                                fontsize: 13.sp,
                                fontweight: FontWeight.w800,
                              )),
                              DataColumn(label: verticalDivider),
                              DataColumn(
                                  label: CustomText(
                                title: "CD",
                                fontsize: 13.sp,
                                fontweight: FontWeight.w800,
                              )),
                            ],
                            source: vm.myData,
                            rowsPerPage: 45,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
