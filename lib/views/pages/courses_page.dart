import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/hero_widget.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroWidget(title: 'Course Lab',
              ),
            ],
          ),
        ),
      ),
    );
  }
}