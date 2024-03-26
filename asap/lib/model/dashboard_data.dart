class User {
  final String id;
  final String firstname;
  final String lastname;
  final String email;
  final String mobile;
  final List<Course> wishlistedCourses;
  final int progression;

  User({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.mobile,
    required this.wishlistedCourses,
    required this.progression,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    List<Course> courses = List<Course>.from(
        json['wishlistedCourses'].map((x) => Course.fromJson(x)));
    return User(
      id: json['_id'] ?? '',
      firstname: json['firstname'] ?? '',
      lastname: json['lastname'] ?? '',
      email: json['email'] ?? '',
      mobile: json['mobile'] ?? '',
      wishlistedCourses: courses,
      progression: json['progression'] ?? 0,
    );
  }
}

class Course {
  final String id;
  final String name;
  final String duration;
  final String unit;
  final String mode;
  final String date;
  final String image;

  Course({
    required this.id,
    required this.name,
    required this.duration,
    required this.unit,
    required this.mode,
    required this.date,
    required this.image,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      duration: json['duration'] ?? '',
      unit: json['unit'] ?? '',
      mode: json['mode'] ?? '',
      date: json['date'] ?? '',
      image: json['image'] ?? '',
    );
  }
}
