import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';
import '../../widgets/custom_text14.dart';
import '../../widgets/custom_text16.dart';

class PatientDetailsScreen extends StatelessWidget {
  const PatientDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
            "Patient Detail",
            style: TextStyle(color: AppColors.fontMainColor, fontSize: 16),
          ),
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _patientInfo(context),
                const SizedBox(
                  height: 15,
                ),
                _patientInformation(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _patientInfo(BuildContext context) => Container(
        padding: const EdgeInsets.all(32.0),
        height: MediaQuery.of(context).size.height / 2.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFFDFE8F6),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(),
            SizedBox(
              height: 10,
            ),
            const Text.rich(
              TextSpan(
                text: 'Patient ID ',
                style: TextStyle(
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: '#DOC6353',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText16(text: "Mr Marke Brow"),
                SizedBox(
                  height: 10,
                ),
                CustomText14(text: "321 Maple St, Anytown, USA"),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "15",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText14(text: "Appointment")
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "12",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomText14(text: "Completed")
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor,
                  minimumSize: const Size(295, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("View detail patient"),
              ),
            ),
          ],
        ),
      );
  Widget _patientInformation(BuildContext context) => Container(
        padding: const EdgeInsets.all(32.0),
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFFDFE8F6),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Patient information",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText14(text: "Weight"),
                CustomText14(text: "165lb")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText14(text: "Height"),
                CustomText14(text: "1,80 m")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText14(text: "Blood Type"),
                CustomText14(text: "O- (Negative)")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText14(text: "Blood Glucose"),
                CustomText14(text: "92mg/dL")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText14(text: "Blood Pressure"),
                CustomText14(text: "120/80mmHg")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText14(text: "Disease"),
                CustomText14(text: "Diabetes")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText14(text: "Alergies"),
                CustomText14(text: "Peanut")
              ],
            ),
          ],
        ),
      );
}
