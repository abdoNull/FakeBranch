import 'package:dom_sys/widgets/custom_text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/app_colors.dart';
import '../../widgets/custom_text16.dart';
import '../../widgets/custom_textformfield.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.fontMainColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Edit Profile",
          style: TextStyle(color: AppColors.fontMainColor, fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            height: 1050.h,
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
                  "Your profile will be displayed publicly so be careful what you share",
                  style: TextStyle(
                      color: AppColors.fontSecondColor, fontSize: 14.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomText16(text: "Cover"),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Container(
                    height: 124.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/Rectangle 39901.png', // Replace with your main image path
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                _profilePic(),
                SizedBox(
                  height: 20.h,
                ),
                _formField(),
                 SizedBox(
                  height: 10.h,
                ),
                _buttomBtn()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _formField() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            text: 'Speciality',
          ),
          SizedBox(
            height: 12,
          ),
          CustomTextFormField(
            hintText: 'Enter Your Speciality here',
          ),
          SizedBox(
            height: 24,
          ),
          CustomText16(
            text: 'Location',
          ),
          SizedBox(
            height: 12,
          ),
          CustomTextFormField(
            hintText: 'Enter Your Location here',
          ),
          SizedBox(
            height: 20,
          ),
          CustomText16(
            text: 'Profile description',
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Color(0xFFC5D0E6)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter you profile description here",
                  border: InputBorder.none,
                ),
              ),
            ),
          )
        ],
      );

  Widget _profilePic() => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText16(text: "Profile picture"),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF103F74),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: CircleAvatar()),
              Container(
                width: 117,
                height: 42,
                decoration: BoxDecoration(
                  color: const Color(0xFF103F74),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Change photo',
                    style: TextStyle(
                      color: Colors.white, // Set the text color to white
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: 76,
                height: 42,
                decoration: BoxDecoration(
                  // Set the background color to 103F74
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFDFE8F6),
                  ), // Set the border radius to 8
                ),
                child: Center(
                  child: Text(
                    'Remove',
                    style: TextStyle(
                      color: AppColors
                          .fontMainColor, // Set the text color to white
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      );

  Widget _buttomBtn() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 124,
            height: 42,
            decoration: BoxDecoration(
              // Set the background color to 103F74
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xFFDFE8F6),
              ), // Set the border radius to 8
            ),
            child: Center(
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: AppColors.fontMainColor, // Set the text color to white
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: 124,
            height: 42,
            decoration: BoxDecoration(
              color: const Color(0xFF103F74),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                'Save Profile',
                style: TextStyle(
                  color: Colors.white, // Set the text color to white
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      );
}
