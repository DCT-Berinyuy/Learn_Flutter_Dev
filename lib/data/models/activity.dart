class Activity {
  final String activity;
  final String type;
  final int participants;
  final double price;
  final String link;
  final String key;
  final double accessibility;
  final double? availability;
  final String? duration;
  final bool? kidFriendly;

  Activity({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
    this.availability,
    this.duration,
    this.kidFriendly,
  });

  factory Activity.fromJson(Map<String, dynamic> json) {
    return Activity(
      activity: json['activity'] as String,
      type: json['type'] as String,
      participants: _toInt(json['participants']),
      price: _toDouble(json['price']),
      link: json['link'] as String? ?? '',
      key: json['key'] as String,
      accessibility: _toDouble(json['accessibility']),
      availability: json['availability'] != null ? _toDouble(json['availability']) : null,
      duration: json['duration'] as String?,
      kidFriendly: json['kidFriendly'] as bool?,
    );
  }

  static double _toDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is double) return value;
    if (value is int) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  static int _toInt(dynamic value) {
    if (value == null) return 0;
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) return int.tryParse(value) ?? 0;
    return 0;
  }

  Map<String, dynamic> toJson() {
    return {
      'activity': activity,
      'type': type,
      'participants': participants,
      'price': price,
      'link': link,
      'key': key,
      'accessibility': accessibility,
      'availability': availability,
      'duration': duration,
      'kidFriendly': kidFriendly,
    };
  }
}
