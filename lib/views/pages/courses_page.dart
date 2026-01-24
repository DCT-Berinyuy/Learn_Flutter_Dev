import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/data/classes/activity_class.dart';
import 'package:flutter_app/widgets/hero_widget.dart';
import 'package:http/http.dart' as http;

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Activity.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Courses')),
      body: FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          Widget widget;
          if (snapshot.connectionState == ConnectionState.waiting) {
            widget = Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            Activity activity = snapshot.data;
            widget = Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(children: [HeroWidget(title: activity.activity),
                Text(activity.activity)]),
              ),
            );
          } else {
            widget = Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(children: [HeroWidget(title: 'Course Lab')]),
              ),
            );
          }
          return widget;
        },
      ),
    );
  }
}
