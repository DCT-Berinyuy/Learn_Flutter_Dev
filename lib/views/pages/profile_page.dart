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
    return Padding(
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
          Slider(value: sliderValue, onChanged: (double value) {
            setState(() {
              sliderValue = value;
            });
          }),
          Text('Slider Value: ${sliderValue.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}
