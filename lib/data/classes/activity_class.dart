class Activity {
  final String activity;
  final double availability;
  final String type;
  final int participants;
  final double price;
  final String accessibility;
  final String duration;
  final bool kidFriendly;
  final String link;
  final String key;

  const Activity({
    required this.activity,
    required this.availability,
    required this.type,
    required this.participants,
    required this.price,
    required this.accessibility,
    required this.duration,
    required this.kidFriendly,
    required this.link,
    required this.key,
  });

  factory Activity.fromJson(Map<String, dynamic> json) {
    return Activity(
      activity: json['activity'] as String,
      availability: (json['availability'] as num).toDouble(),
      type: json['type'] as String,
      participants: json['participants'] as int,
      price: (json['price'] as num).toDouble(),
      accessibility: json['accessibility'] as String,
      duration: json['duration'] as String,
      kidFriendly: json['kidFriendly'] as bool,
      link: json['link'] as String,
      key: json['key'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'activity': activity,
      'availability': availability,
      'type': type,
      'participants': participants,
      'price': price,
      'accessibility': accessibility,
      'duration': duration,
      'kidFriendly': kidFriendly,
      'link': link,
      'key': key,
    };
  }

  Activity copyWith({
    String? activity,
    double? availability,
    String? type,
    int? participants,
    double? price,
    String? accessibility,
    String? duration,
    bool? kidFriendly,
    String? link,
    String? key,
  }) {
    return Activity(
      activity: activity ?? this.activity,
      availability: availability ?? this.availability,
      type: type ?? this.type,
      participants: participants ?? this.participants,
      price: price ?? this.price,
      accessibility: accessibility ?? this.accessibility,
      duration: duration ?? this.duration,
      kidFriendly: kidFriendly ?? this.kidFriendly,
      link: link ?? this.link,
      key: key ?? this.key,
    );
  }

  @override
  String toString() {
    return 'Activity(activity: $activity, type: $type, price: $price)';
  }
}
