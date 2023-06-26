import 'package:flutter/material.dart';
import 'package:riverpod_todo/common/widgets/app_style.dart';
import 'package:riverpod_todo/common/widgets/reusable_text.dart';

class CustomOtlnButton extends StatelessWidget {
  const CustomOtlnButton({
    super.key,
    this.onTap,
    required this.height,
    required this.width,
    this.buttonColor,
    required this.borderColor,
    required this.text,
  });
  final double height;
  final double width;
  final void Function()? onTap;
  final Color? buttonColor;
  final Color borderColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          border: Border.all(
            width: 1,
            color: borderColor,
          ),
        ),
        child: Center(
          child: ReusableText(
            text: text,
            style: appStyle(
              18,
              borderColor,
              FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
