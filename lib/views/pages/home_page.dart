import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:flutter_app/views/pages/courses_page.dart' as cp;
import 'package:flutter_app/widgets/container_widget.dart';
import 'package:flutter_app/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      KValues.basicLayoutTitle,
      KValues.basicLayoutDescription,
      KValues.advancedLayoutTitle,
      KValues.advancedLayoutDescription,
      KValues.expertLayoutTitle,
      KValues.expertLayoutDescription,
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5.0),
            HeroWidget(title: 'DCT Lab', nextPage: cp.ActivityScreen()),
            SizedBox(height: 5.0),
            ...List.generate(items.length, (index) {
              return ContainerWidget(
                title: items.elementAt(index),
                description: items.elementAt(index),
              );
            }),
          ],
        ),
      ),
    );
  }
}
