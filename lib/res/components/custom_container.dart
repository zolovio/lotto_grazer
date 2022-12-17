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
    this.bgColor = AppColors.whiteColor,
    this.fgColor = AppColors.blackColor,
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
              title: title.toString(),
              fontcolor: fgColor,
              fontweight: fontweight,
              fontsize: fontsize as double,
              underline: underline),
        ),
      ),
    );
  }
}
