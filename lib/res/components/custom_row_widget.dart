import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/utils/utils.dart';

class CustomRowWidget extends StatelessWidget {
  final String c1text;
  final String c2text;
  final bool showRightBorder;
  final bool isColumn;
  const CustomRowWidget({
    super.key,
    required this.c1text,
    required this.c2text,
    this.showRightBorder = true,
    this.isColumn = false,
  });

  @override
  Widget build(BuildContext context) {
    return (isColumn)
        ? Column(
            children: [
              CustomContainer(
                padding: EdgeInsets.all(10.sm),
                title: c1text,
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                fgColor: AppColors.blackColor,
                fontsize: 14.sp,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
                border: showRightBorder
                    ? Border(
                        right: BorderSide(
                          color: Colors.black,
                          width: 3.w,
                        ),
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 3.w,
                        ),
                      )
                    : Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 3.w,
                        ),
                      ),
              ),
              CustomContainer(
                padding: EdgeInsets.all(10.sm),
                title: c2text,
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                fgColor: AppColors.blackColor,
                fontsize: 14.sp,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
                border: showRightBorder
                    ? Border(
                        right: BorderSide(
                          color: Colors.black,
                          width: 3.w,
                        ),
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 3.w,
                        ),
                      )
                    : Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 3.w,
                        ),
                      ),
              ),
            ],
          )
        : Row(
            children: [
              CustomContainer(
                width: Utils.width(context) * 0.6,
                padding: EdgeInsets.all(10.sm),
                title: c1text,
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                fgColor: AppColors.blackColor,
                fontsize: 14.sp,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
                border: Border(
                  right: BorderSide(
                    color: Colors.black,
                    width: 3.w,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 3.w,
                  ),
                ),
              ),
              CustomContainer(
                width: Utils.width(context) * 0.4,
                padding: EdgeInsets.all(10.sm),
                title: c2text,
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                fgColor: AppColors.blackColor,
                fontsize: 14.sp,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
                border: Border(
                  right: BorderSide(
                    color: Colors.black,
                    width: 0.w,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 3.w,
                  ),
                ),
              ),
            ],
          );
  }
}
