import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/container_widget.dart';
import 'package:flutter_app/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'DCT Lab'),
            ContainerWidget(
              title: 'Basic Layout',
              description: 'The description of the basic layout goes here.',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              description: 'The description of the basic layout goes here.',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              description: 'The description of the basic layout goes here.',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              description: 'The description of the basic layout goes here.',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              description: 'The description of the basic layout goes here.',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              description: 'The description of the basic layout goes here.',
            ),
            ContainerWidget(
              title: 'Basic Layout',
              description: 'The description of the basic layout goes here.',
            ),
          ],
        ),
      ),
    );
  }
}
