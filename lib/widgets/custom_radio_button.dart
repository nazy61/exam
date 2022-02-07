import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CustomRadioWidget<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final double width;
  final double height;

  CustomRadioWidget({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.width = 32,
    this.height = 32,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          onChanged(this.value);
        },
        child: Container(
          height: this.height,
          width: this.width,
          decoration: ShapeDecoration(
            shape: CircleBorder(),
            color: value == groupValue
                ? Colors.white
                : AppCustomColors.primaryColor,
          ),
          child: Center(
            child: Container(
              height: this.height - 8,
              width: this.width - 8,
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                color: value == groupValue
                    ? AppCustomColors.primaryColor
                    : Colors.white,
              ),
              child: Center(
                child: Container(
                  height: this.height - 16,
                  width: this.width - 16,
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
