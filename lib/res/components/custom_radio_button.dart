import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class CustomRadioButton extends StatelessWidget {
  final List<String> list;
  final int selectedIndex;
  final Function onSelect;
  final bool isDecorated;
  final double fontSize;
  const CustomRadioButton(
      {Key? key,
      required this.list,
      required this.selectedIndex,
      required this.onSelect,
      this.isDecorated = true,
      this.fontSize = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      itemCount: list.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Row(
          children: [
            Container(
              height: 28.h,
              width: 28.w,
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.blueColor
                    : AppColors.whiteColor,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.appbarColor, width: 2.5.w),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: InkWell(
                onTap: () {
                  onSelect(index);
                },
                child: Container(
                  height: 50.h,
                  width: 180.w,
                  decoration: isDecorated
                      ? BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: AppColors.blueColor, width: 2.w),
                        )
                      : null,
                  child: Padding(
                    padding: EdgeInsets.all(8.sm),
                    child: Center(
                      child: CustomText(
                        fontsize: fontSize,
                        title: list[index],
                        fontweight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
