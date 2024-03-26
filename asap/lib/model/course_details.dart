class CourseData {
  String? id;
  String? name;
  String? duration;
  String? unit;
  String? mode;
  String? date;
  String? imageUrl;
  String? videoUrl;
  String? brochure;
  String? syllabusAsset;
  List<Detail>? details;
  List<Faq>? faq;
  List<TrainerPartner>? trainerPartner;
  List<CertificatePartner>? certificatePartner;
  List<Syllabus>? syllabus;
  List<Elegibility2>? elegibility2;
  List<SkillCovered>? skillCovered;
  List<PlacementOpeertunity>? placementOpeertunity;
  List<CspCenter>? cspCenter;
  List<Scholarship>? scholarship;
  List<SkillLoan>? skillLoan;
  CourseFee? courseFee;
  String? eligibility;

  CourseData({
    this.id,
    this.name,
    this.duration,
    this.unit,
    this.mode,
    this.date,
    this.imageUrl,
    this.videoUrl,
    this.brochure,
    this.syllabusAsset,
    this.details,
    this.faq,
    this.trainerPartner,
    this.certificatePartner,
    this.syllabus,
    this.elegibility2,
    this.skillCovered,
    this.placementOpeertunity,
    this.cspCenter,
    this.scholarship,
    this.skillLoan,
    this.courseFee,
    this.eligibility,
  });

  factory CourseData.fromJson(Map<String, dynamic> json) {
    return CourseData(
      id: json['_id'],
      name: json['name'],
      duration: json['duration'],
      unit: json['unit'],
      mode: json['mode'],
      date: json['date'],
      imageUrl: json['imageUrl'],
      videoUrl: json['videoUrl'],
      brochure: json['brochure'],
      syllabusAsset: json['syllabusAsset'],
      details:
          List<Detail>.from(json['details'].map((x) => Detail.fromJson(x))),
      faq: json['faq'] != null
          ? List<Faq>.from(json['faq'].map((x) => Faq.fromJson(x)))
          : [],
      trainerPartner: json['trainer_partner'] != null
          ? List<TrainerPartner>.from(
              json['trainer_partner'].map((x) => TrainerPartner.fromJson(x)))
          : [],
      certificatePartner: json['certificate_partner'] != null
          ? List<CertificatePartner>.from(json['certificate_partner']
              .map((x) => CertificatePartner.fromJson(x)))
          : [],
      syllabus: json['syllabus'] != null
          ? List<Syllabus>.from(
              json['syllabus'].map((x) => Syllabus.fromJson(x)))
          : [],
      elegibility2: json['elegibility2'] != null
          ? List<Elegibility2>.from(
              json['elegibility2'].map((x) => Elegibility2.fromJson(x)))
          : [],
      skillCovered: json['skillCoverd'] != null
          ? List<SkillCovered>.from(
              json['skillCoverd'].map((x) => SkillCovered.fromJson(x)))
          : [],
      placementOpeertunity: json['PlacementOpeertunity'] != null
          ? List<PlacementOpeertunity>.from(json['PlacementOpeertunity']
              .map((x) => PlacementOpeertunity.fromJson(x)))
          : [],
      cspCenter: json['CspCenter'] != null
          ? List<CspCenter>.from(
              json['CspCenter'].map((x) => CspCenter.fromJson(x)))
          : [],
      scholarship: json['scholarship'] != null
          ? List<Scholarship>.from(
              json['scholarship'].map((x) => Scholarship.fromJson(x)))
          : [],
      skillLoan: json['skillLoan'] != null
          ? List<SkillLoan>.from(
              json['skillLoan'].map((x) => SkillLoan.fromJson(x)))
          : [],
      courseFee: json['course_fee'] != null
          ? CourseFee.fromJson(json['course_fee'])
          : null,
      eligibility: json['Eligibility'],
    );
  }
}

class Detail {
  String? tab;
  String? tabDescription;
  String? contents;
  String? id;

  Detail({
    this.tab,
    this.tabDescription,
    this.contents,
    this.id,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        tab: json['tab'],
        tabDescription: json['tabDescription'],
        contents: json['contents'],
        id: json['_id'],
      );
}

class Faq {
  String? question;
  String? answer;
  String? id;

  Faq({
    this.question,
    this.answer,
    this.id,
  });

  factory Faq.fromJson(Map<String, dynamic> json) => Faq(
        question: json['question'],
        answer: json['answer'],
        id: json['_id'],
      );
}

class TrainerPartner {
  String? id;
  String? logo;

  TrainerPartner({
    this.id,
    this.logo,
  });

  factory TrainerPartner.fromJson(Map<String, dynamic> json) => TrainerPartner(
        id: json['_id'],
        logo: json['logo'],
      );
}

class CertificatePartner {
  String? id;
  String? logo;

  CertificatePartner({
    this.id,
    this.logo,
  });

  factory CertificatePartner.fromJson(Map<String, dynamic> json) =>
      CertificatePartner(
        id: json['_id'],
        logo: json['logo'],
      );
}

class Syllabus {
  String? tab;
  String? tabDescription;
  String? contents;
  String? id;

  Syllabus({
    this.tab,
    this.tabDescription,
    this.contents,
    this.id,
  });

  factory Syllabus.fromJson(Map<String, dynamic> json) => Syllabus(
        tab: json['tab'],
        tabDescription: json['tabDescription'],
        contents: json['contents'],
        id: json['_id'],
      );
}

class Elegibility2 {
  String? tab;
  String? tabDescription;
  String? contents;
  String? id;

  Elegibility2({
    this.tab,
    this.tabDescription,
    this.contents,
    this.id,
  });

  factory Elegibility2.fromJson(Map<String, dynamic> json) => Elegibility2(
        tab: json['tab'],
        tabDescription: json['tabDescription'],
        contents: json['contents'],
        id: json['_id'],
      );
}

class SkillCovered {
  String? tab;
  String? tabDescription;
  String? contents;
  String? id;

  SkillCovered({
    this.tab,
    this.tabDescription,
    this.contents,
    this.id,
  });

  factory SkillCovered.fromJson(Map<String, dynamic> json) => SkillCovered(
        tab: json['tab'],
        tabDescription: json['tabDescription'],
        contents: json['contents'],
        id: json['_id'],
      );
}

class PlacementOpeertunity {
  String? tab;
  String? tabDescription;
  String? contents;
  String? id;

  PlacementOpeertunity({
    this.tab,
    this.tabDescription,
    this.contents,
    this.id,
  });

  factory PlacementOpeertunity.fromJson(Map<String, dynamic> json) =>
      PlacementOpeertunity(
        tab: json['tab'],
        tabDescription: json['tabDescription'],
        contents: json['contents'],
        id: json['_id'],
      );
}

class CspCenter {
  String? tab;
  String? tabDescription;
  String? contents;
  String? id;

  CspCenter({
    this.tab,
    this.tabDescription,
    this.contents,
    this.id,
  });

  factory CspCenter.fromJson(Map<String, dynamic> json) => CspCenter(
        tab: json['tab'],
        tabDescription: json['tabDescription'],
        contents: json['contents'],
        id: json['_id'],
      );
}

class Scholarship {
  String? id;
  String? name;

  Scholarship({
    this.id,
    this.name,
  });

  factory Scholarship.fromJson(Map<String, dynamic> json) => Scholarship(
        id: json['_id'],
        name: json['name'],
      );
}

class SkillLoan {
  String? id;
  String? name;
  String? logo;

  SkillLoan({
    this.id,
    this.name,
    this.logo,
  });

  factory SkillLoan.fromJson(Map<String, dynamic> json) => SkillLoan(
        id: json['_id'],
        name: json['name'],
        logo: json['logo'],
      );
}

class CourseFee {
  bool? installment;
  bool? defaultFee;
  List<int>? installments;
  int? markupPrice;
  int? courseFee;
  int? netAmount;
  int? taxableValue;
  int? taxAmount;
  String? gst;
  String? expireDate;
  int? noOfInstallments;

  CourseFee({
    this.installment,
    this.defaultFee,
    this.installments,
    this.markupPrice,
    this.courseFee,
    this.netAmount,
    this.taxableValue,
    this.taxAmount,
    this.gst,
    this.expireDate,
    this.noOfInstallments,
  });

  factory CourseFee.fromJson(Map<String, dynamic> json) => CourseFee(
        installment: json['installment'],
        defaultFee: json['default'],
        installments: List<int>.from(json['installments'].map((x) => x)),
        markupPrice: json['markupPrice'],
        courseFee: json['courseFee'],
        netAmount: json['netAmount'],
        taxableValue: json['taxableValue'],
        taxAmount: json['taxAmount'],
        gst: json['gst'],
        expireDate: json['expireDate'],
        noOfInstallments: json['noOfInstallments'],
      );
}
