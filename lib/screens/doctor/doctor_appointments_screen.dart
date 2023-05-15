import 'package:dom_sys/shared/app_colors.dart';
import 'package:dom_sys/widgets/custom_text16.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_text14.dart';

class DcotorAppointmentScreen extends StatefulWidget {
  const DcotorAppointmentScreen({super.key});

  @override
  State<DcotorAppointmentScreen> createState() =>
      _DcotorAppointmentScreenState();
}

class _DcotorAppointmentScreenState extends State<DcotorAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 228,
          width: 327,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      CustomText16(text: "Mr Marke Brow"),
                      CustomText14(text: "09AM - 10AM"),
                    ],
                  )
                ],
              ),
              CustomText14(
                  text:
                      "I have been suffering from chronic back pain for a while now, and it's affecting my daily routine"),
              Row(
                children: [
                  Container(
                    width: 124,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Color(
                          0xFF103F74), // Set the background color to 103F74
                      borderRadius: BorderRadius.circular(
                          8), // Set the border radius to 8
                    ),
                    child: Center(
                      child: Text(
                        'Accepte',
                        style: TextStyle(
                          color: Colors.white, // Set the text color to white
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
                      color: Colors.white, // Set the background color to 103F74
                      borderRadius: BorderRadius.circular(
                          8), // Set the border radius to 8
                    ),
                    child: Center(
                      child: Text(
                        'Decline',
                        style: TextStyle(
                          color: AppColors
                              .fontMainColor, // Set the text color to white
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
