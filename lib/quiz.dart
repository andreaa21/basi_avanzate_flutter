import 'package:basi_avanzate/questions_screen.dart';
import 'package:basi_avanzate/schermata_iniziale.dart';
import 'package:flutter/material.dart';
// import 'package:basi_avanzate/gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 12, 44),
                Color.fromARGB(255, 225, 101, 0),
              ],
            ),
          ),
          child: activeScreen == 'start-screen'
              ? SchermataIniziale(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}


// GradientContainer(
//           Color.fromARGB(255, 255, 12, 44),
//           Color.fromARGB(255, 225, 101, 0),
//         ),