import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(253, 0, 0, 0),
          Color.fromARGB(255, 56, 54, 54),
        ),
      ),
    ),
  );
}
