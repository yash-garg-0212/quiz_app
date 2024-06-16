import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(155, 203, 200, 200),
            width: 300,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Learn Flutter In Fun Way',
            style: TextStyle(
              color: Color.fromARGB(255, 249, 244, 244),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Color.fromARGB(255, 220, 215, 215),
            ),
            label: const Text('Start quiz!'),
          ),
        ],
      ),
    );
  }
}
