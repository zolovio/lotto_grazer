import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  String title;
  Color bgColor;
  Color fgColor;
  Color bdColor;
  double bottomLeftRadius;
  double topLeftRadius;
  double bottomRightRadius;
  double topRightRadius;
  double? width;
  double? height;
  double? fontsize;
  double bdwidth;
  CustomContainer({
    super.key,
    required this.title,
    required this.bgColor,
    required this.fgColor,
    required this.bdColor,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.height,
    this.width,
    this.fontsize,
    this.bdwidth = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(
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
      height: height,
      width: width,
      child: Center(
        child: Text(
          title.toString(),
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              color: fgColor,
              fontSize: fontsize,
              wordSpacing: 0,
              textBaseline: TextBaseline.alphabetic,
              textStyle: Theme.of(context).textTheme.headline4),
        ),
      ),
    );
  }
}
