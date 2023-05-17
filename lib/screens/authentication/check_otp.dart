import 'package:dom_sys/shared/app_colors.dart';
import 'package:dom_sys/widgets/rounded_button.dart';
import 'package:dom_sys/widgets/social_login_button%20.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../widgets/custom_text12.dart';
import '../../widgets/custom_text14.dart';
import '../../widgets/custom_text16.dart';
import '../../widgets/custom_textformfield.dart';

class CheckOTP extends StatefulWidget {
  const CheckOTP({super.key});

  @override
  State<CheckOTP> createState() => _CheckOTPState();
}

Widget _header() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomText16(
              text: 'OTP Verification',
            ),
            SizedBox(
              width: 16,
            ),
            Image.asset('assets/checkotp.png')
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Text.rich(
          TextSpan(
            text: 'Our team already sent you an email in your email',
            style: TextStyle(color: Color(0xff848Fac), fontSize: 14),
            children: [
              TextSpan(
                text: ' seddikmounirr@gmail.com ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.fontMainColor,
                    fontSize: 14),
              ),
              TextSpan(text: ' to access back your account '),
            ],
          ),
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

class _CheckOTPState extends State<CheckOTP> {
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
                CustomText16(
                  text: '03:10',
                ),
                const SizedBox(
                  height: 24,
                ),
                
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
                    child: PinCodeTextField(
                      textStyle: const TextStyle(color: Colors.black),
                      appContext: context,
                      pastedTextStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 6,
                      obscureText: false,
                      obscuringCharacter: '*',
                      blinkWhenObscuring: true,
                      // animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.length < 3) {
                          return "Valeur invalide";
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                        
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(12),
                          fieldHeight: 50,
                          inactiveColor: Colors.transparent,
                          fieldWidth: MediaQuery.of(context).size.width / 7.5,
                          inactiveFillColor: Colors.white,
                          activeColor: Colors.transparent,
                          selectedFillColor: Colors.transparent,
                          activeFillColor: Colors.white),
                      cursorColor: Colors.black,
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                   
                      keyboardType: TextInputType.number,
                      onCompleted: (v) {},
                      onChanged: (value) {},
                      beforeTextPaste: (text) {
                        return true;
                      },
                    )),
                RoundedButton(text: "Continue", onPressed: () {}),
                const SizedBox(
                  height: 12,
                ),
                const Text.rich(
                  TextSpan(
                    text: 'Didn’t receive verification code?',
                    children: [
                      TextSpan(
                        text: ' Resend',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
