import 'package:challenge_one/utils/color_utils.dart';
import 'package:challenge_one/widgets/button.dart';
import 'package:challenge_one/widgets/contact_widget.dart';
import 'package:challenge_one/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _firstNameFocusNode = FocusNode();
  final _lastNameFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _emailController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Contact Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorUtils.stoneBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  _getTextInputFields(),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const ContactWidget(),
                  const SizedBox(
                    height: 32.0,
                  ),
                  Button(
                      text: 'Submit',
                      radius: 32.0,
                      onPressed: () {
                        _submitForm();
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pop();
      _formKey.currentState!.save();
    }
  }

  Widget _getTextInputFields() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            labelText: 'First Name*',
            keyboardType: TextInputType.text,
            focusNode: _firstNameFocusNode,
            controller: _firstNameController,
          ),
          const SizedBox(
            height: 16.0,
          ),
          CustomTextFormField(
            labelText: 'Last Name*',
            keyboardType: TextInputType.text,
            focusNode: _lastNameFocusNode,
            controller: _lastNameController,
          ),
          const SizedBox(
            height: 16.0,
          ),
          CustomTextFormField(
            labelText: 'Email*',
            keyboardType: TextInputType.emailAddress,
            focusNode: _emailFocusNode,
            controller: _emailController,
          ),
          const SizedBox(
            height: 16.0,
          ),
          CustomTextFormField(
            labelText: 'Mobile No*',
            keyboardType: TextInputType.number,
            focusNode: _passwordFocusNode,
            controller: _passwordController,
          ),
        ],
      ),
    );
  }
}
