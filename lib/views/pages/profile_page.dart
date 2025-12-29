import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
              // Update the text field when editing is complete
              onEditingComplete: () => setState(() {}),
            ),
            Text(controller.text),
            Checkbox.adaptive(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile.adaptive(
              tristate: true,
              title: Text('Accept Terms'),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch.adaptive(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              title: Text('Enable Notifications'),
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Slider.adaptive(
              value: sliderValue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Text('Slider Value: ${sliderValue.toStringAsFixed(2)}'),
            InkWell(
              splashColor: Colors.purpleAccent,
              onTap: () {
                print('Image Tapped');
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.white12,
              ),
            ),
            ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
              child: Text('Elevated Button'),),
            ElevatedButton(
              onPressed: () {},
              child: Text('Normal Elevated Button')),
            FilledButton(
              onPressed: () {},
              child: Text('Filled Button')),
            TextButton(
              onPressed: () {},
              child: Text('Text Button')),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button')),
              CloseButton(),
              BackButton(),
          ],
        ),
      ),
    );
  }
}
