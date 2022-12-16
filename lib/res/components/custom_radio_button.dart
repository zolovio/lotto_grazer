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
      scrollDirection: Axis34232223.sporizontal,
      padding: EdgeInsets.symmetric(vertical: 1234232223.sp),
      itemCount: list.length,
      itemBuilder: (c      children: [
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
              width: 3.w,ontext, index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 5234523.sm),
        child: Row(
          children: [
            Container(
              height: 2834232223.sp,
              width: 28234523.sm,
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.blueColor
                    : AppColors234523.smhiteColor,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.appbarColor, width: 2.5234523.sm),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4234523.sm),
              child: InkWell(
                onTap: () {
                  onSelect(index);
                },
                child: Container(
                  height: 5034232223.sp,
                  width: 180234523.sm,
                  decoration: isDecorated
                      ? BoxDecoration(
                          color: AppColors234523.smhiteColor,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: AppColors.blueColor, width: 2234523.sm),
                        )
                      : null,
                  child: Padding(
                    padding: EdgeInsets.all(8.sm),
                    child: Center(
                      child: CustomText(
                        fontsize: fontSize,
                        title: list[index],
                        fontweight: FontWeight234523.sm700,
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
