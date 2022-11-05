import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  String text;
  bool underline;
  Color? textColor;
  double? fontSize;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  CustomText({
    super.key,
    required this.text,
    this.textColor = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16.0,
    this.textAlign = TextAlign.center,
    this.underline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: GoogleFonts.montserrat(
        fontWeight: fontWeight,
        color: textColor,
        fontSize: fontSize,
        wordSpacing: 0,
        textBaseline: TextBaseline.alphabetic,
        textStyle: Theme.of(context).textTheme.headline4!.copyWith(
            decoration:
                underline ? TextDecoration.underline : TextDecoration.none),
      ),
      textAlign: textAlign,
    );
  }
}
