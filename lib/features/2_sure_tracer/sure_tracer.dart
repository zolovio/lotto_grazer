import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lotto_grazer/features/2_sure_tracer/sure_tracer_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/res/components/number_card.dart';
import 'package:lotto_grazer/res/components/w_card.dart';
import 'package:lotto_grazer/utils/utils.dart';

class SureTracerScreen extends StatefulWidget {
  const SureTracerScreen({super.key});

  @override
  State<SureTracerScreen> createState() => _SureTracerScreenState();
}

class _SureTracerScreenState extends State<SureTracerScreen> {
  final ScrollController _controller = ScrollController();
  void animateToIndex(int i) {
    _controller.animateTo(i * 100.w,
        duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final vm = ref.watch(sureTracerVmProvider);

      return SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(Utils.width(context) * 1, 60.h),
            child: const CustomAppBar(),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                CustomContainer(
                  width: Utils.width(context) * 1,
                  height: 40.h,
                  title: '2 SURE TRACER',
                  bgColor: AppColors.blackColor,
                  fgColor: AppColors.whiteColor,
                  fontsize: 17.sp,
                  fontweight: FontWeight.w700,
                  border: Border.all(
                    width: 0.0,
                    color: AppColors.blackColor,
                  ),
                ),
                CustomChildContainer(
                  height: 50.h,
                  margin: EdgeInsets.only(top: 5.h),
                  bgColor: AppColors.greyColor.withOpacity(0.5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            if (vm.selectedIndex <= vm.sureTracerList.length &&
                                vm.selectedIndex > 0) {
                              vm.setSelectedIndex(vm.selectedIndex - 1);
                              animateToIndex(vm.selectedIndex);
                            }
                          },
                          child: Icon(
                            Icons.arrow_left,
                            size: 60.sp,
                            color: AppColors.blackColor,
                          )),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            controller: _controller,
                            itemCount: vm.sureTracerList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 8.h),
                                child: GestureDetector(
                                  onTap: () => vm.setSelectedIndex(index),
                                  child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: (vm.selectedIndex == index)
                                            ? const Color.fromARGB(
                                                    255, 153, 219, 109)
                                                .withOpacity(0.5)
                                            : AppColors.whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border: Border.all(
                                            color: AppColors.blackColor,
                                            width: 1.5.w),
                                      ),
                                      padding: EdgeInsets.all(10.sm),
                                      child: CustomText(
                                        title: '${vm.sureTracerList[index]}',
                                        align: TextAlign.center,
                                        fontsize: 14.sp,
                                        fontweight: FontWeight.w800,
                                      )),
                                ),
                              );
                            }),
                      ),
                      GestureDetector(
                          onTap: () {
                            if (vm.selectedIndex <
                                    vm.sureTracerList.length - 1 &&
                                vm.selectedIndex >= 0) {
                              vm.setSelectedIndex(vm.selectedIndex + 1);
                              animateToIndex(vm.selectedIndex);
                            }
                          },
                          child: Icon(
                            Icons.arrow_right,
                            size: 60.sp,
                            color: AppColors.blackColor,
                          )),
                    ],
                  ),
                ),
                CustomContainer(
                  margin: EdgeInsets.only(bottom: 10.h),
                  fontsize: 16.sp,
                  fontweight: FontWeight.w700,
                  fgColor: AppColors.whiteColor,
                  title: DateFormat('dd, MMM yyyy')
                      .format(DateTime.now())
                      .toString(),
                  bgColor: AppColors.blueColor,
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: vm.view1stCard
                          ? EdgeInsets.all(5.sm)
                          : EdgeInsets.all(15.sm),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color: AppColors.blackColor, width: 2.w),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: vm.view1stCard
                          ? Column(children: [
                              CachedNetworkImage(
                                imageUrl:
                                    'https://cdn-icons-png.flaticon.com/512/5052/5052170.png',
                                height: 60.h,
                                width: 60.w,
                                placeholder: (context, url) => Icon(
                                  Icons.image,
                                  size: 25.sp,
                                  color: AppColors.greyColor,
                                ),
                                errorWidget: (context, url, error) => Icon(
                                  Icons.image,
                                  size: 25.sp,
                                  color: AppColors.greyColor,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              CustomChildContainer(
                                width: 200.w,
                                bgColor:
                                    const Color.fromARGB(255, 245, 227, 156),
                                border: Border.all(
                                    color: AppColors.blackColor, width: 2.5.w),
                                padding: EdgeInsets.all(5.sm),
                                child: Column(
                                  children: [
                                    CustomContainer(
                                        bgColor: const Color.fromARGB(
                                            255, 245, 227, 156),
                                        border: Border.all(
                                            color: AppColors.blackColor,
                                            style: BorderStyle.solid,
                                            width: 2.w),
                                        title: 'AL | OMEGA LOTTO',
                                        fontsize: 12.sp,
                                        fontweight: FontWeight.w700),
                                    Table(
                                      columnWidths: {
                                        0: FlexColumnWidth(1.5.w),
                                        1: FlexColumnWidth(3.w),
                                        2: FlexColumnWidth(1.w),
                                        3: FlexColumnWidth(1.w),
                                        4: FlexColumnWidth(1.w),
                                        5: FlexColumnWidth(1.w),
                                        6: FlexColumnWidth(1.w),
                                      },
                                      border: TableBorder.all(
                                        color: AppColors.blackColor,
                                        style: BorderStyle.solid,
                                        width: 2.w,
                                      ),
                                      children: [
                                        TableRow(
                                            decoration: const BoxDecoration(
                                              color: AppColors.whiteColor,
                                            ),
                                            children: [
                                              CustomContainer(
                                                  title: 'DRAW',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                              CustomContainer(
                                                  title: 'DATE',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                              CustomContainer(
                                                  title: 'W1',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                              CustomContainer(
                                                  title: 'W2',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                              CustomContainer(
                                                  title: 'W3',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                              CustomContainer(
                                                  title: 'W4',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                              CustomContainer(
                                                  title: 'W5',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                            ]),
                                        ...List.generate(
                                            vm.table1.length,
                                            (i) => TableRow(
                                                    decoration:
                                                        const BoxDecoration(
                                                      color:
                                                          AppColors.whiteColor,
                                                    ),
                                                    children: [
                                                      CustomContainer(
                                                        title: vm.table1[i]
                                                                ['draw']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5.sm,
                                                                bottom: 5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                      CustomContainer(
                                                        title: vm.table1[i]
                                                                ['date']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding: EdgeInsets.all(
                                                            5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                      CustomContainer(
                                                        title: vm.table1[i]
                                                                ['w1']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding: EdgeInsets.all(
                                                            5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                      CustomContainer(
                                                        title: vm.table1[i]
                                                                ['w2']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding: EdgeInsets.all(
                                                            5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                      CustomContainer(
                                                        title: vm.table1[i]
                                                                ['w3']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding: EdgeInsets.all(
                                                            5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                      CustomContainer(
                                                        title: vm.table1[i]
                                                                ['w4']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding: EdgeInsets.all(
                                                            5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                      CustomContainer(
                                                        title: vm.table1[i]
                                                                ['w5']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding: EdgeInsets.all(
                                                            5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                    ]))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ])
                          : Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl:
                                      'https://cdn-icons-png.flaticon.com/512/5052/5052170.png',
                                  height: 50.h,
                                  width: 50.w,
                                  placeholder: (context, url) => Icon(
                                    Icons.image,
                                    size: 25.sp,
                                    color: AppColors.greyColor,
                                  ),
                                  errorWidget: (context, url, error) => Icon(
                                    Icons.image,
                                    size: 25.sp,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  children: [
                                    CustomChildContainer(
                                      height: 60.h,
                                      width: 110.w,
                                      bgColor: Colors.transparent,
                                      border: Border.all(
                                          color: AppColors.blueColor,
                                          width: 2.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.sm),
                                            child: CustomText(
                                              title: 'LOADING',
                                              fontsize: 16.sp,
                                              fontweight: FontWeight.w700,
                                            ),
                                          ),
                                          Container(
                                            height: 5.h,
                                            decoration: BoxDecoration(
                                                color: AppColors.blueColor,
                                                border: Border.all(
                                                    color: AppColors
                                                        .lightBlueColor,
                                                    width: 1.w)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(4.sm),
                                            child: CustomText(
                                              title:
                                                  '${vm.startHr}:${vm.startMin}:${vm.startSec}', //its dummy data, replaced with data from api
                                              fontsize: 14.sp,
                                              fontcolor: AppColors.redColor,
                                              fontweight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (!vm.isLoading)
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                    if (!vm.isLoading)
                                      GestureDetector(
                                          onTap: () {
                                            vm.setView1stCard(true);
                                          },
                                          child: WCard(
                                              label: 'VIEW',
                                              textColor: AppColors.blackColor,
                                              borderColor: AppColors.blackColor,
                                              bgColor: AppColors.greyColor
                                                  .withOpacity(0.5)))
                                  ],
                                )
                              ],
                            ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      padding: vm.view2ndCard
                          ? EdgeInsets.all(5.sm)
                          : EdgeInsets.all(15.sm),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color: AppColors.blackColor, width: 2.w),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: vm.view2ndCard
                          ? Column(children: [
                              CachedNetworkImage(
                                imageUrl:
                                    'https://cdn-icons-png.flaticon.com/512/5052/5052170.png',
                                height: 60.h,
                                width: 60.w,
                                placeholder: (context, url) => Icon(
                                  Icons.image,
                                  size: 25.sp,
                                  color: AppColors.greyColor,
                                ),
                                errorWidget: (context, url, error) => Icon(
                                  Icons.image,
                                  size: 25.sp,
                                  color: AppColors.greyColor,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              CustomChildContainer(
                                width: 200.w,
                                bgColor:
                                    const Color.fromARGB(255, 160, 198, 223),
                                border: Border.all(
                                    color: AppColors.blackColor, width: 2.5.w),
                                padding: EdgeInsets.all(5.sm),
                                child: Column(
                                  children: [
                                    CustomContainer(
                                        bgColor: const Color.fromARGB(
                                            255, 160, 198, 223),
                                        border: Border.all(
                                          color: AppColors.blackColor,
                                          style: BorderStyle.solid,
                                        ),
                                        title: 'GC | STAR LOTTO',
                                        fontsize: 12.sp,
                                        fontweight: FontWeight.w700),
                                    Table(
                                      columnWidths: {
                                        0: FlexColumnWidth(1.w),
                                        1: FlexColumnWidth(1.w),
                                        2: FlexColumnWidth(1.w),
                                        3: FlexColumnWidth(1.w),
                                        4: FlexColumnWidth(1.w),
                                        5: FlexColumnWidth(3.w),
                                        6: FlexColumnWidth(1.5.w),
                                      },
                                      border: TableBorder.all(
                                        color: AppColors.blackColor,
                                        style: BorderStyle.solid,
                                        width: 2.w,
                                      ),
                                      children: [
                                        TableRow(
                                            decoration: const BoxDecoration(
                                              color: AppColors.whiteColor,
                                            ),
                                            children: [
                                              CustomContainer(
                                                  title: 'W1',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                              CustomContainer(
                                                  title: 'W2',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                              CustomContainer(
                                                  title: 'W3',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                              CustomContainer(
                                                  title: 'W4',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                              CustomContainer(
                                                  title: 'W5',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                              CustomContainer(
                                                  title: 'DATE',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                              CustomContainer(
                                                  title: 'DRAW',
                                                  align: TextAlign.center,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 5.h,
                                                  ),
                                                  bgColor: AppColors.whiteColor
                                                      .withOpacity(0.1),
                                                  fgColor: AppColors.blackColor,
                                                  fontweight: FontWeight.w700,
                                                  fontsize: 8.sp,
                                                  underline: false),
                                            ]),
                                        ...List.generate(
                                            vm.table2.length,
                                            (i) => TableRow(
                                                    decoration:
                                                        const BoxDecoration(
                                                      color:
                                                          AppColors.whiteColor,
                                                    ),
                                                    children: [
                                                      CustomContainer(
                                                        title: vm.table2[i]
                                                                ['w1']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding: EdgeInsets.all(
                                                            5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                      CustomContainer(
                                                        title: vm.table2[i]
                                                                ['w2']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding: EdgeInsets.all(
                                                            5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                      CustomContainer(
                                                        title: vm.table2[i]
                                                                ['w3']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding: EdgeInsets.all(
                                                            5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                      CustomContainer(
                                                        title: vm.table2[i]
                                                                ['w4']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding: EdgeInsets.all(
                                                            5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                      CustomContainer(
                                                        title: vm.table2[i]
                                                                ['w5']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding: EdgeInsets.all(
                                                            5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                      CustomContainer(
                                                        title: vm.table2[i]
                                                                ['date']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding: EdgeInsets.all(
                                                            5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                      CustomContainer(
                                                        title: vm.table2[i]
                                                                ['draw']
                                                            .toString(),
                                                        align: TextAlign.center,
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5.sm,
                                                                bottom: 5.sm),
                                                        bgColor: AppColors
                                                            .whiteColor
                                                            .withOpacity(0.1),
                                                        fgColor: AppColors
                                                            .blackColor,
                                                        fontweight:
                                                            FontWeight.w700,
                                                        fontsize: 6.sp,
                                                        underline: false,
                                                      ),
                                                    ]))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ])
                          : Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl:
                                      'https://cdn-icons-png.flaticon.com/512/5052/5052170.png',
                                  height: 50.h,
                                  width: 50.w,
                                  placeholder: (context, url) => Icon(
                                    Icons.image,
                                    size: 25.sp,
                                    color: AppColors.greyColor,
                                  ),
                                  errorWidget: (context, url, error) => Icon(
                                    Icons.image,
                                    size: 25.sp,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  children: [
                                    CustomChildContainer(
                                      height: 60.h,
                                      width: 110.w,
                                      bgColor: Colors.transparent,
                                      border: Border.all(
                                          color: AppColors.blueColor,
                                          width: 2.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.sm),
                                            child: CustomText(
                                              title: 'LOADING',
                                              fontsize: 16.sp,
                                              fontweight: FontWeight.w700,
                                            ),
                                          ),
                                          Container(
                                            height: 5.h,
                                            decoration: BoxDecoration(
                                                color: AppColors.blueColor,
                                                border: Border.all(
                                                    color: AppColors
                                                        .lightBlueColor,
                                                    width: 1.w)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(4.sm),
                                            child: CustomText(
                                              title:
                                                  '${vm.startHr}:${vm.startMin}:${vm.startSec}', //its dummy data, replaced with data from api
                                              fontsize: 14.sp,
                                              fontcolor: AppColors.redColor,
                                              fontweight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (!vm.isLoading)
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                    if (!vm.isLoading)
                                      GestureDetector(
                                          onTap: () {
                                            vm.setView2ndCard(true);
                                          },
                                          child: WCard(
                                              label: 'VIEW',
                                              textColor: AppColors.blackColor,
                                              borderColor: AppColors.blackColor,
                                              bgColor: AppColors.greyColor
                                                  .withOpacity(0.5)))
                                  ],
                                )
                              ],
                            ),
                    )
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Row(
                    children: [
                      SizedBox(
                          width: 150.w,
                          child: Column(
                            children: [
                              CustomContainer(
                                height: 60.h,
                                title: '2 SURE',
                                fontsize: 16.sp,
                                fontweight: FontWeight.w900,
                                bgColor: AppColors.blackColor,
                                fgColor: AppColors.whiteColor,
                                border: Border.all(
                                    color: AppColors.greyColor, width: 2.w),
                              ),
                              CustomChildContainer(
                                bgColor: AppColors.greyColor.withOpacity(0.5),
                                height: 100.h,
                                border: Border(
                                  left: BorderSide(
                                      color: AppColors.blackColor, width: 2.w),
                                  bottom: BorderSide(
                                      color: AppColors.blackColor, width: 2.w),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        WCard(
                                          btnWidth: 60.w,
                                          label: 'Banker\n1',
                                          bgColor: AppColors.greenColor,
                                          textColor: AppColors.whiteColor,
                                          borderColor: AppColors.greyColor,
                                        ),
                                        GradientNumberCard(
                                          width: 55.w,
                                          label: '12',
                                          isTransparent: false,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        WCard(
                                          btnWidth: 60.w,
                                          label: 'Banker\n2',
                                          bgColor: AppColors.greenColor,
                                          textColor: AppColors.whiteColor,
                                          borderColor: AppColors.greyColor,
                                        ),
                                        GradientNumberCard(
                                          width: 55.w,
                                          label: '45',
                                          isTransparent: false,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                          width: 300.w,
                          child: Column(children: [
                            SizedBox(
                              height: 60.h,
                              child: Column(
                                children: [
                                  CustomContainer(
                                    height: 30.h,
                                    title: 'STATISTICS',
                                    fontsize: 14.sp,
                                    fontweight: FontWeight.w900,
                                    bgColor: AppColors.blackColor,
                                    fgColor: AppColors.whiteColor,
                                    border: Border.all(
                                        color: AppColors.greyColor, width: 2.w),
                                  ),
                                  Row(
                                    children: [
                                      CustomContainer(
                                        height: 30.h,
                                        width: 60.w,
                                        title: 'RANGE',
                                        fontsize: 11.sp,
                                        fontweight: FontWeight.w700,
                                        bgColor: AppColors.blueColor
                                            .withOpacity(0.2),
                                        fgColor: AppColors.redColor,
                                        border: Border(
                                          left: BorderSide(
                                              color: AppColors.greyColor,
                                              width: 2.w),
                                          right: BorderSide(
                                              color: AppColors.greyColor,
                                              width: 1.w),
                                          bottom: BorderSide(
                                              color: AppColors.greyColor,
                                              width: 2.w),
                                        ),
                                      ),
                                      CustomContainer(
                                        height: 30.h,
                                        title: 'ODD/EVEN',
                                        width: 80.w,
                                        fontsize: 11.sp,
                                        fontweight: FontWeight.w700,
                                        bgColor: AppColors.blueColor
                                            .withOpacity(0.2),
                                        fgColor: AppColors.redColor,
                                        border: Border(
                                          right: BorderSide(
                                              color: AppColors.greyColor,
                                              width: 1.w),
                                          bottom: BorderSide(
                                              color: AppColors.greyColor,
                                              width: 2.w),
                                        ),
                                      ),
                                      CustomContainer(
                                        height: 30.h,
                                        width: 160.w,
                                        title: 'NUMBERS',
                                        fontsize: 11.sp,
                                        fontweight: FontWeight.w700,
                                        bgColor: AppColors.blueColor
                                            .withOpacity(0.2),
                                        fgColor: AppColors.redColor,
                                        border: Border(
                                          right: BorderSide(
                                              color: AppColors.greyColor,
                                              width: 2.w),
                                          bottom: BorderSide(
                                              color: AppColors.greyColor,
                                              width: 2.w),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            CustomChildContainer(
                              bgColor: AppColors.whiteColor,
                              height: 100.h,
                              border: Border(
                                right: BorderSide(
                                    color: AppColors.blackColor, width: 2.w),
                                bottom: BorderSide(
                                    color: AppColors.blackColor, width: 2.w),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(children: [
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    GradientNumberCard(
                                      width: 55.w,
                                      label: '8-17',
                                    ),
                                    GradientNumberCard(
                                      width: 65.w,
                                      label: 'EVEN',
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    SizedBox(
                                      width: 150.w,
                                      child: Row(
                                        children: vm.evenList,
                                      ),
                                    ),
                                  ]),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(children: [
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    GradientNumberCard(
                                      width: 55.w,
                                      label: '41-50',
                                    ),
                                    GradientNumberCard(
                                      width: 65.w,
                                      label: 'ODD',
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    SizedBox(
                                      width: 150.w,
                                      child: Row(
                                        children: vm.oddList,
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          ]))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.blackColor,
                    border: Border.all(
                      color: AppColors.blackColor,
                      width: 2.w,
                    ),
                  ),
                  height: 35.h,
                  width: 250.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: CustomText(
                          title: "GAME CLOSES IN",
                          fontcolor: AppColors.whiteColor,
                          fontweight: FontWeight.w700,
                          fontsize: 12.sp,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      CustomContainer(
                          width: 110.w,
                          height: 32.h,
                          fgColor: AppColors.redColor,
                          align: TextAlign.center,
                          fontweight: FontWeight.w700,
                          fontsize: 12.sp,
                          //Here can be used time from api
                          title: '${vm.startHr}:${vm.startMin}:${vm.startSec}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
