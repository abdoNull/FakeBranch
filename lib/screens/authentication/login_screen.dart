import 'package:dom_sys/screens/authentication/forget_password.dart';
import 'package:dom_sys/screens/authentication/signup_screen.dart';
import 'package:dom_sys/widgets/rounded_button.dart';
import 'package:dom_sys/widgets/social_login_button%20.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_text12.dart';
import '../../widgets/custom_text14.dart';
import '../../widgets/custom_text16.dart';
import '../../widgets/custom_textformfield.dart';
import '../doctor/doctor_dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
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
             const   SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                        const CustomText12(text: "Remember me"),
                      ],
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ForgetPassword(),
                              ),
                            ),
                        child: const CustomText12(text: "Forgot password?")),
                  ],
                ),
               const  SizedBox(
                  height: 24,
                ),
                RoundedButton(
                    text: "Sign In",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DashboardScreen(),
                        ),
                      );
                    }),
             const    SizedBox(
                  height: 24,
                ),
                const Text(
                  "Or",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
           const      SizedBox(
                  height: 24,
                ),
                _socialLogin(),
            const     SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  ),
                  child: const Text.rich(
                    TextSpan(
                      text: 'Didn’t have an account ?',
                      children: [
                        TextSpan(
                          text: 'Sign Up',
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
      children: [
        Row(
          children: [
            CustomText16(
              text: 'Welcome to healthy24',
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
          text: "Enter your account to use Healthy24 Service",
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

}
