class Patient {
  String fullname;
  DateTime dateOfBirth;
  String address;

  Patient({required this.fullname, required this.dateOfBirth, required this.address});

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      fullname: json['name'],
      dateOfBirth:  json['dateOfBirth'],// DateTime.parse(json['dateOfBirth']),
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': fullname,
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'address': address,
    };
  }
}
