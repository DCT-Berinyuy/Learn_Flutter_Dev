import 'package:flutter/material.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavebarWidgetState();
}

class _NavebarWidgetState extends State<NavbarWidget> {
  int curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int index) {
            // Handle navigation logic here
            setState(() {
              // Update the UI based on the selected index
              curentIndex = index;
            });
          },
          selectedIndex: curentIndex,
        );
  }
}