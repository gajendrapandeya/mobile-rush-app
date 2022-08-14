import 'package:challenge_one/screens/main_screen.dart';
import 'package:challenge_one/screens/forgot_password_screen.dart';
import 'package:challenge_one/screens/sign_up_screen.dart';
import 'package:challenge_one/utils/transition_utils.dart';
import 'package:challenge_one/widgets/button.dart';
import 'package:challenge_one/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
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
                    'Welcome back, good to see you again!',
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
                  height: 16.0,
                ),
                InkWell(
                  splashColor: Colors.grey.shade200,
                  onTap: () {
                    Navigator.of(context).push(
                      TransitionUtils.slideTransition(
                        child: const ForgotPasswordScreen(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Forgot your Password?',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.red.shade500,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32.0,
                ),
                Button(
                    text: 'Log In',
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        TransitionUtils.slideTransition(
                          child: const MainScreeen(),
                        ),
                      );
                    }),
                const SizedBox(
                  height: 32.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'New to EB Pearls?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      splashColor: Colors.grey.shade200,
                      onTap: () {
                        Navigator.of(context).push(
                          TransitionUtils.slideTransition(
                            child: const SignUpScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        ' Create a free account',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
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
          labelText: 'Email Address',
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
