import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'answer_btn.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Question text...',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          ),
          AnswerButton(
            options: 'Option 1',
            onTap: () {},
          ),
          AnswerButton(
            options: 'Option 2',
            onTap: () {},
          ),
          AnswerButton(
            options: 'Option 3',
            onTap: () {},
          ),
          AnswerButton(
            options: 'Option 4',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
