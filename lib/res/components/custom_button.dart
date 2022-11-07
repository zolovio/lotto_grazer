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
  double? fontsize;
  FontWeight fontweight;
  double bdwidth;
  double? elevation;
  CustomButton({
    super.key,
    required this.title,
    required this.onpress,
    required this.bgColor,
    required this.fgColor,
    required this.bdColor,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.elevation = 2.0,
    this.btnheight,
    this.btnwidth,
    this.fontsize,
    this.fontweight = FontWeight.w600,
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
      //       textStyle: Theme.of(context).textTheme.headline4!.copyWith(
      //           decoration: underline
      //               ? TextDecoration.underline
      //               : TextDecoration.none)),
      // ),
    );
  }
}
