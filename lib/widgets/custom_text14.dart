import 'package:dom_sys/shared/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CustomText14 extends StatelessWidget {
  final String text;

  const CustomText14({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 14.sp, color: AppColors.fontSecondColor),
      textAlign: TextAlign.center,
    );
  }
}
