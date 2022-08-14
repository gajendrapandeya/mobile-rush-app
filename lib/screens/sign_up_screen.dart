import 'package:challenge_one/screens/terms_and_condition_screen.dart';
import 'package:challenge_one/utils/color_utils.dart';
import 'package:challenge_one/utils/transition_utils.dart';
import 'package:challenge_one/widgets/button.dart';
import 'package:challenge_one/widgets/custom_text_form_field.dart';
import 'package:challenge_one/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _fullNameFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _emailController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool agree = false;

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
      body: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/logo_ebpearls.png',
                    height: 140,
                    width: 140,
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                  width: double.infinity,
                  child: const Text(
                    'Let\'s start by creating your account!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                _getTextInputFields(),
                const SizedBox(
                  height: 32.0,
                ),
                Button(
                  text: 'Create Account',
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(
                  height: 24.0,
                ),
                TermsAndCondition(
                  leadingText:
                      'By clicking \' Create Account \', I agree to EB Pearls',
                  subText: 'Terms and Conditions.',
                  onClicked: () {
                    Navigator.of(context).push(
                      TransitionUtils.slideTransition(
                        child: const TermsAndConditionScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getTextInputFields() {
    return Column(
      children: [
        CustomTextFormField(
          labelText: 'Full Name',
          keyboardType: TextInputType.text,
          focusNode: _fullNameFocusNode,
          controller: _fullNameController,
        ),
        const SizedBox(
          height: 16.0,
        ),
        CustomTextFormField(
          labelText: 'Email',
          keyboardType: TextInputType.emailAddress,
          focusNode: _emailFocusNode,
          controller: _emailController,
        ),
        const SizedBox(
          height: 16.0,
        ),
        CustomTextFormField(
          labelText: 'Password',
          keyboardType: TextInputType.visiblePassword,
          focusNode: _passwordFocusNode,
          controller: _passwordController,
        ),
      ],
    );
  }
}
