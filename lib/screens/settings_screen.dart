import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tənzimlənmələr'),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          child: const Text(
            'WebServis',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
