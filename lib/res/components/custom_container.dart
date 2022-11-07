import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  BoxBorder? border = Border.all(
    width: 2.0,
    color: AppColors.blackColor,
  );
  bool underline;
  TextAlign align;
  EdgeInsetsGeometry padding;
  CustomContainer({
    super.key,
    required this.title,
    required this.bgColor,
    required this.fgColor,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.height,
    this.width,
    this.fontsize,
    this.fontweight = FontWeight.w600,
    this.border,
    this.underline = false,
    this.align = TextAlign.left,
    this.padding = const EdgeInsets.all(0.0),
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
        decoration: BoxDecoration(
          color: bgColor,
          border: border,
        ),
        height: height,
        width: width,
        child: Center(
          child: CustomText(
              align: align,
              title: title.toString(),
              fontcolor: fgColor,
              fontweight: fontweight,
              fontsize: fontsize as double,
              underline: underline),
          // Text(
          //   title.toString(),
          //   style: GoogleFonts.montserrat(
          //       fontWeight: fontweight,
          //       color: fgColor,
          //       fontSize: fontsize,
          //       wordSpacing: 0,
          //       textBaseline: TextBaseline.alphabetic,
          //       textStyle: Theme.of(context).textTheme.headline4),
          // ),
        ),
      ),
    );
  }
}
