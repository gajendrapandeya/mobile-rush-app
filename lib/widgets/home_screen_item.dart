import 'package:challenge_one/utils/color_utils.dart';
import 'package:flutter/material.dart';

class HomeScreenItem extends StatelessWidget {
  const HomeScreenItem({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.assetUrl,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final String assetUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        color: ColorUtils.brightSaffron,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(
            AssetImage(assetUrl),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
