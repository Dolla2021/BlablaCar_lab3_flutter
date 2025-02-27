import 'package:flutter/material.dart';
import '../../widgets/actions/bla_button.dart';

class TestButtonScreen extends StatelessWidget {
  const TestButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test BlaButton')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BlaButton(
              text: 'Primary',
              onPressed: () => print('Primary clicked'),
            ),
            const SizedBox(height: 16),
            BlaButton(
              text: 'Secondary',
              isPrimary: false,
              onPressed: () => print('Secondary clicked'),
            ),
            const SizedBox(height: 16),
            BlaButton(
              text: 'Primary with Icon',
              icon: Icons.search,
              onPressed: () => print('Primary with icon clicked'),
            ),
            const SizedBox(height: 16),
            BlaButton(
              text: 'Secondary with Icon',
              isPrimary: false,
              icon: Icons.cancel,
              onPressed: () => print('Secondary with icon clicked'),
            ),
          ],
        ),
      ),
    );
  }
}
