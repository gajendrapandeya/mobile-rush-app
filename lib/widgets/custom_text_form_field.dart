import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {Key? key,
      this.keyboardType = TextInputType.text,
      required this.labelText,
      required this.focusNode,
      this.nextFocusNode,
      required this.controller,
      this.prefixText})
      : super(key: key);

  final TextInputType keyboardType;
  final String labelText;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final TextEditingController controller;
  final String? prefixText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        TextFormField(
          controller: widget.controller,
          validator: _validateInput,
          focusNode: widget.focusNode,
          keyboardType: widget.keyboardType,
          cursorColor: Colors.black,
          maxLength: widget.keyboardType == TextInputType.number ? 10 : null,
          obscureText: widget.keyboardType == TextInputType.visiblePassword &&
              _obsecureText,
          textInputAction: TextInputAction.next,
          scrollPadding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height,
          ),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
          decoration: InputDecoration(
            isDense: true,
            suffixIcon: widget.keyboardType == TextInputType.visiblePassword
                ? _showSuffixIcon(
                    widget.keyboardType == TextInputType.visiblePassword)
                : null,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade600,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue.shade600,
                width: 1.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).errorColor,
              ),
            ),
          ),
          onFieldSubmitted: (value) {
            _nextFocusNode(widget.nextFocusNode);
          },
        ),
      ],
    );
  }

  void _nextFocusNode(FocusNode? focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  String? _validateInput(
    String? value,
  ) {
    if (value!.trim().isEmpty) {
      return 'Please enter the field';
    }
    return null;
  }

  Widget _showSuffixIcon(bool isPasswordField) {
    if (_obsecureText && isPasswordField) {
      return InkWell(
        onTap: _togglePassword,
        child: const Icon(
          MdiIcons.eyeOff,
          size: 18.0,
          color: Colors.black45,
        ),
      );
    } else {
      return InkWell(
        onTap: _togglePassword,
        child: const Icon(
          MdiIcons.eyeOutline,
          size: 18.0,
          color: Colors.black45,
        ),
      );
    }
  }

  void _togglePassword() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }
}
