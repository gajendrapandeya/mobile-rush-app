import 'package:challenge_one/utils/app_contants.dart';
import 'package:challenge_one/utils/color_utils.dart';
import 'package:flutter/material.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(
                Icons.chevron_left,
                size: 42.0,
                color: ColorUtils.brightSaffron,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    AppConstants.termsAndCondition,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
