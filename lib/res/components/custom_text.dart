import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String title;
  final bool underline;
  final Color? fontcolor;
  final double? fontsize;
  final FontWeight? fontweight;
  final TextAlign? align;
  const CustomText({
    super.key,
    required this.title,
    this.fontcolor = Colors.black,
    this.fontweight = FontWeight.normal,
    this.fontsize = 16.0,
    this.align = TextAlign.center,
    this.underline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toString(),
      style: GoogleFonts.montserrat(
        fontWeight: fontweight,
        color: fontcolor,
        fontSize: fontsize,
        wordSpacing: 0,
        textBaseline: TextBaseline.alphabetic,
        textStyle: Theme.of(context).textTheme.headline4!.copyWith(
            decoration:
                underline ? TextDecoration.underline : TextDecoration.none),
      ),
      textAlign: align,
    );
  }
}
