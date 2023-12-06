import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  

  const QuestionScreen({super.key,required this.onAction});
  final Function(String value) onAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Question 1',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          OutlinedButton(
              onPressed: () {},
              child: const Text('Answer 1')),
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