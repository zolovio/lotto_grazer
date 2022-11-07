import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  String title;
  Color fontcolor;
  FontWeight fontweight;
  double fontsize;
  bool underline;
  TextAlign align;
  CustomText({
    super.key,
    required this.title,
    required this.fontcolor,
    required this.fontweight,
    required this.fontsize,
    required this.underline,
    this.align = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toString(),
      textAlign: align,
      style: GoogleFonts.montserrat(
          fontWeight: fontweight,
          color: fontcolor,
          fontSize: fontsize,
          textBaseline: TextBaseline.alphabetic,
          textStyle: Theme.of(context).textTheme.headline4!.copyWith(
                decoration:
                    underline ? TextDecoration.underline : TextDecoration.none,
              )),
    );
  }
}
