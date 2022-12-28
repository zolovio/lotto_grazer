import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class CommonDropDown extends StatelessWidget {
  final String? title;
  final String initialValue;
  final List<String> list;
  final Function onSelect;
  final double? setWidth;
  final double? setFont;
  const CommonDropDown({
    Key? key,
    required this.initialValue,
    required this.list,
    required this.onSelect,
    this.setWidth,
    this.setFont,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h),
            child: CustomText(
              title: title!,
              fontsize: 8.sp,
              fontweight: FontWeight.w700,
            ),
          )
        ],
        Container(
          height: 38.h,
          width: setWidth,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.greyColor.withOpacity(0.2),
            border: Border.all(width: 2.w, color: AppColors.blueColor),
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: DropdownButton<String>(
            value: initialValue,
            icon: Icon(
              Icons.arrow_downward,
              color: AppColors.blackColor,
              size: (setFont == null) ? 25.sp : 20.sp,
            ),
            elevation: 0,
            style: TextStyle(
                fontSize: setFont ?? 10.sp,
                color: AppColors.blackColor,
                overflow: TextOverflow.ellipsis),
            underline: Container(),
            onChanged: (String? value) {
              onSelect(value);
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: (setFont == null) ? 20.w : 10.w),
                    child: CustomText(
                      fontsize: setFont ?? 10.sp,
                      title: value,
                      fontweight: FontWeight.w600,
                    ),
                  ));
            }).toList(),
          ),
        ),
      ],
    );
  }
}
