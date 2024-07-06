import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            colors: [Colors.red, Color.fromARGB(255, 88, 233, 30)]),
      ),
    ),
  );
}
