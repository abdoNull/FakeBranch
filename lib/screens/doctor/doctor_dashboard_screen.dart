import 'package:dom_sys/shared/app_colors.dart';
import 'package:dom_sys/widgets/custom_appbar.dart';
import 'package:dom_sys/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import '../../widgets/chart_bars.dart';
import '../../widgets/custom_text16.dart';
import 'doctor_medical_history_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_advanced_calendar/flutter_advanced_calendar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _calendarControllerToday = AdvancedCalendarController.today();
  
  final List<DateTime> events = [
    DateTime.now(),
    DateTime(2023, 10, 10),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(context: context, title: "Dashboard"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _header(),
              SizedBox(
                height: 10.h,
              ),
              _calendar(),
              SizedBox(
                height: 10.h,
              ),
              _chart(),
              SizedBox(
                height: 10.h,
              ),
              const DoctorMedicalHistoryScreen()
            ],
          ),
        ),
      ),
    );
  }

  Widget _chart() => Container(
        padding: const EdgeInsets.all(12.0),
        height: 350.h,
        width: 375.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xFFDFE8F6),
          ),
        ),
        child: Column(
          //  mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText16(text: "Visit This Month"),
            SizedBox(
              height: 30.h,
            ),
            ChartBars(),
          ],
        ),
      );
  Widget _header() => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CustomText16(
                      text: 'Welcome back,',
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Image.asset('assets/image 296.png')
                  ],
                ),
                const CustomText16(
                  text: 'Dr. Taylor',
                ),
              ],
            ),
            const CircleAvatar(),
          ],
        ),
      );

  Widget _calendar() => Container(
        padding: const EdgeInsets.all(12.0),
        height: 430.h,
        width: 375.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xFFDFE8F6),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText16(text: "Calendar"),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.mainColor,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            AdvancedCalendar(
              controller: _calendarControllerToday,
              events: events,
              startWeekDay: 1,
            ),
       
             SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText16(text: "Upcoming"),
                Text(
                  "view all",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 12,
                      color: Color(0xff56ccf2)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              tileColor: Color(0xffF0F9FD),
              leading: CircleAvatar(),
              title: Text("Monthly doctors meet",
                  style:
                      TextStyle(fontSize: 14, color: AppColors.fontMainColor)),
              subtitle: Text(
                "8 April, 2021 | 04:00 PM",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF848FAC),
                ),
              ),
            )
          ],
        ),
      );
}
