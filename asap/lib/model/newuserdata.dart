class NewUserData {
  int? status;
  int? registered;
  String? firstname;
  String? lastname;
  String? email;
  String? mobile;
  Verified? verified;
  List<String>? interestedAreas;
  int? totalPaidAmount;
  int? totalDueAmount;
  List<String>? wishlistedCourses;
  String? id;
  List<dynamic>? documents;
  List<dynamic>? qualifications;
  List<dynamic>? workExperience;
  String? date;
  String? time;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? uniqueId;

  NewUserData({
    this.status,
    this.registered,
    this.firstname,
    this.lastname,
    this.email,
    this.mobile,
    this.verified,
    this.interestedAreas,
    this.totalPaidAmount,
    this.totalDueAmount,
    this.wishlistedCourses,
    this.id,
    this.documents,
    this.qualifications,
    this.workExperience,
    this.date,
    this.time,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.uniqueId,
  });

  factory NewUserData.fromJson(Map<String, dynamic> json) => NewUserData(
        status: json["status"],
        registered: json["registered"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        mobile: json["mobile"],
        verified: json["verified"] != null
            ? Verified.fromJson(json["verified"])
            : null,
        interestedAreas: json["interestedAreas"] != null
            ? List<String>.from(json["interestedAreas"].map((x) => x))
            : null,
        totalPaidAmount: json["totalPaidAmount"],
        totalDueAmount: json["totalDueAmount"],
        wishlistedCourses: json["wishlistedCourses"] != null
            ? List<String>.from(json["wishlistedCourses"].map((x) => x))
            : null,
        id: json["_id"],
        documents: json["documents"],
        qualifications: json["qualifications"],
        workExperience: json["workExperience"],
        date: json["date"],
        time: json["time"],
        createdAt: json["createdAt"] != null
            ? DateTime.parse(json["createdAt"])
            : null,
        updatedAt: json["updatedAt"] != null
            ? DateTime.parse(json["updatedAt"])
            : null,
        v: json["__v"],
        uniqueId: json["unique_id"],
      );
}

class Verified {
  bool? mobile;
  bool? email;
  bool? aadhar;

  Verified({
    this.mobile,
    this.email,
    this.aadhar,
  });

  factory Verified.fromJson(Map<String, dynamic> json) => Verified(
        mobile: json["mobile"],
        email: json["email"],
        aadhar: json["aadhar"],
      );
}
