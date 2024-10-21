import 'package:flutter/material.dart';

class GestureDetectorText extends StatelessWidget {
  const GestureDetectorText({
    super.key, required this.text, this.style, this.function,
  });
  final String text;
  final TextStyle? style;
  final VoidCallback? function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: function,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
