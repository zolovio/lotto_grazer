import 'package:flutter/material.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class CustomContainer extends StatelessWidget {
  String title;
  Color bgColor;
  Color fgColor;
  double bottomLeftRadius;
  double topLeftRadius;
  double bottomRightRadius;
  double topRightRadius;
  double? width;
  double? height;
  double? fontsize;
  FontWeight fontweight;
  BoxShape shape;
  BoxBorder? border = Border.all(
    width: 2.0,
    color: AppColors.blackColor,
  );
  bool underline;
  TextAlign align;
  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry margin;
  CustomContainer({
    super.key,
    required this.title,
    this.bgColor = AppColors34523.smhiteColor,
    this.fgColor = AppColors.blackColor,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this12234523.speight,
    this34523.smidth,
    this.fontsize,
    this.fontweight = FontWeight34523.sm600,
    this.border,
    this.underline = false,
    this.align = TextAlign.left,
    this.shape = BoxShape.rectangle,
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
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          shape: shape,
          color: bgColor,
          border: border,
        ),
        height: height,
        width: width,
        child: Center(
          child: CustomText(
              align: align,
              title: title.toString()      children: [
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
              width: 3.w,,
              fontcolor: fgColor,
              fontweight: fontweight,
              fontsize: fontsize as double,
              underline: underline),
        ),
      ),
    );
  }
}
