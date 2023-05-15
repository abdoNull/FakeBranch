import 'package:dom_sys/shared/app_colors.dart';
import 'package:dom_sys/widgets/rounded_button.dart';
import 'package:dom_sys/widgets/social_login_button%20.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_text14.dart';
import '../../widgets/custom_text16.dart';
import '../../widgets/custom_textformfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

Widget _header() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomText16(
              text: 'Sign Up to your account',
            ),
            SizedBox(
              width: 16,
            ),
            Image.asset('assets/image 296.png')
          ],
        ),
        SizedBox(
          height: 24,
        ),
        CustomText14(
          text: "Let’s Enter your data to continue use healthy 24 services ",
        ),
      ],
    );
Widget _formField() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomText16(
          text: 'Full name',
        ),
        SizedBox(
          height: 12,
        ),
        CustomTextFormField(
          hintText: 'Enter Your name here',
        ),
        SizedBox(
          height: 24,
        ),
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
        CustomText16(
          text: 'Password',
        ),
        SizedBox(
          height: 12,
        ),
        CustomTextFormField(
          hintText: 'Enter Your Password here',
        )
      ],
    );

Widget _socialLogin() => Column(
      children: [
        SocialLoginButton(
            text: "Sgn up with Google",
            imagePath: "assets/Google.png",
            onPressed: () {}),
        SizedBox(
          height: 10,
        ),
        SocialLoginButton(
            text: "Sgn up with facebook",
            imagePath: "assets/Facebook.png",
            onPressed: () {}),
      ],
    );

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _header(),
                SizedBox(
                  height: 24,
                ),
                _formField(),
                SizedBox(
                  height: 24,
                ),
                FittedBox(
                  child: Row(
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          // fillColor: MaterialStateProperty.resolveWith(Colors.white),
                          value: false, //isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              //   isChecked = value!;
                            });
                          }),
                      const Text.rich(
                        TextSpan(
                          text: 'By signing up to Healthy 24 you agree all ',
                          children: [
                            TextSpan(
                              text: ' terms ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ' and '),
                            TextSpan(
                              text: ' conditions ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                RoundedButton(text: "Sign Up", onPressed: () {}),
                SizedBox(
                  height: 24,
                ),
                const Text(
                  "Or",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 24,
                ),
                _socialLogin(),
                SizedBox(
                  height: 24,
                ),
                const Text.rich(
                  TextSpan(
                    text: 'You Already have account ?',
                    children: [
                      TextSpan(
                        text: 'Sign in',
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
