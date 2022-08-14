import 'package:challenge_one/utils/color_utils.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.text,
    required this.onPressed,
    this.radius = 6.0,
  }) : super(key: key);
  final String text;
  final Function onPressed;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey.shade200,
      onTap: () {
        onPressed();
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 46.0,
          decoration: BoxDecoration(
            color: ColorUtils.brightSaffron,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
