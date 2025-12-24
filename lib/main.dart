import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//* Stateless Widget
//* Material App
//* Scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.teal,
      brightness: Brightness.dark,
      ),),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DeepCodeThinking'),
          centerTitle: true,
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: [
                ListTile(
                  title: Text('Hello Drawer'),
                  onTap: () {
                    // Action when drawer item is tapped
                    print('Drawer Item Tapped');
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                // Action when button is pressed
                print('Floating Action Button Pressed');
              },
              child: const Icon(Icons.add),
            ),
            SizedBox(height: 16), // Spacing between buttons
             FloatingActionButton(
              onPressed: () {
                // Action when button is pressed
                print('Floating Action Button Pressed');
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
          NavigationDestination(
          icon: Icon(Icons.home), 
          label: 'Home'),
          NavigationDestination(
          icon: Icon(Icons.person), 
          label: 'Profile'),
          ],
          onDestinationSelected: (int index) {
            // Handle navigation logic here
            print('Hello $index');
          },
          selectedIndex: 1,
          ),
      ),
    );
  }
}