import 'package:flutter/material.dart';
import 'package:portfolio/res/res.dart';

class CustomeTextButton extends StatelessWidget {
  const CustomeTextButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(
          Styles.white10.copyWith(
              // fontWeight: FontWeight.bold,
              ),
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return ColorsValue.primaryColor;
            }
            return Colors.white;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            return Colors.transparent;
          },
        ),
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
