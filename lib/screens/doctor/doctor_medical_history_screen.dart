import 'package:dom_sys/shared/app_colors.dart';
import 'package:dom_sys/widgets/custom_text16.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/custom_text12.dart';

class DoctorMedicalHistoryScreen extends StatelessWidget {
  const DoctorMedicalHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: 780.h,
      width: 375.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFDFE8F6),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Medical History",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.fontMainColor),
          ),
          ...List.generate(2, (index) => _singLeMedicalHistory())
        ],
      ),
    );
  }

  Widget _singLeMedicalHistory() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(),
                    SizedBox(
                      width: 8.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sarah Lee",
                          style: TextStyle(
                              color: AppColors.fontMainColor, fontSize: 14.sp),
                        ),
                        const CustomText12(text: "#DOC6353"),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 36.h,
                  width: 70.w,
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(color: Color(0xFFCFFCD4)),
                  child: const Center(
                      child: Text(
                    "Success",
                    style: TextStyle(color: Color(0xFF479B36)),
                  )),
                ),
              ],
            ),
          ),
          _singleMedBodyHistory(
            "Date",
            "Monthly Medical Check-up",
            AppColors.backgroundHeadColor,
          ),
          _singleMedBodyHistory(
            "Date",
            "Dec 22,2023",
            Colors.white,
          ),
          _singleMedBodyHistory(
            "Time",
            "12:00 Pm",
            Colors.white,
          ),
          _singleMedBodyHistory(
            "Total",
            "\$ign 520",
            AppColors.backgroundHeadColor,
          ),
          _singleMedBodyHistory(
            "Pay with",
            "Oran Bank",
            Colors.white,
          ),
          const Divider(
            thickness: 2,
            color: Color(0xffEFF3FA),
          ),
        ],
      );
  Widget _text(String text) => Text(
        text,
        style: TextStyle(
          color: AppColors.fontMainColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget _singleMedBodyHistory(String text1, String text2, Color background) =>
      Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: background, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _text(
              text1,
            ),
            _text(
              text2,
            )
          ],
        ),
      );
}
