import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool? isChecked = false;
  String? theValue = 'e1';
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DropdownButton(
              value: theValue,
              items: const [
                DropdownMenuItem(
                  value: 'e1',
                  child: Text("Choice 01"),
                ),
                DropdownMenuItem(
                  value: 'e2',
                  child: Text("Choice 02"),
                ),
                DropdownMenuItem(
                  value: 'e3',
                  child: Text("Choice 03"),
                ),
              ],
              onChanged: (value) {},
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Just do it"),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
              ),
            ),
            CheckboxListTile(
              value: isChecked,
              title: const Text("You good ?"),
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            SwitchListTile(
              value: isSwitched,
              title: const Text("Study MODE"),
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Done"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text("Yes"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Title"),
                        content: const Text("Content"),
                        actions: [
                          FilledButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Close"))
                        ],
                      );
                    });
              },
              child: const Text("Alert"),
            ),
          ],
        ),
      ),
    );
  }
}
