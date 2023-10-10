import 'package:flutter/material.dart';
import 'package:quizizz/data/questions.dart';

import 'answer_btn.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String ans) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void onSelectOption(String ans) {
    widget.onSelectAnswer(ans);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),

            // dynamically generated
            ...currentQuestion.getShuffledAnswer().map(
              (answer) {
                return AnswerButton(
                  options: answer,
                  onTap: () {
                    onSelectOption(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
