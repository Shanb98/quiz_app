import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start';

  void onScreenChange() {

    setState(() {
      activeScreen = 'quiz';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? currentScreen = StartScreen(onAction: onScreenChange);

    if (activeScreen == 'start') {
      currentScreen = StartScreen(onAction: onScreenChange);
    }

    if (activeScreen == 'quiz') {
      currentScreen =
          QuestionScreen();
    }    
    return  MaterialApp(
      home: Scaffold(
        body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 57, 167, 255),Color.fromARGB(255, 175, 227, 255)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: currentScreen,
      )),
    );
  }
}            