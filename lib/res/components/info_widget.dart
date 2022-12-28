import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';

class InfoWidget extends StatefulWidget {
  final String infoTitle;
  final String infoText;
  final bool showExtraInfo;
  final String? extraInfoTitle;
  final String? extraInfoText;
  const InfoWidget(
      {super.key,
      this.showExtraInfo = false,
      required this.infoTitle,
      required this.infoText,
      this.extraInfoTitle,
      this.extraInfoText});

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  final _toolTipKey = GlobalKey<State<Tooltip>>();

  void _onInfoTap(GlobalKey key) {
    final dynamic tooltip = key.currentState;
    tooltip?.ensureTooltipVisible();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 400.w,
      child: Tooltip(
        key: _toolTipKey,
        showDuration: const Duration(seconds: 6),
        padding: EdgeInsets.all(10.sm),
        height: 75.h,
        preferBelow: true,
        triggerMode: TooltipTriggerMode.manual,
        decoration: BoxDecoration(
            color: Colors.grey[350],
            boxShadow: [
              BoxShadow(
                  color: AppColors.blackColor.withOpacity(0.4), blurRadius: 8.r)
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6.r),
                bottomLeft: Radius.circular(6.r),
                bottomRight: Radius.circular(6.r))),
        richMessage: TextSpan(
            text: '${widget.infoTitle} ',
            style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700),
            children: [
              TextSpan(
                text: widget.infoText,
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
              if(widget.showExtraInfo)TextSpan(
                text: '${widget.extraInfoTitle} ',
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700),
              ),
              if(widget.showExtraInfo)TextSpan(
                text: '${widget.extraInfoText}',
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              )
            ]),
        child: IconButton(
          onPressed: () => _onInfoTap(_toolTipKey),
          icon: Icon(
            Icons.info_outline,
            size: 30.sp,
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
