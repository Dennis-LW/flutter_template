import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'hello',
        style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    );
  }
}