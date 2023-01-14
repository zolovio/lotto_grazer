import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class NumberCard extends StatelessWidget {
  final String label;
  const NumberCard({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.h,
      width: 58.w,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.lightBlueColor, width: 2.w)),
      child: Center(
        child: CustomText(
          title: label,
          fontsize: 11.sp,
          fontweight: FontWeight.w800,
          fontcolor: AppColors.blackColor,
        ),
      ),
    );
  }
}

class NumberCardWithTitle extends StatelessWidget {
  final String num;
  final String title;
  final bool isFromTimingKeys;
  const NumberCardWithTitle(
      {Key? key,
      required this.num,
      required this.title,
      this.isFromTimingKeys = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(
          width: (title == "SPACING") ? 100.w : 85.w,
          height: 35.h,
          title: num,
          bgColor: AppColors.whiteColor,
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w800,
          align: TextAlign.center,
          border: Border.all(
            color: AppColors.lightBlueColor,
            width: 2.w,
          ),
        ),
        CustomContainer(
          width: (title == "SPACING") ? 100.w : 85.w,
          height: 30.h,
          title: title,
          bgColor:
              isFromTimingKeys ? AppColors.blackColor : AppColors.blueColor,
          fgColor: AppColors.whiteColor,
          fontsize: 10.sp,
          fontweight: FontWeight.w800,
          align: TextAlign.center,
          border: Border.all(
            color: isFromTimingKeys
                ? AppColors.whiteColor
                : AppColors.lightBlueColor,
            width: 2.w,
          ),
        ),
      ],
    );
  }
}

class GradientNumberCard extends StatefulWidget {
  final String label;
  final double width;
  final bool isTransparent;
  const GradientNumberCard(
      {Key? key, required this.label, this.isTransparent = true,required this.width})
      : super(key: key);

  @override
  State<GradientNumberCard> createState() => _GradientNumberCardState();
}

class _GradientNumberCardState extends State<GradientNumberCard> {
  @override
  Widget build(BuildContext context) {
    final kInnerDecoration = BoxDecoration(
      color: widget.isTransparent ? AppColors.whiteColor : AppColors.greyColor,
      border: Border.all(color: Colors.transparent),
      // borderRadius: BorderRadius.circular(6.r),
    );

    final kGradientBoxDecoration = BoxDecoration(
      color: widget.isTransparent ? AppColors.whiteColor : AppColors.greyColor,
      gradient: const LinearGradient(colors: [
        AppColors.redColor,
        Color.fromARGB(255, 117, 13, 13),
      ]),
      border: Border.all(color: Colors.transparent),
      // borderRadius: BorderRadius.circular(6.r),
    );
    return Container(
      height: 26.h,
      width: widget.width,
      decoration: kGradientBoxDecoration,
      child: Container(
        alignment: Alignment.center,
        decoration: kInnerDecoration,
        child: CustomText(
          title: widget.label,
          fontsize: 11.sp,
          fontweight: FontWeight.w800,
          fontcolor: AppColors.blackColor,
        ),
      ),
    );
  }
}
