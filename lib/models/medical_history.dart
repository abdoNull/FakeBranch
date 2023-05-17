class MedicalHistory {
  String id;
  String patientName;
  String doctorName;
  String condition;
  String treatment;
  DateTime date;

  MedicalHistory({
    required this.id,
    required this.patientName,
    required this.doctorName,
    required this.condition,
    required this.treatment,
    required this.date,
  });

  factory MedicalHistory.fromJson(Map<String, dynamic> json) {
    return MedicalHistory(
      id: json['id'],
      patientName: json['patientName'],
      doctorName: json['doctorName'],
      condition: json['condition'],
      treatment: json['treatment'],
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'patientName': patientName,
      'doctorName': doctorName,
      'condition': condition,
      'treatment': treatment,
      'date': date.toIso8601String(),
    };
  }
}
