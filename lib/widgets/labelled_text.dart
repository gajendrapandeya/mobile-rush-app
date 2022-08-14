import 'package:flutter/material.dart';

class LabelledText extends StatelessWidget {
  const LabelledText({
    Key? key,
    required this.label,
    required this.value,
    this.color = Colors.black,
    this.onPressed,
  }) : super(key: key);
  final String label;
  final String value;
  final Color color;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          onTap: () {
            if (onPressed != null) {
              onPressed!();
            }
          },
          child: Text(
            value,
            style: TextStyle(
              fontSize: 16.0,
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
