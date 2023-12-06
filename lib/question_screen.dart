import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatelessWidget {
  

  const QuestionScreen({super.key,required this.onAction});
  final Function(String value) onAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            questions[0].question,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 28),
          ),

          ...questions[0].answers.map((answer) => AnswerButton(value: answer, onAnswer: (){})),

          const SizedBox(
            height: 40,
          ),
            TextButton(
                onPressed: () {
                  onAction('start');
                },
                child: const Text(
                  'Back to Start',
                  style: TextStyle(fontSize: 18, color: Colors.amber),
                ))
        ],
      ),
    );
  }
  
}