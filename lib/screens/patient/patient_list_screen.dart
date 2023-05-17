import 'package:dom_sys/services/api_service.dart';
import 'package:dom_sys/widgets/custom_appbar.dart';
import 'package:dom_sys/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/appointment.dart';
import '../../models/patient.dart';
import '../../providers/api_provider.dart';
import '../../shared/app_colors.dart';
import '../../widgets/custom_text14.dart';
import '../../widgets/custom_text16.dart';
import 'patient_details_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientListScreen extends StatefulWidget {
  const PatientListScreen({super.key});

  @override
  State<PatientListScreen> createState() => _PatientListScreenState();
}

class _PatientListScreenState extends State<PatientListScreen> {
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: CustomAppBar(context: context, title: "Patient List"),
      drawer: const CustomDrawer(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _filterBar(),
              Expanded(
                child: FutureBuilder<List<Patient>>(
                  future: ApiService().getPatients(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (snapshot.hasData) {
                      final patients = snapshot.data!;
                      return ListView.builder(
                        itemCount: patients.length,
                        itemBuilder: (context, index) {
                          final patient = patients[index];
                           return _singlePatient(patient);
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


  Widget _filterBar() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.5, // Set width to 60% of the screen width
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search for patient',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                color: const Color(0xFFEFF3FA),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                "assets/Group 1000001011.png",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                color: const Color(0xFFEFF3FA),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                "assets/Group 1000001012.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      );

  Widget _singlePatient(Patient patient) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(12.0),
          height: 313,
          width: 327,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFFDFE8F6),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      CustomText16(text: patient.fullname),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomText14(text: "321 Maple St, Anytown, USA"),
                    ],
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomText14(text: "Weight"),
                        CustomText14(text: "165lb")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomText14(text: "Blood Pressure"),
                        CustomText14(text: "120/80mmHg")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomText14(text: "Blood Glucose"),
                        CustomText14(text: "92mg/dL")
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PatientDetailsScreen()),
                    )
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor,
                    minimumSize: const Size(295, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text("View detail patient"),
                ),
              )
            ],
          ),
        ),
      );
}
