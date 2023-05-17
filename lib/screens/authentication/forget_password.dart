import 'package:dom_sys/widgets/rounded_button.dart';
import 'package:dom_sys/widgets/social_login_button%20.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_text12.dart';
import '../../widgets/custom_text14.dart';
import '../../widgets/custom_text16.dart';
import '../../widgets/custom_textformfield.dart';
import 'check_otp.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

Widget _header() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomText16(
              text: 'Forgot password',
            ),
            SizedBox(
              width: 16,
            ),
            Image.asset('assets/locked.png')
          ],
        ),
        SizedBox(
          height: 24,
        ),
        CustomText14(
          text: "Input your email to recover password to access Healthey 24",
        ),
      ],
    );
Widget _formField() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomText16(
          text: 'Email',
        ),
        SizedBox(
          height: 12,
        ),
        CustomTextFormField(
          hintText: 'Enter Your email here',
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _header(),
                const SizedBox(
                  height: 24,
                ),
                _formField(),
                RoundedButton(text: "Continue", onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckOTP(),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
