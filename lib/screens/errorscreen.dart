import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Text(
          'ERROR',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
