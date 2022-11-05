import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/gradient_outline_input_border.dart';

class CustomFormField extends StatelessWidget {
  String title;
  TextEditingController fieldcontroller;
  final FocusNode focusnode;
  final List<Color> gradientcolors;
  final bool isgradientborder;
  final bool ispassword;
  final onchange;
  final onsaved;
  final TextInputType keyboardtype;
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
  CustomFormField({
    super.key,
    required this.title,
    this.isgradientborder = true,
    this.ispassword = false,
    this.onchange,
    this.onsaved,
    required this.focusnode,
    this.keyboardtype = TextInputType.text,
    this.gradientcolors = const [Colors.red, Colors.blue],
    this.bgColor = AppColors.whiteColor,
    this.fgColor = AppColors.blackColor,
    this.bdColor = AppColors.blueColor,
    required this.fieldcontroller,
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
    return TextFormField(
      controller: fieldcontroller,
      onChanged: onchange,
      focusNode: focusnode,
      onFieldSubmitted: onsaved as Function(String?)?,
      textAlign: TextAlign.center,
      obscureText: ispassword,
      keyboardType: keyboardtype,
      decoration: InputDecoration(
        constraints: BoxConstraints(
          maxHeight: height as double,
          maxWidth: width as double,
        ),
        hintText: title,
        hintStyle: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            color: fgColor,
            fontSize: fontsize,
            wordSpacing: 0,
            textBaseline: TextBaseline.alphabetic,
            textStyle: Theme.of(context).textTheme.headline4),
        border: isgradientborder
            ? GradientOutlineInputBorder(
                gradient: LinearGradient(
                    colors: gradientcolors,
                    tileMode: TileMode.clamp,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight),
                width: bdwidth,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(bottomLeftRadius),
                  bottomRight: Radius.circular(bottomRightRadius),
                  topRight: Radius.circular(topRightRadius),
                  topLeft: Radius.circular(topLeftRadius),
                ),
              )
            : OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(bottomLeftRadius),
                  bottomRight: Radius.circular(bottomRightRadius),
                  topRight: Radius.circular(topRightRadius),
                  topLeft: Radius.circular(topLeftRadius),
                ),
                borderSide: BorderSide(
                  color: bdColor,
                  width: bdwidth,
                ),
              ),
      ),
    );
  }
}
