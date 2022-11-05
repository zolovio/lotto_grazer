import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class CommonDropDown extends StatelessWidget {
  final String? title;
  final String initialValue;
  final List<String> list;
  final Function onSelect;
  const CommonDropDown({
    Key? key,
    required this.initialValue,
    required this.list,
    required this.onSelect,
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
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: CustomText(
              text: title!,
              fontSize: 8.sp,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
        Container(
          height: size.height * 0.045,
          decoration: BoxDecoration(
            color: AppColors.greyColor.withOpacity(0.2),
            border: Border.all(width: 2.0, color: AppColors.blueColor),
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: DropdownButton<String>(
            value: initialValue,
            icon: Icon(
              Icons.arrow_downward,
              color: AppColors.blackColor,
              size: 25.sp,
            ),
            elevation: 0,
            style: const TextStyle(color: AppColors.blackColor),
            underline: Container(),
            onChanged: (String? value) {
              onSelect(value);
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: CustomText(
                      text: value,
                      fontWeight: FontWeight.w600,
                    ),
                  ));
            }).toList(),
          ),
        ),
      ],
    );
  }
}
