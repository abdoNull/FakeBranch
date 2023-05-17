import 'dart:convert';
import 'package:dom_sys/models/appointment.dart';
import 'package:dom_sys/models/patient.dart';
import 'package:http/http.dart' as http;
import '../config.dart';

class ApiService {
  
  Future<List<Appointment>> getAppointments() async {
    final response = await http.get(
      Uri.parse("$kBaseUrl/appointment"),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List<dynamic>;
      final appointments =
          data.map((result) => Appointment.fromJson(result)).toList();
      return appointments;
    } else {
      throw Exception('Failed to load Appointments');
    }
  }

  Future<List<Patient>> getPatients() async {
    final response = await http.get(
      Uri.parse("$kBaseUrl/patient"),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List<dynamic>;
      final patients = data.map((result) => Patient.fromJson(result)).toList();
      return patients;
    } else {
      throw Exception('Failed to load Patient');
    }
  }
}
