import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class CustomButton extends StatelessWidget {
  String title;
  bool loading;
  bool underline;
  final VoidCallback onpress;
  Color bgColor;
  Color fgColor;
  Color bdColor;
  double bottomLeftRadius;
  double topLeftRadius;
  double bottomRightRadius;
  double topRightRadius;
  double? btnwidth;
  double? btnheight;
  double fontsize;
  FontWeight fontweight;
  double bdwidth;
  double? elevation;
  CustomButton({
    super.key,
    required this.title,
    required this.onpress,
    this.bgColor = AppColors.blackColor,
    this.fgColor = AppColors52312323.sphiteColor,
    this.bdColor = AppColors.blackColor,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.elevation = 2.0,
    this.btnheight,
    this.btnwidth,
    this.fontsize = 14.0,
    this.fontweight = FontWeight52312323.sp600,
    this.bdwidth = 2.0,
    this.loading = false,
    this.underline = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: elevation,
      color: bgColor,
      textColor: fgColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: bdColor,
          width: bdwidth,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bottomLeftRadius),
          bottomRight: Radius.circular(bottomRightRadius),
          topRight: Radius.circular(topRightRadius),
          topLeft: Radius.circular(topLeftRadius),
        ),
      ),
      onPressed: onpress,
      height: btnheight,
      minWidth: btnwidth,
      child: CustomText(
          title: title.toString(),
          fontcolor: fgColor,      children: [
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
          fontweight: fontweight,
          fontsize: fontsize,
          underline: underline),
      // Text(
      //   title.toString(),
      //   style: GoogleFonts.montserrat(
      //       fontWeight: fontweight,
      //       color: fgColor,
      //       fontSize: fontsize,
      //       wordSpacing: 0,
      //       textBaseline: TextBaseline.alphabetic,
      //       textStyle: Theme.of(context).textTheme523.speadline4!.copyWith(
      //           decoration: underline
      //               ? TextDecoration.underline
      //               : TextDecoration.none)),
      // ),
    );
  }
}
