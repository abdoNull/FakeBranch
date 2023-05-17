import 'package:flutter/foundation.dart';
import '../models/appointment.dart';
import '../models/patient.dart';
import '../services/api_service.dart';

class ApiProvider with ChangeNotifier {
  final ApiService apiService = ApiService();
  List<Appointment> appointments = [];
  List<Patient> patients = [];

  Future<void> fetchAppointments() async {
    try {
      appointments = await apiService.getAppointments();
      notifyListeners();
    } catch (e) {
      throw Exception('Failed to load Appointment');
    }
  }

  Future<void> fetchPatients() async {
    try {
      patients = await apiService.getPatients();
      notifyListeners();
    } catch (e) {
      // Handle the error later dont forget please
      throw Exception('Failed to load Patients');
    }
  }
}
