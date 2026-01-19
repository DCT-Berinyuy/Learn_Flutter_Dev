import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title,});
  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? dropdownValue = 'Element 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(onPressed: () {
          Navigator.pop(context);
        },),
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DropdownButton(
              value: dropdownValue,
              items: [
                DropdownMenuItem(
                  value: 'Element 1',
                child: Text('Element 1')),
                DropdownMenuItem(
                  value: 'Element 2',
                  child: Text('Element 2')),
                DropdownMenuItem(
                  value: 'Element 3',
                  child: Text('Element 3')),],
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value;
                });
              },
            ),
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
                debugPrint('Image Tapped');
              },
              child: Container(
                height: 150,
                width: double.infinity,
                color: Colors.white12,
                child: Center(child: Text('InkWell Widget - Tap Me')),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
              child: Text('Elevated Button'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Normal Elevated Button'),
            ),
            FilledButton(onPressed: () {}, child: Text('Filled Button')),
            TextButton(onPressed: () {}, child: Text('Text Button')),
            OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
            CloseButton(),
            BackButton(),
          ],
        ),
      ),
    ),
    );
  }
}
