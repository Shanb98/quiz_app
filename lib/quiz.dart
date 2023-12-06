import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      home: Scaffold(
        body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 57, 167, 255),Color.fromARGB(255, 175, 227, 255)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: const StartScreen(),
      )),
    );
  }
}            