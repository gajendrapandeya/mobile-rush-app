import 'package:challenge_one/utils/color_utils.dart';
import 'package:flutter/material.dart';

class OurTeamScreen extends StatelessWidget {
  const OurTeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
          title: const Text(
            'Our Team',
            style: TextStyle(
              color: ColorUtils.stoneBlack,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/logo_ebpearls.png',
                height: 100,
                width: 100,
              ),
            ),
            const Text(
              'This work is in progress',
              style: TextStyle(
                color: ColorUtils.stoneBlack,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
