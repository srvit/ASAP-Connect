class InterestArea {
  final String id;
  final String name;
  final String label;
  final String value;

  InterestArea({
    required this.id,
    required this.name,
    required this.label,
    required this.value,
  });

  // Convert JSON to model
  factory InterestArea.fromJson(Map<String, dynamic> json) {
    return InterestArea(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      label: json['label'] ?? '',
      value: json['value'] ?? '',
    );
  }

  // Convert model to JSON
  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'label': label,
      'value': value,
    };
  }
}
