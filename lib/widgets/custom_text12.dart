import 'package:dom_sys/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText12 extends StatelessWidget {
  final String text;

  const CustomText12({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 12.sp, color: AppColors.fontSecondColor),
      textAlign: TextAlign.center,
    );
  }
}
