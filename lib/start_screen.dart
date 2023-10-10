import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 250,),
          const SizedBox(
            height: 70,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text(
              'Start Quiz',
            ),
            icon: const Icon(Icons.question_answer_outlined),
          )
        ],
      ),
    );
  }
}