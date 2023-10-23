import 'package:basi_avanzate/data/questions.dart';
import 'package:basi_avanzate/questions_screen.dart';
import 'package:basi_avanzate/results_screen.dart';
import 'package:basi_avanzate/schermata_iniziale.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = SchermataIniziale(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onAnswerSelect: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = const ResultsScreen();
    }

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
          child: screenWidget,
        ),
      ),
    );
  }
}


// GradientContainer(
//           Color.fromARGB(255, 255, 12, 44),
//           Color.fromARGB(255, 225, 101, 0),
//         ),