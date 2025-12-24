import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String name = 'Mr.DCT';
int number = 7;
double real = 17.0;
List myList = ['Rejoice', 'Verla'];
Map<String, dynamic> myMap = {'Sentence': 'Dart', 'Sentence2': 777};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Dev'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(widget.title),
          ),
      ),
      body: Image.asset('assets/images/bg.jpg',
      height: double.infinity,
      fit: BoxFit.cover,
      )
    );
  }
}
