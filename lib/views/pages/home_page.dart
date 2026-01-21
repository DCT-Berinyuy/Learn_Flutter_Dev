import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:flutter_app/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20.0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          HeroWidget(title: 'Mr.DCT',),
          Padding(padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Container(
            width: double.infinity,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Basic Layout',
                      style: KTextStyle.titleTeeText,
                    ),
                    Text('The description of this',
                    style: KTextStyle.descriptionText),
                  ],
                ),
              ),
            ),
          ),)
        ],
      ),
    ),);
  }
}