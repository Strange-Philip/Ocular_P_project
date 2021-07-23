import 'package:flutter/material.dart';
import 'package:op_app/cards/quizcard.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF4354b3),
        title: Text(
          'Quiz',
          style: TextStyle(
            fontFamily: 'Quicksand',
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            crossAxisSpacing: 0,
            mainAxisSpacing: 5,
          ),
          physics: NeverScrollableScrollPhysics(),
          children: [
            QuizCard(
              topic: 'Topic 1',
              number: '20',
            ),
            QuizCard(
              topic: 'Topic 2',
              number: '50',
            ),
            QuizCard(
              topic: 'Topic 3',
              number: '20',
            ),
            QuizCard(
              topic: 'Topic 4',
              number: '20',
            ),
            QuizCard(
              topic: 'Topic 5',
              number: '30',
            ),
            QuizCard(
              topic: 'Topic 6',
              number: '10',
            ),
          ]),
    ));
  }
}
