import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/appointment/appointments_screen.dart';
import '../screens/doctor/doctor_dashboard_screen.dart';
import '../screens/medical_history/medical_history_screen.dart';
import '../screens/messages/message_screen.dart';
import '../screens/notification/notification_screen.dart';
import '../screens/patient/patient_list_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/setting/setting_screen.dart';
import '../shared/app_colors.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ListView(
          children: [
            _drawerHeader(),
            _editMyProfile(),
            _drawerManuElement("Notification", "assets/Notification.png",
                const NotificationScreen(),
                hasTrailing: true),
            _drawerManuElement(
                "Settings", "assets/Setting.png", const SettingScreen()),
             SizedBox(
              height: 30.h,
            ),
            _drawerManuElement(
                "Dashboard", "assets/Chart.png", const DashboardScreen()),
            _drawerManuElement(
                "Patients List", "assets/User.png", const PatientListScreen()),
            _drawerManuElement(
                "Messages", "assets/Chat.png", const MessageScreen()),
            _drawerManuElement("Appointment", "assets/Calendar.png",
                const DcotorAppointmentScreen()),
            _drawerManuElement("Medical History", "assets/Activity.png",
                const MedicalhisotryScreen()),
          ],
        ),
      ),
    );
  }

  Widget _drawerHeader() => ListTile(
        leading: InkWell(
          onTap: () {
            Scaffold.of(context).openEndDrawer();
          },
          child: Container(
            height: 28.14.h,
            width: 32.0.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Frame.png"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        title: Text(
          "Healthy 24.",
          style:
              TextStyle(fontSize: 20.sp, color: AppColors.fontMainColor, fontWeight: FontWeight.bold), // 8C90A8
          textAlign: TextAlign.center,
        ),
      );

  Widget _editMyProfile() => InkWell(
    onTap: () => navigateTo(context, const ProfileScreen()),
    child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 10),
        child: ListTile(
          leading: const CircleAvatar(radius: 25,),
          title: Text(
            "Edit My Profile",
            style:
                TextStyle(fontSize: 14.sp, color: AppColors.fontMainColor), // 8C90A8
            textAlign: TextAlign.center,
          ),
        )),
  );

  Widget _drawerManuElement(String text, String imagePath, Widget screen,
          {bool hasTrailing = false}) =>
      Padding(
          padding: const EdgeInsets.only(left: 16, right: 10),
          child: InkWell(
            onTap: () {
              navigateTo(context, screen);
            },
            child: ListTile(
              trailing: hasTrailing
                  ? Container(
                      height: 16.h,
                      width: 16.w,
                      decoration: BoxDecoration(
                          color: const Color(0xFF1678F2),
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  : const SizedBox(),
              leading: Container(
                height: 30.0.h,
                width: 30.0.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              title: Text(
                text,
                style: TextStyle(
                    fontSize: 15.sp, color: AppColors.fontMainColor), // 8C90A8
                textAlign: TextAlign.center,
              ),
            ),
          ));

  void navigateTo(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
