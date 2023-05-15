import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;

  const CustomTextFormField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Color(0xFFC5D0E6)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
          ),
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: (value) {
            if (validator != null) {
              return validator!(value);
            }
            if (hintText == 'Email') {
              final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
              if (value == null || value.isEmpty) {
                return 'Please enter your email address';
              } else if (!emailRegex.hasMatch(value)) {
                return 'Please enter a valid email address';
              }
            } else if (hintText == 'Password') {
              if (value == null || value.isEmpty) {
                return 'Please enter a password';
              } else if (value.length < 8) {
                return 'Password must be at least 8 characters long';
              }
            } else if (hintText == 'Full Name') {
              if (value == null || value.isEmpty) {
                return 'Please enter your full name';
              } else if (value.length < 8) {
                return 'Full name must be at least 8 characters long';
              }
            }
            return null;
          },
        ),
      ),
    );
  }
}
