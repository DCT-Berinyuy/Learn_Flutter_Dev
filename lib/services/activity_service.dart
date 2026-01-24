import 'dart:convert';
import 'package:http/http.dart' as http;
import '../data/models/activity.dart';

class ActivityService {
  static const _baseUrl = 'https://bored-api.appbrewery.com/random';

  Future<Activity> fetchRandomActivity() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Activity.fromJson(data);
    } else {
      throw Exception('Failed to load activity');
    }
  }
}
