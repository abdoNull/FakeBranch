import 'package:dom_sys/screens/authentication/login_screen.dart';
import 'package:dom_sys/screens/doctor/doctor_dashboard_screen.dart';
import 'package:dom_sys/widgets/rounded_button.dart';
import 'package:dom_sys/widgets/social_login_button%20.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/app_colors.dart';
import '../../widgets/custom_text14.dart';
import '../../widgets/custom_text16.dart';
import '../../widgets/custom_textformfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
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
                  height: 24.h,
                ),
                _formField(),
                SizedBox(
                  height: 24.h,
                ),
                FittedBox(
                  child: Row(
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          // fillColor: MaterialStateProperty.resolveWith(Colors.white),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                            isChecked = value!;
                            });
                          }),
                      const Text.rich(
                        TextSpan(
                          text: 'By signing up to Healthy f24 you agree all ',
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
                  height: 24.h,
                ),
                RoundedButton(
                    text: "Sign Up",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DashboardScreen(),
                        ),
                      );
                    }),
                SizedBox(
                  height: 24.h,
                ),
                const Text(
                  "Or",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 24.h,
                ),
                _socialLogin(),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  ),
                  child: const Text.rich(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const CustomText16(
                text: 'Sign Up to your account',
              ),
              const SizedBox(
                width: 16,
              ),
              Image.asset('assets/image 296.png')
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Let’s Enter your data to continue use healthy 24 services ",
            style: TextStyle(fontSize: 14, color: AppColors.fontSecondColor),
          )
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
            height: 10.h,
          ),
          SocialLoginButton(
              text: "Sgn up with facebook",
              imagePath: "assets/Facebook.png",
              onPressed: () {}),
        ],
      );
}
