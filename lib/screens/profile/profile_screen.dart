import 'package:dom_sys/screens/profile/edit_profile_screen.dart';
import 'package:dom_sys/widgets/custom_appbar.dart';
import 'package:dom_sys/widgets/custom_drawer.dart';
import 'package:dom_sys/widgets/custom_text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/app_colors.dart';
import '../../widgets/custom_text16.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context, title: "Profile"),
      drawer: const CustomDrawer(),
      body: ListView(
        children: [_profileInfo(context), _profileDescription()],
      ),
    );
  }

  Widget _profileInfo(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(12.0),
          height: 313.h,
          width: 327.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFFDFE8F6),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    'assets/Rectangle 39901.png', // Replace with your main image path
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: -33,
                    left: 0,
                    right: 220,
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText16(text: "dr. Selena ortagq"),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfileScreen()),
                    ),
                    child: Icon(
                      Icons.edit_outlined,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
              const CustomText14(text: "Specialist of Skin surgery"),
                      SizedBox(height: 5.h,),

              Container(
                height: 41.h,
                width: 155.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFDFE8F6),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColors.mainColor,
                    ),
                    Text(
                      "Alger, Algeria",
                      style:
                          TextStyle(fontSize: 14, color: AppColors.mainColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _profileDescription() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(12.0),
          height: 426.h,
          width: 327.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFFDFE8F6),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:   [
             const  CustomText16(text: "Profile Description"),
          SizedBox(height: 15.h,),
           const   CustomText14(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore"),
         const    CustomText14(text: "Nunc sed augue lacus viverra. Posuere:"),
              ...List.generate(7, (index) => const CustomText14(text: "Etiam dignissim diam quis enim lobortis scelerisque fermentum."),)
           
            ],
          ),
        ),
      );
}
