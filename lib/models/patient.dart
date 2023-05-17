class Patient {
  String fullname;
  String dateOfBirth;
  String address;

  Patient({required this.fullname, required this.dateOfBirth, required this.address});

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      fullname: json['fullname'],
      dateOfBirth:  json['dateOfBirth'].toString(),// DateTime.parse(json['dateOfBirth']),
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': fullname,
      'dateOfBirth': dateOfBirth, //dateOfBirth.toIso8601String(),
      'address': address,
    };
  }
}
