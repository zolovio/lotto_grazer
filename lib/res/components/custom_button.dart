import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
  bool loading;
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
    this.btnheight,
    this.btnwidth,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: bgColor,
      textColor: fgColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: bdColor,
          width: 2.0,
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
      child: Text(
        title.toString(),
        style: const TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
