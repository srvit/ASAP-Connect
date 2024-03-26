class ExistingUserModel {
  Verified? verified;
  List<dynamic>? wishlistedCourses;
  String? id;
  int? status;
  int? registered;
  String? firstname;
  String? lastname;
  String? email;
  String? mobile;
  String? district;
  List<dynamic>? interestedAreas;
  int? totalPaidAmount;
  int? totalDueAmount;
  List<dynamic>? documents;
  List<dynamic>? qualifications;
  List<dynamic>? workExperience;
  String? date;
  String? time;
  String? createdAt;
  String? updatedAt;
  int? v;
  String? uniqueId;
  String? branch;
  int? gender;
  int? result;
  String? accessToken;
  String? refreshToken;

  ExistingUserModel({
    this.verified,
    this.wishlistedCourses,
    this.id,
    this.status,
    this.registered,
    this.firstname,
    this.lastname,
    this.email,
    this.mobile,
    this.district,
    this.interestedAreas,
    this.totalPaidAmount,
    this.totalDueAmount,
    this.documents,
    this.qualifications,
    this.workExperience,
    this.date,
    this.time,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.uniqueId,
    this.branch,
    this.gender,
    this.result,
    this.accessToken,
    this.refreshToken,
  });

  factory ExistingUserModel.fromJson(Map<String, dynamic> json) {
    return ExistingUserModel(
      verified: Verified.fromJson(json['verified']),
      wishlistedCourses: json['wishlistedCourses'],
      id: json['_id'],
      status: json['status'],
      registered: json['registered'],
      firstname: json['firstname'],
      lastname: json['lastname'],
      email: json['email'],
      mobile: json['mobile'],
      district: json['district'],
      interestedAreas: json['interestedAreas'],
      totalPaidAmount: json['totalPaidAmount'],
      totalDueAmount: json['totalDueAmount'],
      documents: json['documents'],
      qualifications: json['qualifications'],
      workExperience: json['workExperience'],
      date: json['date'],
      time: json['time'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      v: json['__v'],
      uniqueId: json['unique_id'],
      branch: json['branch'],
      gender: json['gender'],
      result: json['result'],
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
    );
  }
}

class Verified {
  bool? mobile;
  String? mobVerifiedDate;
  String? mobVerifiedTime;
  bool? email;
  bool? aadhar;

  Verified({
    this.mobile,
    this.mobVerifiedDate,
    this.mobVerifiedTime,
    this.email,
    this.aadhar,
  });

  factory Verified.fromJson(Map<String, dynamic> json) {
    return Verified(
      mobile: json['mobile'],
      mobVerifiedDate: json['mobVerifiedDate'],
      mobVerifiedTime: json['mobVerifiedTime'],
      email: json['email'],
      aadhar: json['aadhar'],
    );
  }
}
