class Event {
  String? id;
  Category? category;
  int? status;
  AddedBy? addedBy;
  String? eventStatus;
  String? name;
  String? uniqueId;
  String? venue;
  int? fee;
  String? gstLabs;
  int? taxableValue;
  int? taxAmount;
  String? resourcePerson;
  int? type;
  String? startDate;
  String? eventDescription;
  String? endDate;
  String? endTime;
  String? registrationClosesBy;
  String? date;
  String? time;
  String? uploadedFile;
  String? createdAt;
  String? startTime;
  String? updatedBy;
  String? updatedDate;
  String? updatedTime;
  Branches? branches;

  Event({
    this.id,
    this.category,
    this.status,
    this.addedBy,
    this.eventStatus,
    this.name,
    this.uniqueId,
    this.venue,
    this.fee,
    this.gstLabs,
    this.taxableValue,
    this.taxAmount,
    this.resourcePerson,
    this.type,
    this.startDate,
    this.eventDescription,
    this.endDate,
    this.endTime,
    this.registrationClosesBy,
    this.date,
    this.time,
    this.uploadedFile,
    this.createdAt,
    this.startTime,
    this.updatedBy,
    this.updatedDate,
    this.updatedTime,
    this.branches,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['_id'],
      category: Category.fromJson(json['category']),
      status: json['status'],
      addedBy: AddedBy.fromJson(json['addedBy']),
      eventStatus: json['eventStatus'],
      name: json['name'],
      uniqueId: json['uniqueId'],
      venue: json['venue'],
      fee: json['fee'],
      gstLabs: json['gstLabs'],
      taxableValue: json['taxableValue'],
      taxAmount: json['taxAmount'],
      resourcePerson: json['resourcePerson'],
      type: json['type'],
      startDate: json['startDate'],
      eventDescription: json['eventDescription'],
      endDate: json['endDate'],
      endTime: json['endTime'],
      registrationClosesBy: json['registrationClosesBy'],
      date: json['date'],
      time: json['time'],
      uploadedFile: json['uploadedFile'],
      createdAt: json['createdAt'],
      startTime: json['startTime'],
      updatedBy: json['updatedBy'],
      updatedDate: json['updatedDate'],
      updatedTime: json['updatedTime'],
      branches: Branches.fromJson(json['branches']),
    );
  }
}

class Category {
  String? id;
  String? name;

  Category({
    this.id,
    this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['_id'],
      name: json['name'],
    );
  }
}

class AddedBy {
  String? id;
  String? name;

  AddedBy({
    this.id,
    this.name,
  });

  factory AddedBy.fromJson(Map<String, dynamic> json) {
    return AddedBy(
      id: json['_id'],
      name: json['name'],
    );
  }
}

class Branches {
  String? id;
  String? name;

  Branches({
    this.id,
    this.name,
  });

  factory Branches.fromJson(Map<String, dynamic> json) {
    return Branches(
      id: json['_id'],
      name: json['name'],
    );
  }
}
