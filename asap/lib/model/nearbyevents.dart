class EventGroup {
  String? id;
  List<NearbyEvent>? events;
  Csp? csp;

  EventGroup({
    this.id,
    this.events,
    this.csp,
  });

  factory EventGroup.fromJson(Map<String, dynamic> json) {
    return EventGroup(
      id: json['_id'],
      events: List<NearbyEvent>.from(
          json['events'].map((event) => NearbyEvent.fromJson(event))),
      csp: Csp.fromJson(json['csp']),
    );
  }
}

class NearbyEvent {
  String? id;
  String? name;
  String? venue;
  int? fee;
  String? startDate;
  String? eventDescription;
  String? startTime;
  String? uploadedFile;

  NearbyEvent({
    this.id,
    this.name,
    this.venue,
    this.fee,
    this.startDate,
    this.eventDescription,
    this.startTime,
    this.uploadedFile,
  });

  factory NearbyEvent.fromJson(Map<String, dynamic> json) {
    return NearbyEvent(
      id: json['_id'] ?? "",
      name: json['name'] ?? "",
      venue: json['venue'] ?? "",
      // fee: json['fee'] ?? 0,
      startDate: json['startDate'] ?? "",
      eventDescription: json['eventDescription'] ?? "",
      startTime: json['startTime'],
      uploadedFile: json['uploadedFile'] ?? '',
    );
  }
}

class Csp {
  String? id;
  String? name;

  Csp({
    this.id,
    this.name,
  });

  factory Csp.fromJson(Map<String, dynamic> json) {
    return Csp(
      id: json['_id'],
      name: json['name'],
    );
  }
}
