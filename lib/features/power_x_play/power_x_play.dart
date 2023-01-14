import 'package:cached_network_image/cached_network_image.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lotto_grazer/features/power_x_play/how_to_play.dart';
import 'package:lotto_grazer/features/power_x_play/power_x_play_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:lotto_grazer/utils/utils.dart';

class PowerXplayScreen extends StatefulWidget {
  const PowerXplayScreen({super.key});

  @override
  State<PowerXplayScreen> createState() => _PowerXplayScreenState();
}

class _PowerXplayScreenState extends State<PowerXplayScreen> {
  final ScrollController _controller = ScrollController();
  void animateToIndex(int i) {
    _controller.animateTo(i * 100.w,
        duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final vm = ref.watch(powerXplayVmProvider);
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                CustomChildContainer(
                  width: Utils.width(context) * 1,
                  height: 75.h,
                  bgColor: AppColors.blackColor,
                  border: Border.all(
                    width: 1.0,
                    color: AppColors.blackColor,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomChildContainer(
                            bgColor: Colors.transparent,
                            border: Border.all(color: AppColors.blueColor),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 10.h),
                            margin: EdgeInsets.symmetric(vertical: 8.h),
                            child: RichText(
                                textAlign: TextAlign.center,
                                softWrap: true,
                                text: TextSpan(
                                    text: "POWER ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.whiteColor,
                                      fontSize: 15.sp,
                                      wordSpacing: 0,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "X",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.redColor,
                                          fontSize: 20.sp,
                                          wordSpacing: 0,
                                        ),
                                      ),
                                      const TextSpan(text: ' PLAY'),
                                    ])),
                          ),
                          CustomContainer(
                            height: 14.h,
                            align: TextAlign.center,
                            bgColor: AppColors.blackColor,
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            border: Border.all(color: AppColors.blueColor),
                            title: 'ONE BANKER EARNER',
                            fgColor: AppColors.whiteColor,
                            fontsize: 7.sp,
                            fontweight: FontWeight.w600,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomChildContainer(
                              width: 150.w,
                              bgColor: AppColors.blackColor,
                              border: Border.all(color: AppColors.blueColor),
                              padding: EdgeInsets.all(2.sm),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        title: 'BALANCE',
                                        fontsize: 14.sp,
                                        fontcolor: AppColors.whiteColor,
                                        fontweight: FontWeight.w600,
                                      ),
                                      CustomContainer(
                                        width: 65.w,
                                        align: TextAlign.center,
                                        bgColor: AppColors.blackColor,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.w, vertical: 2.h),
                                        border: Border.all(
                                            color: AppColors.blueColor),
                                        title: 'N 5000',
                                        fgColor: AppColors.whiteColor,
                                        fontsize: 8.sp,
                                        fontweight: FontWeight.w600,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        title: 'USER ID',
                                        fontsize: 14.sp,
                                        fontcolor: AppColors.whiteColor,
                                        fontweight: FontWeight.w600,
                                      ),
                                      CustomContainer(
                                        width: 65.w,
                                        align: TextAlign.center,
                                        bgColor: AppColors.blackColor,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.w, vertical: 2.h),
                                        border: Border.all(
                                            color: AppColors.blueColor),
                                        title: '0245',
                                        fgColor: AppColors.whiteColor,
                                        fontsize: 8.sp,
                                        fontweight: FontWeight.w700,
                                      )
                                    ],
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 2.h,
                          ),
                          CustomChildContainer(
                            width: 150.w,
                            bgColor: AppColors.blackColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomContainer(
                                  align: TextAlign.center,
                                  bgColor: AppColors.blackColor,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.w, vertical: 2.h),
                                  border:
                                      Border.all(color: AppColors.blueColor),
                                  title: 'DEPOSIT',
                                  fgColor: AppColors.whiteColor,
                                  fontsize: 10.sp,
                                  fontweight: FontWeight.w600,
                                ),
                                CustomContainer(
                                  align: TextAlign.center,
                                  bgColor: AppColors.blackColor,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.w, vertical: 2.h),
                                  border:
                                      Border.all(color: AppColors.blueColor),
                                  title: 'WITHDRAW',
                                  fgColor: AppColors.whiteColor,
                                  fontsize: 10.sp,
                                  fontweight: FontWeight.w600,
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                CustomContainer(
                  fontsize: 18.sp,
                  fontweight: FontWeight.w700,
                  fgColor: AppColors.blackColor,
                  title: DateFormat('EEEE dd MMMM yyyy')
                      .format(DateTime.now())
                      .toString()
                      .toUpperCase(),
                  bgColor: AppColors.blueColor,
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                ),
                CustomChildContainer(
                  height: 50.h,
                  bgColor: AppColors.greyColor.withOpacity(0.2),
                  border: const Border(
                    top: BorderSide(
                      color: AppColors.blackColor,
                    ),
                    bottom: BorderSide(
                      color: AppColors.blackColor,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(vm.lotteryTypeList.length, (index) {
                        return GestureDetector(
                          onTap: () => vm.setSelectedIndex(index),
                          child: Container(
                              height: 35.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: (vm.selectedIndex == index)
                                    ? AppColors.whiteColor
                                    : AppColors.greyColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                    color: AppColors.blackColor, width: 1.5.w),
                              ),
                              padding: EdgeInsets.all(5.sm),
                              child: CustomText(
                                title: '${vm.lotteryTypeList[index]}',
                                align: TextAlign.center,
                                fontsize: 14.sp,
                                fontweight: FontWeight.w800,
                              )),
                        );
                      })
                    ],
                  ),
                ),
                CustomChildContainer(
                  height: 60.h,
                  bgColor: AppColors.greyColor.withOpacity(0.2),
                  border: const Border(
                    top: BorderSide(
                      color: AppColors.blackColor,
                    ),
                    bottom: BorderSide(
                      color: AppColors.blackColor,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomContainer(
                            width: 75.w,
                            bgColor: AppColors.blackColor,
                            title: 'GAME',
                            fontsize: 10.sp,
                            fontweight: FontWeight.w600,
                            fgColor: AppColors.whiteColor,
                            padding: EdgeInsets.all(8.sm),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          CustomContainer(
                            width: 75.w,
                            bgColor: AppColors.blackColor,
                            title: 'CLOSE TIME',
                            fontsize: 10.sp,
                            fontweight: FontWeight.w600,
                            fgColor: AppColors.whiteColor,
                            padding: EdgeInsets.all(8.sm),
                          ),
                        ],
                      ),
                      ...List.generate(vm.gamesList[vm.selectedIndex].length,
                          (index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => vm.setSelectedGameIndex(index),
                              child: Container(
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                    color: (vm.selectedGameIndex == index)
                                        ? const Color.fromARGB(
                                                255, 153, 219, 109)
                                            .withOpacity(0.5)
                                        : AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(
                                        color: AppColors.blackColor,
                                        width: 1.5.w),
                                  ),
                                  padding: EdgeInsets.all(8.sm),
                                  child: CustomText(
                                    title:
                                        '${vm.gamesList[vm.selectedIndex][index]['game']}',
                                    align: TextAlign.center,
                                    fontsize: 10.sp,
                                    fontweight: FontWeight.w600,
                                  )),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Container(
                                width: 60.w,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(
                                      color: AppColors.blueColor, width: 1.5.w),
                                ),
                                padding: EdgeInsets.all(8.sm),
                                child: CustomText(
                                  title:
                                      '${vm.gamesList[vm.selectedIndex][index]['closeTime']}',
                                  align: TextAlign.center,
                                  fontsize: 10.sp,
                                  fontweight: FontWeight.w600,
                                )),
                          ],
                        );
                      })
                    ],
                  ),
                ),
                CustomChildContainer(
                  height: 40.h,
                  bgColor: AppColors.blackColor,
                  border: const Border(
                    top: BorderSide(
                      color: AppColors.blackColor,
                    ),
                    bottom: BorderSide(
                      color: AppColors.blackColor,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(vm.powerXplayList.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            vm.setSelectedPowerIndex(index);
                          },
                          child: Container(
                              height: 25.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: (vm.selectedPowerIndex == index)
                                    ? const Color.fromARGB(255, 210, 255, 179)
                                    : AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                    color: AppColors.blackColor, width: 1.5.w),
                              ),
                              padding: EdgeInsets.all(8.sm),
                              child: CustomText(
                                title: '${vm.powerXplayList[index]}',
                                align: TextAlign.center,
                                fontsize: 12.sp,
                                fontweight: FontWeight.w700,
                              )),
                        );
                      }),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HowToPlay()));
                        },
                        child: Container(
                            height: 25.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(
                                  color: AppColors.blackColor, width: 1.5.w),
                            ),
                            padding: EdgeInsets.all(8.sm),
                            child: CustomText(
                              title: 'HOW TO PLAY',
                              align: TextAlign.center,
                              fontsize: 12.sp,
                              fontweight: FontWeight.w700,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5.w, left: 5.w, top: 5.h),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CustomChildContainer(
                          height: 115.h,
                          bgColor: AppColors.whiteColor,
                          border: Border.all(
                              color: AppColors.blackColor, width: 2.w),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SizedBox(
                                  height: 1.h,
                                ),
                                CircleAvatar(
                                  backgroundColor: AppColors.whiteColor,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://cdn-icons-png.flaticon.com/512/5052/5052170.png',
                                    height: 40.h,
                                    width: 40.w,
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
                                ),
                                CustomText(
                                  title:
                                      '${vm.selectedIndex == 0 ? 'NLA' : vm.selectedIndex == 1 ? 'PREMIER' : 'GC'} | ${vm.gamesList[vm.selectedIndex][vm.selectedGameIndex]['game']}',
                                  fontsize: 12.sp,
                                  fontweight: FontWeight.w700,
                                  fontcolor: AppColors.blackColor,
                                ),
                                Container(
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                              255, 138, 191, 252)
                                          .withOpacity(0.5),
                                      border: Border.all(
                                          color: AppColors.blackColor,
                                          width: 1.5.w),
                                    ),
                                    padding: EdgeInsets.all(5.sm),
                                    child: CustomText(
                                      title: 'TEAM ${vm.selectedTeamIndex + 1}',
                                      align: TextAlign.center,
                                      fontsize: 12.sp,
                                      fontweight: FontWeight.w800,
                                    )),
                              ]),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        flex: 3,
                        child: CustomChildContainer(
                          height: 115.h,
                          bgColor: AppColors.whiteColor,
                          border: Border.all(
                              color: AppColors.blackColor, width: 2.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: List.generate(
                                vm.powerXplayList[vm.selectedPowerIndex] ==
                                        'POWER 5'
                                    ? 5
                                    : vm.powerXplayList[
                                                vm.selectedPowerIndex] ==
                                            'POWER 7'
                                        ? 7
                                        : 10,
                                (index) => Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Flag.fromCode(
                                          FlagsCode.NL,
                                          height: 10.h,
                                          width: 20.w,
                                          fit: BoxFit.fill,
                                        ),
                                        Container(
                                          height: 28.h,
                                          width: 28.w,
                                          decoration: BoxDecoration(
                                              color: AppColors.blackColor,
                                              border: Border.all(
                                                  color:
                                                      AppColors.lightBlueColor,
                                                  width: 2.w),
                                              shape: BoxShape.circle),
                                          alignment: Alignment.center,
                                          child: CustomText(
                                            title: '${index + 1}',
                                            fontcolor: AppColors.whiteColor,
                                            fontsize: 10.sp,
                                            fontweight: FontWeight.w700,
                                          ),
                                        ),
                                        // Material(
                                        //   clipBehavior: Clip.antiAlias,
                                        //   shape: RoundedRectangleBorder(
                                        //     side: BorderSide(
                                        //         color: AppColors.blueColor,
                                        //         width: 2.w),
                                        //     borderRadius: BorderRadius.only(
                                        //       topRight: Radius.circular(20.r),
                                        //       topLeft: Radius.circular(20.r),
                                        //     ),
                                        //   ),
                                        //   child: Container(
                                        //     height: 16.h,
                                        //     width: 28.w,
                                        //     decoration: const BoxDecoration(
                                        //         color: Colors.transparent,
                                        //         // borderRadius:
                                        //         //     BorderRadius.circular(20.r)
                                        //         border: Border(
                                        //           top: BorderSide(
                                        //               color:
                                        //                   AppColors.blueColor),
                                        //           left: BorderSide(
                                        //               color:
                                        //                   AppColors.blueColor),
                                        //           right: BorderSide(
                                        //               color:
                                        //                   AppColors.blueColor),
                                        //         )),
                                        //     alignment: Alignment.bottomCenter,
                                        //     child: CustomText(
                                        //       title: '1234',
                                        //       fontcolor: AppColors.blackColor,
                                        //       fontsize: 10.sp,
                                        //       fontweight: FontWeight.w700,
                                        //     ),
                                        //   ),
                                        // ),
                                        SizedBox(
                                            height: 18.h,
                                            width: 28.w,
                                            child: SfRadialGauge(
                                              axes: [
                                                RadialAxis(
                                                    showLabels: false,
                                                    showTicks: false,
                                                    startAngle: 180,
                                                    endAngle: 0,
                                                    radiusFactor: 1.5.r,
                                                    canScaleToFit: true,
                                                    axisLineStyle:
                                                        const AxisLineStyle(
                                                      thickness: 0.1,
                                                      color:
                                                          AppColors.blueColor,
                                                      thicknessUnit:
                                                          GaugeSizeUnit.factor,
                                                      cornerStyle: CornerStyle
                                                          .startCurve,
                                                    ),
                                                    pointers: const <
                                                        GaugePointer>[
                                                      RangePointer(
                                                          value: 100,
                                                          width: 0.1,
                                                          sizeUnit:
                                                              GaugeSizeUnit
                                                                  .factor,
                                                          cornerStyle:
                                                              CornerStyle
                                                                  .bothCurve)
                                                    ],
                                                    annotations: <
                                                        GaugeAnnotation>[
                                                      GaugeAnnotation(
                                                          positionFactor: 0,
                                                          angle: 90,
                                                          widget: Text(
                                                            '1234',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize:
                                                                    10.sp),
                                                          ))
                                                    ]),
                                              ],
                                            )),

                                        Container(
                                          height: 28.h,
                                          width: 28.w,
                                          decoration: BoxDecoration(
                                              color: AppColors.whiteColor,
                                              border: Border.all(
                                                  color: AppColors.blackColor,
                                                  width: 2.w),
                                              shape: BoxShape.circle),
                                          alignment: Alignment.center,
                                          child: CustomText(
                                            title: '?',
                                            fontcolor: AppColors.blackColor,
                                            fontsize: 16.sp,
                                            fontweight: FontWeight.w900,
                                          ),
                                        )
                                      ],
                                    )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                CustomChildContainer(
                  height: 40.h,
                  bgColor: Colors.transparent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            if (vm.selectedTeamIndex <= 2 &&
                                vm.selectedTeamIndex > 0) {
                              vm.setSelectedTeamIndex(vm.selectedTeamIndex - 1);
                              animateToIndex(vm.selectedTeamIndex);
                            }
                          },
                          child: Icon(
                            Icons.arrow_left,
                            size: 35.sp,
                            color: AppColors.blueColor,
                          )),
                      SizedBox(
                        width: 215.w,
                        height: 20.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            controller: _controller,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                child: GestureDetector(
                                  onTap: () => vm.setSelectedTeamIndex(index),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: (vm.selectedTeamIndex == index)
                                            ? const Color.fromARGB(
                                                    255, 138, 191, 252)
                                                .withOpacity(0.5)
                                            : AppColors.whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        border: Border.all(
                                            color: AppColors.blueColor,
                                            width: 1.5.w),
                                      ),
                                      padding: EdgeInsets.all(5.sm),
                                      child: CustomText(
                                        title: 'TEAM ${index + 1}',
                                        align: TextAlign.center,
                                        fontsize: 12.sp,
                                        fontweight: FontWeight.w800,
                                      )),
                                ),
                              );
                            }),
                      ),
                      GestureDetector(
                          onTap: () {
                            if (vm.selectedTeamIndex < 2 &&
                                vm.selectedTeamIndex >= 0) {
                              vm.setSelectedTeamIndex(vm.selectedTeamIndex + 1);
                              animateToIndex(vm.selectedTeamIndex);
                            }
                          },
                          child: Icon(
                            Icons.arrow_right,
                            size: 35.sp,
                            color: AppColors.blueColor,
                          )),
                    ],
                  ),
                ),
                CustomChildContainer(
                  height: 95.h,
                  bgColor: AppColors.whiteColor,
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 3.h),
                  border: Border(
                    top: BorderSide(color: AppColors.blackColor, width: 2.w),
                    bottom: BorderSide(color: AppColors.blackColor, width: 2.w),
                  ),
                  child: CustomChildContainer(
                    bgColor: AppColors.whiteColor,
                    border: Border.all(color: AppColors.blackColor, width: 2.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 190.w,
                          child: Table(
                            columnWidths: {
                              0: FlexColumnWidth(2.w),
                              1: FlexColumnWidth(2.w),
                            },
                            border: TableBorder.all(
                              color: AppColors.blueColor,
                              style: BorderStyle.solid,
                              width: 1.5.w,
                            ),
                            children: [
                              TableRow(
                                  decoration: const BoxDecoration(
                                    color: AppColors.whiteColor,
                                  ),
                                  children: [
                                    CustomContainer(
                                        title: 'TEAM STATUS',
                                        align: TextAlign.center,
                                        padding: EdgeInsets.symmetric(
                                          vertical: 5.h,
                                        ),
                                        bgColor: AppColors.whiteColor
                                            .withOpacity(0.1),
                                        fgColor: AppColors.blackColor,
                                        fontweight: FontWeight.w700,
                                        fontsize: 9.sp,
                                        underline: false),
                                    CustomContainer(
                                        title: 'WAITING ...',
                                        align: TextAlign.center,
                                        padding: EdgeInsets.symmetric(
                                          vertical: 5.h,
                                        ),
                                        bgColor: AppColors.whiteColor
                                            .withOpacity(0.1),
                                        fgColor: AppColors.blackColor,
                                        fontweight: FontWeight.w700,
                                        fontsize: 9.sp,
                                        underline: false),
                                  ]),
                              TableRow(
                                  decoration: const BoxDecoration(
                                    color: AppColors.whiteColor,
                                  ),
                                  children: [
                                    CustomContainer(
                                        title: 'STAKE AMOUNT',
                                        align: TextAlign.center,
                                        padding: EdgeInsets.symmetric(
                                          vertical: 5.h,
                                        ),
                                        bgColor: AppColors.whiteColor
                                            .withOpacity(0.1),
                                        fgColor: AppColors.blackColor,
                                        fontweight: FontWeight.w700,
                                        fontsize: 9.sp,
                                        underline: false),
                                    CustomContainer(
                                        title: 'N 500',
                                        align: TextAlign.center,
                                        padding: EdgeInsets.symmetric(
                                          vertical: 5.h,
                                        ),
                                        bgColor: AppColors.whiteColor
                                            .withOpacity(0.1),
                                        fgColor: AppColors.blackColor,
                                        fontweight: FontWeight.w700,
                                        fontsize: 9.sp,
                                        underline: false),
                                  ]),
                              TableRow(
                                  decoration: const BoxDecoration(
                                    color: AppColors.whiteColor,
                                  ),
                                  children: [
                                    CustomContainer(
                                        title: 'POTENTIAL WIN',
                                        align: TextAlign.center,
                                        padding: EdgeInsets.symmetric(
                                          vertical: 5.h,
                                        ),
                                        bgColor: AppColors.whiteColor
                                            .withOpacity(0.1),
                                        fgColor: AppColors.blackColor,
                                        fontweight: FontWeight.w700,
                                        fontsize: 9.sp,
                                        underline: false),
                                    CustomContainer(
                                        title: 'N 12,000 - N270,000',
                                        align: TextAlign.center,
                                        padding: EdgeInsets.symmetric(
                                          vertical: 5.h,
                                        ),
                                        bgColor: AppColors.whiteColor
                                            .withOpacity(0.1),
                                        fgColor: AppColors.blackColor,
                                        fontweight: FontWeight.w700,
                                        fontsize: 9.sp,
                                        underline: false),
                                  ]),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 95.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CommonDropDown(
                                setHeight: 25.h,
                                setWidth: 95.w,
                                setFont: 10.sp,
                                initialValue: vm.selectedBanker,
                                list: vm.bankersList,
                                onSelect: (value) {
                                  vm.setSelectedBanker(value);
                                  print(value);
                                },
                                title: 'Select Your Banker',
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              CustomButton(
                                btnheight: 25.h,
                                bottomLeftRadius: 3.r,
                                topLeftRadius: 3.r,
                                bottomRightRadius: 3.r,
                                topRightRadius: 3.r,
                                bgColor: AppColors.blackColor.withOpacity(0.8),
                                title: 'JOIN TEAM',
                                fontsize: 10.sp,
                                fontweight: FontWeight.w900,
                                onpress: () {},
                              ),
                            ],
                          ),
                        ),
                        CustomContainer(
                            width: 95.w,
                            border: Border.all(color: AppColors.blackColor),
                            padding: EdgeInsets.all(6.sm),
                            height: 32.h,
                            fgColor: AppColors.redColor,
                            align: TextAlign.center,
                            fontweight: FontWeight.w700,
                            fontsize: 13.5.sp,
                            //Here can be used time from api
                            title:
                                '${vm.startHr} : ${vm.startMin} : ${vm.startSec}'),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: CustomButton(
                    btnheight: 25.h,
                    bottomLeftRadius: 3.r,
                    topLeftRadius: 3.r,
                    bottomRightRadius: 3.r,
                    topRightRadius: 3.r,
                    bgColor: AppColors.blackColor.withOpacity(0.8),
                    title: 'STAKE HISTORY',
                    fontsize: 15.sp,
                    fontweight: FontWeight.w700,
                    onpress: () {},
                  ),
                ),
                CustomChildContainer(
                  bgColor: AppColors.whiteColor,
                  padding: EdgeInsets.symmetric(vertical: 5.h),
                  child: Table(
                    columnWidths: {
                      0: FlexColumnWidth(1.5.w),
                      1: FlexColumnWidth(2.w),
                      2: FlexColumnWidth(1.5.w),
                      3: FlexColumnWidth(1.5.w),
                      4: FlexColumnWidth(1.5.w),
                      5: FlexColumnWidth(1.w),
                      6: FlexColumnWidth(1.5.w),
                      7: FlexColumnWidth(3.5.w),
                      8: FlexColumnWidth(1.w),
                      9: FlexColumnWidth(0.8.w),
                      10: FlexColumnWidth(1.4.w),
                    },
                    border: TableBorder.all(
                      color: AppColors.blueColor,
                      style: BorderStyle.solid,
                      width: 1.5.w,
                    ),
                    children: [
                      TableRow(
                          decoration: const BoxDecoration(
                            color: AppColors.whiteColor,
                          ),
                          children: [
                            CustomContainer(
                                title: 'DATE',
                                align: TextAlign.center,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                bgColor: AppColors.whiteColor.withOpacity(0.1),
                                fgColor: AppColors.blackColor,
                                fontweight: FontWeight.w700,
                                fontsize: 7.5.sp,
                                underline: false),
                            CustomContainer(
                                title: 'REFERENCE',
                                align: TextAlign.center,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                bgColor: AppColors.whiteColor.withOpacity(0.1),
                                fgColor: AppColors.blackColor,
                                fontweight: FontWeight.w700,
                                fontsize: 7.5.sp,
                                underline: false),
                            CustomContainer(
                                title: 'LOTTERY',
                                align: TextAlign.center,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                bgColor: AppColors.whiteColor.withOpacity(0.1),
                                fgColor: AppColors.blackColor,
                                fontweight: FontWeight.w700,
                                fontsize: 7.5.sp,
                                underline: false),
                            CustomContainer(
                                title: 'GAME',
                                align: TextAlign.center,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                bgColor: AppColors.whiteColor.withOpacity(0.1),
                                fgColor: AppColors.blackColor,
                                fontweight: FontWeight.w700,
                                fontsize: 7.5.sp,
                                underline: false),
                            CustomContainer(
                                title: 'POWER',
                                align: TextAlign.center,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                bgColor: AppColors.whiteColor.withOpacity(0.1),
                                fgColor: AppColors.blackColor,
                                fontweight: FontWeight.w700,
                                fontsize: 7.5.sp,
                                underline: false),
                            CustomContainer(
                                title: 'TEAM',
                                align: TextAlign.center,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                bgColor: AppColors.whiteColor.withOpacity(0.1),
                                fgColor: AppColors.blackColor,
                                fontweight: FontWeight.w700,
                                fontsize: 7.5.sp,
                                underline: false),
                            CustomContainer(
                                title: 'BANKER',
                                align: TextAlign.center,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                bgColor: AppColors.whiteColor.withOpacity(0.1),
                                fgColor: AppColors.blackColor,
                                fontweight: FontWeight.w700,
                                fontsize: 7.5.sp,
                                underline: false),
                            CustomContainer(
                                title: 'POWER NUMBERS',
                                align: TextAlign.center,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                bgColor: AppColors.whiteColor.withOpacity(0.1),
                                fgColor: AppColors.blackColor,
                                fontweight: FontWeight.w700,
                                fontsize: 7.5.sp,
                                underline: false),
                            CustomContainer(
                                title: 'STAKE',
                                align: TextAlign.center,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                bgColor: AppColors.whiteColor.withOpacity(0.1),
                                fgColor: AppColors.blackColor,
                                fontweight: FontWeight.w700,
                                fontsize: 7.5.sp,
                                underline: false),
                            CustomContainer(
                                title: 'WIN',
                                align: TextAlign.center,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                bgColor: AppColors.whiteColor.withOpacity(0.1),
                                fgColor: AppColors.blackColor,
                                fontweight: FontWeight.w700,
                                fontsize: 7.5.sp,
                                underline: false),
                            CustomContainer(
                                title: 'AMOUNT',
                                align: TextAlign.center,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                bgColor: AppColors.whiteColor.withOpacity(0.1),
                                fgColor: AppColors.blackColor,
                                fontweight: FontWeight.w700,
                                fontsize: 7.5.sp,
                                underline: false),
                          ]),
                      ...List.generate(
                          vm.stakeHistoryList.length,
                          (i) => TableRow(
                                  decoration: const BoxDecoration(
                                    color: AppColors.whiteColor,
                                  ),
                                  children: [
                                    CustomContainer(
                                      title: vm.stakeHistoryList[i]['date']
                                          .toString(),
                                      align: TextAlign.center,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5.sm, horizontal: 2.sm),
                                      bgColor:
                                          AppColors.whiteColor.withOpacity(0.1),
                                      fgColor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 6.sp,
                                      underline: false,
                                    ),
                                    CustomContainer(
                                      title: vm.stakeHistoryList[i]['ref']
                                          .toString(),
                                      align: TextAlign.center,
                                      padding: EdgeInsets.all(5.sm),
                                      bgColor:
                                          AppColors.whiteColor.withOpacity(0.1),
                                      fgColor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 6.sp,
                                      underline: false,
                                    ),
                                    CustomContainer(
                                      title: vm.stakeHistoryList[i]['lottery']
                                          .toString(),
                                      align: TextAlign.center,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5.sm, horizontal: 1.sm),
                                      bgColor:
                                          AppColors.whiteColor.withOpacity(0.1),
                                      fgColor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 6.sp,
                                      underline: false,
                                    ),
                                    CustomContainer(
                                      title: vm.stakeHistoryList[i]['game']
                                          .toString(),
                                      align: TextAlign.center,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5.sm, horizontal: 2.sm),
                                      bgColor:
                                          AppColors.whiteColor.withOpacity(0.1),
                                      fgColor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 6.sp,
                                      underline: false,
                                    ),
                                    CustomContainer(
                                      title: vm.stakeHistoryList[i]['power']
                                          .toString(),
                                      align: TextAlign.center,
                                      padding: EdgeInsets.all(5.sm),
                                      bgColor:
                                          AppColors.whiteColor.withOpacity(0.1),
                                      fgColor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 6.sp,
                                      underline: false,
                                    ),
                                    CustomContainer(
                                      title: vm.stakeHistoryList[i]['team']
                                          .toString(),
                                      align: TextAlign.center,
                                      padding: EdgeInsets.all(5.sm),
                                      bgColor:
                                          AppColors.whiteColor.withOpacity(0.1),
                                      fgColor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 6.sp,
                                      underline: false,
                                    ),
                                    CustomContainer(
                                      title: vm.stakeHistoryList[i]['banker']
                                          .toString(),
                                      align: TextAlign.center,
                                      padding: EdgeInsets.only(
                                          top: 5.sm, bottom: 5.sm),
                                      bgColor:
                                          AppColors.whiteColor.withOpacity(0.1),
                                      fgColor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 6.sp,
                                      underline: false,
                                    ),
                                    i == 0
                                        ? CustomChildContainer(
                                            padding: EdgeInsets.only(
                                                top: 5.sm, bottom: 5.sm),
                                            bgColor: AppColors.whiteColor
                                                .withOpacity(0.1),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                ...List.generate(
                                                    vm
                                                        .stakeHistoryList[i]
                                                            ['powerNumbers']
                                                        .length,
                                                    (index) => Container(
                                                        padding: EdgeInsets.all(
                                                            1.sm),
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: AppColors
                                                                    .blackColor),
                                                            shape: BoxShape
                                                                .circle),
                                                        child: CustomText(
                                                          title: vm
                                                              .stakeHistoryList[
                                                                  i][
                                                                  'powerNumbers']
                                                                  [index]
                                                              .toString(),
                                                          align:
                                                              TextAlign.center,
                                                          fontweight:
                                                              FontWeight.w700,
                                                          fontsize: 6.sp,
                                                          fontcolor: AppColors
                                                              .blackColor,
                                                        )))
                                              ],
                                            ),
                                          )
                                        : CustomContainer(
                                            title: vm.stakeHistoryList[i]
                                                    ['powerNumbers']
                                                .toString(),
                                            align: TextAlign.center,
                                            padding: EdgeInsets.only(
                                                top: 5.sm, bottom: 5.sm),
                                            bgColor: AppColors.whiteColor
                                                .withOpacity(0.1),
                                            fgColor: AppColors.blackColor,
                                            fontweight: FontWeight.w700,
                                            fontsize: 6.sp,
                                            underline: false,
                                          ),
                                    CustomContainer(
                                      title: vm.stakeHistoryList[i]['stake']
                                          .toString(),
                                      align: TextAlign.center,
                                      padding: EdgeInsets.only(
                                          top: 5.sm, bottom: 5.sm),
                                      bgColor:
                                          AppColors.whiteColor.withOpacity(0.1),
                                      fgColor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 6.sp,
                                      underline: false,
                                    ),
                                    CustomContainer(
                                      title: vm.stakeHistoryList[i]['win']
                                          .toString(),
                                      align: TextAlign.center,
                                      padding: EdgeInsets.only(
                                          top: 5.sm, bottom: 5.sm),
                                      bgColor:
                                          AppColors.whiteColor.withOpacity(0.1),
                                      fgColor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 6.sp,
                                      underline: false,
                                    ),
                                    CustomContainer(
                                      title: vm.stakeHistoryList[i]['amount']
                                          .toString(),
                                      align: TextAlign.center,
                                      padding: EdgeInsets.only(
                                          top: 5.sm, bottom: 5.sm),
                                      bgColor:
                                          AppColors.whiteColor.withOpacity(0.1),
                                      fgColor: AppColors.blackColor,
                                      fontweight: FontWeight.w700,
                                      fontsize: 6.sp,
                                      underline: false,
                                    ),
                                  ]))
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
