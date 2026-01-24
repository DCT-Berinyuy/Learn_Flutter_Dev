import 'package:flutter/material.dart';
import '../../data/models/activity.dart';
import '../../services/activity_service.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  late Future<Activity> _activityFuture;
  final _service = ActivityService();

  @override
  void initState() {
    super.initState();
    _activityFuture = _service.fetchRandomActivity();
  }

  void _refresh() {
    setState(() {
      _activityFuture = _service.fetchRandomActivity();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Activity'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refresh,
          )
        ],
      ),
      body: FutureBuilder<Activity>(
        future: _activityFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          final activity = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                  children: [
                    Text(
                      activity.activity,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 12),
                    _infoRow('Type', activity.type),
                    _infoRow('Participants', activity.participants.toString()),
                    _infoRow('Price', activity.price.toString()),
                    _infoRow('Availability', activity.availability?.toString() ?? 'N/A'),
                    _infoRow('Accessibility', activity.accessibility.toString()),
                    _infoRow('Duration', activity.duration ?? 'N/A'),
                    _infoRow(
                      'Kid Friendly',
                      activity.kidFriendly != null ? (activity.kidFriendly! ? 'Yes' : 'No') : 'N/A',
                    ),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: () {},
                      child: Text(activity.link),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          Flexible(child: Text(value)),
        ],
      ),
    );
  }
}
