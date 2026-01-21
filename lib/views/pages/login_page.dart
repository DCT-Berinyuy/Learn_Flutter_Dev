import 'package:flutter/material.dart';
import 'package:flutter_app/views/widget_tree.dart';
import 'package:flutter_app/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  String conFirmedEmail = 'dct@gmail.com';
  String conFirmedPassword = 'dct1234';

  @override
  void dispose() {
    // TODO: implement dispose
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Login"))),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(title: 'Login'),
            SizedBox(height: 20.0),
            TextField(
              controller: controllerEmail,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onEditingComplete: () {
                setState(() {}); // Refresh the UI
              },
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: controllerPassword,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onEditingComplete: () {
                setState(() {}); // Refresh the UI
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                onLoginPressed();
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }

  void onLoginPressed() {
    String email = controllerEmail.text;
    String password = controllerPassword.text;

    if (email == conFirmedEmail && password == conFirmedPassword) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WidgetTree()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Failed'),
          content: Text('Incorrect email or password. Please try again.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
