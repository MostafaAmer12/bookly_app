import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textColor,
    required this.backgroundColor,
    required this.borderRadius,
    required this.text,
  });

  final Color textColor;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius,
              ),
            ),
            child: Text(
              text,
              style: styles.textStyle16.copyWith(color: textColor),
            )),
      ),
    );
  }
}
