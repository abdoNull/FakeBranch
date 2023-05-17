import 'package:dom_sys/models/appointment.dart';
import 'package:dom_sys/services/api_service.dart';
import 'package:dom_sys/shared/app_colors.dart';
import 'package:dom_sys/widgets/custom_appbar.dart';
import 'package:dom_sys/widgets/custom_drawer.dart';
import 'package:dom_sys/widgets/custom_text16.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/custom_text14.dart';

class DcotorAppointmentScreen extends StatefulWidget {
  const DcotorAppointmentScreen({super.key});

  @override
  State<DcotorAppointmentScreen> createState() =>
      _DcotorAppointmentScreenState();
}

class _DcotorAppointmentScreenState extends State<DcotorAppointmentScreen> {
  ApiService api = ApiService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: CustomAppBar(context: context, title: "Appointments"),
      drawer: const CustomDrawer(),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _filterBtn(),
              Expanded(
                child: FutureBuilder<List<Appointment>>(
                  future: ApiService().getAppointments(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator.adaptive();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (snapshot.hasData) {
                      final appointments = snapshot.data!;
                      return ListView.builder(
                        itemCount: appointments.length,
                        itemBuilder: (context, index) {
                          final appointment = appointments[index];
                           return _singleAppointment(appointment);
                        },
                      );
                    } else {
                      return const Text('No appointments found');
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _filterBtn() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 48.h,
            width: 146.w,
            decoration: BoxDecoration(
              color: const Color(0xFFDFE8F6),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Jan 16, 2023",
                  style: TextStyle(fontSize: 14, color: AppColors.mainColor),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.mainColor,
                ),
              ],
            ),
          ),
          Container(
            height: 48,
            width: 95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 48.0,
                  width: 42.5,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                  ),
                  child: Image.asset(
                    "assets/Calendar.png",
                    fit: BoxFit.contain,
                    height: 24.0,
                    width: 24.0,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 48.0,
                  width: 43.5,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                  ),
                  child: Image.asset(
                    "assets/Filter.png",
                    fit: BoxFit.contain,
                    height: 24.0,
                    width: 24.0,
                  ),
                ),
              ],
            ),
          )
        ],
      );


  Widget _singleAppointment(
    Appointment appointment
  ) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: 228.h,
          width: 327.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFFDFE8F6),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const CircleAvatar(),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText16(text: appointment.fullname),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomText14(text: appointment.date),
                    ],
                  )
                ],
              ),
              //CustomText14(text: text),
              Text(
                "I have been experiencing stomach ache and nausea since yesterday. I couldn't eat anything, and I feel weak",
                style:
                    TextStyle(fontSize: 16, color: AppColors.fontSecondColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 124.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFF103F74),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
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
                    width: 124.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                      // Set the background color to 103F74
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xFFDFE8F6),
                      ), // Set the border radius to 8
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
      );
}
