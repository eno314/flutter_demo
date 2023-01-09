import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  static const title = 'Form with Riverpod';
  static const route = '/form';

  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: const Center(
        child: Text('Form'),
      ),
    );
  }
}
