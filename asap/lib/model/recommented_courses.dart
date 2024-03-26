class RecommentedModel {
  final String id;
  final List<RecommentedCourse> courses;

  RecommentedModel({
    required this.id,
    required this.courses,
  });

  factory RecommentedModel.fromJson(Map<String, dynamic> json) {
    return RecommentedModel(
      id: json['_id'],
      courses: List<RecommentedCourse>.from(
          json['courses'].map((course) => RecommentedCourse.fromJson(course))),
    );
  }
}

class RecommentedCourse {
  final String id;
  final String name;
  final String duration;
  final String unit;
  final String mode;
  final String date;
  final String time;
  final String image;

  RecommentedCourse({
    required this.id,
    required this.name,
    required this.duration,
    required this.unit,
    required this.mode,
    required this.date,
    required this.time,
    required this.image,
  });

  factory RecommentedCourse.fromJson(Map<String, dynamic> json) {
    return RecommentedCourse(
      id: json['_id'] ?? "",
      name: json['name'] ?? "",
      duration: json['duration'] ?? "",
      unit: json['unit'] ?? "",
      mode: json['mode'] ?? "",
      date: json['date'] ?? "",
      time: json['time'] ?? "",
      image: json['image'] ?? "",
    );
  }
}
