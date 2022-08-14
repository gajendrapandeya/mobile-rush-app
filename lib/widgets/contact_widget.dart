import 'package:challenge_one/utils/color_utils.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Directionality(
          textDirection: TextDirection.ltr,
          child: SizedBox(
            width: double.infinity,
            child: Text(
              'For a FREE consulation, simply leave your \ndetails below and we will \ncontact you soon.',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            ImageIcon(
              AssetImage('assets/ic_telephone.png'),
              size: 32.0,
              color: Colors.black,
            ),
            SizedBox(
              width: 12.0,
            ),
            Text(
              '02 8880 7857',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorUtils.stoneBlack,
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}
