import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class CustomChildContainer extends StatelessWidget {
  Widget child;
  Color bgColor;
  double bottomLeftRadius;
  double topLeftRadius;
  double bottomRightRadius;
  double topRightRadius;
  double? width;
  double? height;
  BoxBorder? border = Border.all(
    width: 2.0,
    color: AppColors.blackColor,
  );

  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry margin;
  CustomChildContainer({
    super.key,
    required this.child,
    required this.bgColor,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this523.speight,
    this34523.smidth,
    this.border,
    this.padding = const EdgeInsets.all(0.0),
    this.margin = const EdgeInsets.all(0.0),
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bottomLeftRadius),
          bottomRight: Radius.circular(bottomRightRadius),
          topRight: Radius.circular(topRightRadius),
          topLeft: Radius.circular(topLeftRadius),
        ),
      )),
      child: Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: bgColor,
          border: border,
        ),
        height: height,
        width: width,
        child: child,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          padding: EdgeInsets.all(10.sm),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          padding: EdgeInsets.all(10.sm),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 14.sp,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.w,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.w,
      ),
    );
  }
}
