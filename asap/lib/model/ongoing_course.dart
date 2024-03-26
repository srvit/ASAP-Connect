class TrainingModel {
  final String id;
  final int status;
  final Course course;
  final Branch branch;
  final String date;
  final String time;
  final Batch batch;
  final List<Partner> trainingPartner;
  final List<Partner> certificationPartner;
  final List<Partner> operatingPartner;
  final Trainer trainer;

  TrainingModel({
    required this.id,
    required this.status,
    required this.course,
    required this.branch,
    required this.date,
    required this.time,
    required this.batch,
    required this.trainingPartner,
    required this.certificationPartner,
    required this.operatingPartner,
    required this.trainer,
  });

  factory TrainingModel.fromJson(Map<String, dynamic> json) {
    return TrainingModel(
      id: json['_id'],
      status: json['status'],
      course: Course.fromJson(json['course']),
      branch: Branch.fromJson(json['branch']),
      date: json['date'],
      time: json['time'],
      batch: Batch.fromJson(json['batch']),
      trainingPartner: (json['trainingPartner'] as List)
          .map((partnerJson) => Partner.fromJson(partnerJson))
          .toList(),
      certificationPartner: (json['certificationPartner'] as List)
          .map((partnerJson) => Partner.fromJson(partnerJson))
          .toList(),
      operatingPartner: (json['operatingPartner'] as List)
          .map((partnerJson) => Partner.fromJson(partnerJson))
          .toList(),
      trainer: Trainer.fromJson(json['trainer']),
    );
  }
}

class Course {
  final String id;
  final String name;
  final String duration;
  final String unit;
  final String image;
  final String permalink;

  Course({
    required this.id,
    required this.name,
    required this.duration,
    required this.unit,
    required this.image,
    required this.permalink,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['_id'],
      name: json['name'],
      duration: json['duration'],
      unit: json['unit'],
      image: json['image'],
      permalink: json['permalink'],
    );
  }
}

class Branch {
  final String id;
  final String name;

  Branch({
    required this.id,
    required this.name,
  });

  factory Branch.fromJson(Map<String, dynamic> json) {
    return Branch(
      id: json['_id'],
      name: json['name'],
    );
  }
}

class Batch {
  final String id;
  final String name;
  final String startDate;
  final String endDate;

  Batch({
    required this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
  });

  factory Batch.fromJson(Map<String, dynamic> json) {
    return Batch(
      id: json['_id'],
      name: json['name'],
      startDate: json['startDate'],
      endDate: json['endDate'],
    );
  }
}

class Partner {
  final String id;
  final String name;
  final String logo;

  Partner({
    required this.id,
    required this.name,
    required this.logo,
  });

  factory Partner.fromJson(Map<String, dynamic> json) {
    return Partner(
      id: json['_id'],
      name: json['name'],
      logo: json['logo'],
    );
  }
}

class Trainer {
  final String id;
  final String name;

  Trainer({
    required this.id,
    required this.name,
  });

  factory Trainer.fromJson(Map<String, dynamic> json) {
    return Trainer(
      id: json['_id'],
      name: json['name'],
    );
  }
}
