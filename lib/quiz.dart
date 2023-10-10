import 'package:flutter/material.dart';
import 'package:quizizz/data/questions.dart';
import 'package:quizizz/question_screen.dart';
import 'package:quizizz/result_screen.dart';
import 'package:quizizz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  final List<String> selectedAnswer = [];
  void chooseAnswer(String ans){
    selectedAnswer.add(ans);
    if(selectedAnswer.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {

    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'question-screen'){
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer,);
    }
    if(activeScreen == 'result-screen'){
      screenWidget = ResultsScreen(activeScreen , chosenAnswers: selectedAnswer);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.indigoAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
