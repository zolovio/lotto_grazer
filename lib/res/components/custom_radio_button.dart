import 'package:flutter/material.dart';
import 'package:lotto_grazer/res/colors.dart';

class CustomRadioButton<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;

  const CustomRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 20,
      height: 20,
      decoration: ShapeDecoration(
        shape: const CircleBorder(
          side: BorderSide(color: AppColors.lightBlueColor),
        ),
        color: isSelected ? AppColors.backgroundColor : Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () => onChanged(value),
        splashColor: Colors.teal.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              _buildLabel(),
            ],
          ),
        ),
      ),
    );
  }
}
