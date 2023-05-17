class Doctor {
  String name;
  String email;
  String password;
  String areaOfExpertise;

  Doctor({
    required this.name,
    required this.email,
    required this.password,
    required this.areaOfExpertise,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      areaOfExpertise: json['areaOfExpertise'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'areaOfExpertise': areaOfExpertise,
    };
  }
}
