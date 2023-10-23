import 'package:flutter/material.dart';
import 'package:basi_avanzate/gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 255, 12, 44),
          Color.fromARGB(255, 225, 101, 0),
        ),
      ),
    );
  }
}
