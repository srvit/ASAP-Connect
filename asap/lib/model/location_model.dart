class District {
  String id;
  String districtName;

  District({
    required this.id,
    required this.districtName,
  });

  factory District.fromJson(Map<String, dynamic> json) {
    return District(
      id: json['_id'] ?? '',
      districtName: json['district_name'] ?? '',
    );
  }
}
