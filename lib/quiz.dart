import 'package:flutter/material.dart';
import 'package:op_app/cards/quizcard.dart';
import 'models/question.dart';

class QuizOverview extends StatefulWidget {
  @override
  _QuizOverviewState createState() => _QuizOverviewState();
}

class _QuizOverviewState extends State<QuizOverview> {
  List<Quiz> quizes = [
    Quiz(questions: questions, topic: 'Topic 1'),
    Quiz(questions: [], topic: 'Topic 2'),
    Quiz(questions: [], topic: 'Topic 3'),
    Quiz(questions: [], topic: 'Topic 4'),
    Quiz(questions: [], topic: 'Topic 5'),
    Quiz(questions: [], topic: 'Topic 6'),
  ];
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
            body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                physics: BouncingScrollPhysics(),
                itemCount: quizes.length,
                itemBuilder: (context, index) => QuizCard(
                      quiz: quizes[index],
                    ))));
  }
}
