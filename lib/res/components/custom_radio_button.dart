import 'package:flutter/material.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';

class CustomRadioButton extends StatelessWidget {
  final List<String> list;
  final int selectedIndex;
  final Function onSelect;
  final double radioSize;
  final bool isDecorated;
  final double fontSize;
  const CustomRadioButton(
      {Key? key,
      required this.list,
      required this.selectedIndex,
      required this.onSelect,
      this.radioSize = 30.0,
      this.isDecorated = true,
      this.fontSize = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      itemCount: list.length,
      itemBuilder: (context, index) => Row(
        children: [
          Container(
            height: radioSize,
            width: radioSize,
            decoration: BoxDecoration(
              color: selectedIndex == index
                  ? AppColors.blueColor
                  : AppColors.whiteColor,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.appbarColor, width: 2.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              onTap: () {
                onSelect(index);
              },
              child: Container(
                decoration: isDecorated
                    ? BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(8.0),
                        border:
                            Border.all(color: AppColors.blueColor, width: 2.0),
                      )
                    : null,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
    );
  }
}
