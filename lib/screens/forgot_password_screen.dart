import 'package:challenge_one/utils/color_utils.dart';
import 'package:challenge_one/widgets/button.dart';
import 'package:challenge_one/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _emailFocusNode = FocusNode();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo_ebpearls.png',
                  height: 140,
                  width: 140,
                ),
                Container(
                  transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                  width: double.infinity,
                  child: const Text(
                    'Forgot your password?',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(0.0, -15.0, 0.0),
                  width: double.infinity,
                  child: const Text(
                    'Let\'s fix that. Provide us with your email address you use to log in to EB Pearls, and we\'ll send you a link to reset your password.',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                _getTextInputFields(),
                const SizedBox(
                  height: 16,
                ),
                Button(
                    text: 'Reset',
                    onPressed: () {
                      Navigator.of(context).pop();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  _getTextInputFields() {
    return Column(
      children: [
        CustomTextFormField(
          labelText: 'Email',
          keyboardType: TextInputType.emailAddress,
          focusNode: _emailFocusNode,
          controller: _emailController,
        ),
      ],
    );
  }
}
