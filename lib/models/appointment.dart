class Appointment {
  String date;
  String fullname;
  String reason;

  Appointment({required this.date, required this.fullname, required this.reason});

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      date: json['date'],
      fullname: json['fullname'],
      reason: json['reason'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'fullname': fullname,
      'reason': reason,
    };

    
  }
  @override
  String toString() {
    return 'Appointment: {date: $date, reason: $reason, fullName: $fullname, }';
  }
}
