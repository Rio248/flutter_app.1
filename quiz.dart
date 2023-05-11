import 'package:flutter/material.dart';
import 'package:flutter_application_1/questions_screen.dart';
import 'package:flutter_application_1/start_screen.dart';

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
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              /* gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 174, 255),
                Color.fromARGB(255, 161, 61, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ), */
              ),
          child: screenWidget,
        ),
      ),
    );
  }
}
