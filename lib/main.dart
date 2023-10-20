import 'package:flutter/material.dart';
import 'package:basi_avanzate/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 255, 12, 44),
          Color.fromARGB(255, 225, 101, 0),
        ),
      ),
    ),
  );
}
