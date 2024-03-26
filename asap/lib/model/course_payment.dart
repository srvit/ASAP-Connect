class CoursePayment {
  String? id;
  Course? course;
  Scholarship? scholarship;
  SkillLoan? skillLoan;
  int? paid;
  int? due;

  CoursePayment({
    this.id,
    this.course,
    this.scholarship,
    this.skillLoan,
    this.paid,
    this.due,
  });

  factory CoursePayment.fromJson(Map<String, dynamic> json) {
    return CoursePayment(
      id: json['_id'],
      course: Course.fromJson(json['course']),
      scholarship: Scholarship.fromJson(json['scholarship']),
      skillLoan: SkillLoan.fromJson(json['skillLoan']),
      paid: json['paid'],
      due: json['due'],
    );
  }
}

class Course {
  List<SkillLoan>? skillLoans;
  List<Scholarship>? scholarships;

  Course({
    this.skillLoans,
    this.scholarships,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      skillLoans: List<SkillLoan>.from(
          json['skillLoans'].map((x) => SkillLoan.fromJson(x))),
      scholarships: List<Scholarship>.from(
          json['scholarships'].map((x) => Scholarship.fromJson(x))),
    );
  }
}

class SkillLoan {
  String? id;
  String? name;
  String? logo;
  String? uniqueId;

  SkillLoan({
    this.id,
    this.name,
    this.logo,
    this.uniqueId,
  });

  factory SkillLoan.fromJson(Map<String, dynamic> json) {
    return SkillLoan(
      id: json['_id'],
      name: json['name'],
      logo: json['logo'],
      uniqueId: json['uniqueId'],
    );
  }
}

class Scholarship {
  String? id;
  String? name;
  String? logo;
  String? uniqueId;

  Scholarship({
    this.id,
    this.name,
    this.logo,
    this.uniqueId,
  });

  factory Scholarship.fromJson(Map<String, dynamic> json) {
    return Scholarship(
      id: json['_id'],
      name: json['name'],
      logo: json['logo'],
      uniqueId: json['uniqueId'],
    );
  }
}
