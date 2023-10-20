import 'package:flutter/material.dart';

class SchermataIniziale extends StatelessWidget {
  const SchermataIniziale({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
        ),
      ],
    );
  }
}
