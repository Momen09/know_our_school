//TODO: add your model class here

class School {
  final String name;
  final String address;
  final String studentsNo;
  final String teachersNo;

  School({
    required this.name,
    required this.address,
    required this.studentsNo,
    required this.teachersNo,
  });

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      name: json['School Name'],
      address: json['School Address'],
      studentsNo: json['Number of Students'],
      teachersNo: json['Number of Teachers'],
    );
  }
}
