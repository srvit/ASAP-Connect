class CourseInfo {
  String? id;
  CourseFee? courseFee;
  Coupon? coupon;

  CourseInfo({
    this.id,
    this.courseFee,
    this.coupon,
  });

  factory CourseInfo.fromJson(Map<String, dynamic> json) {
    return CourseInfo(
      id: json['_id'],
      courseFee: CourseFee.fromJson(json['courseFee']),
      coupon: Coupon.fromJson(json['coupon']),
    );
  }
}

class CourseFee {
  int? markupPrice;
  int? courseFee;
  int? payableAmount;
  String? gst;
  String? expireDate;
  bool? installment;
  List<int>? installments;
  int? noOfInstallments;
  int? netAmount;
  int? taxAmount;
  int? taxableValue;

  CourseFee({
    this.markupPrice,
    this.courseFee,
    this.payableAmount,
    this.gst,
    this.expireDate,
    this.installment,
    this.installments,
    this.noOfInstallments,
    this.netAmount,
    this.taxAmount,
    this.taxableValue,
  });

  factory CourseFee.fromJson(Map<String, dynamic> json) {
    return CourseFee(
      markupPrice: json['markupPrice'],
      courseFee: json['courseFee'],
      payableAmount: json['payableAmount'],
      gst: json['gst'],
      expireDate: json['expireDate'],
      installment: json['installment'],
      installments: List<int>.from(json['installments']),
      noOfInstallments: json['noOfInstallments'],
      netAmount: json['netAmount'],
      taxAmount: json['taxAmount'],
      taxableValue: json['taxableValue'],
    );
  }
}

class Coupon {
  String? id;
  String? name;
  String? code;
  int? amountOrPercentage;
  int? type;

  Coupon({
    this.id,
    this.name,
    this.code,
    this.amountOrPercentage,
    this.type,
  });

  factory Coupon.fromJson(Map<String, dynamic> json) {
    return Coupon(
      id: json['_id'],
      name: json['name'],
      code: json['code'],
      amountOrPercentage: json['amountOrPercentage'],
      type: json['type'],
    );
  }
}
