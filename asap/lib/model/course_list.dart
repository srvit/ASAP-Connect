class Course {
  String? id;
  String? name;
  String? duration;
  String? unit;
  String? mode;
  String? date;
  String? imageUrl;
  String? tag;
  String? category;
  String? permaLink;

  Course({
    this.id,
    this.name,
    this.duration,
    this.unit,
    this.mode,
    this.date,
    this.imageUrl,
    this.tag,
    this.category,
    this.permaLink,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['_id'],
      name: json['name'],
      duration: json['duration'],
      unit: json['unit'],
      mode: json['mode'],
      date: json['date'],
      imageUrl: json['imageUrl'],
      tag: json['tag'],
      category: json['category'],
      permaLink: json['permaLink'],
    );
  }
}
