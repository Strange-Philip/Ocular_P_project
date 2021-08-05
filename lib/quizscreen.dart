import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:op_app/tools/questionwidget.dart';

import 'models/question.dart';

class QuizPage extends StatefulWidget {
  final Quiz quiz;

  const QuizPage({Key key, @required this.quiz}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  PageController controller;
  Question question;

  @override
  void initState() {
    super.initState();

    controller = PageController();
    question = widget.quiz.questions.isEmpty? null : widget.quiz.questions.first;
  }

  @override
  Widget build(BuildContext context) => widget.quiz.questions.isEmpty
      ? SafeArea(child: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF4354b3),
        elevation: 0,
        title: Text(
                widget.quiz.topic,
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
        
      ),
        body: Center(
                child: Column(
                  children: [
                    Spacer(),
                    SvgPicture.asset(
                      'images/undraw_online_test_gba7.svg',
                      width: 200,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Text(
                        "Quiz not available yet",
                        maxLines: 5,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            // color: Colors.black,
                            fontFamily: 'Quicksand'),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
      ))
      : SafeArea(
          child: Scaffold(
            appBar: buildAppBar(context),
            body: QuestionsWidget(
              quiz: widget.quiz,
              controller: controller,
              onChangedPage: (index) => nextQuestion(index: index),
              onClickedOption: selectOption,
            ),
          ),
        );
  Widget buildAppBar(context) => AppBar(
    centerTitle: true,
        title: Text(
          widget.quiz.topic,
          
          style: TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w500
          ),
        ),
        backgroundColor: Color(0xFF4354b3),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: QuestionNumbersWidget(
              questions: widget.quiz.questions,
              question: question,
              onClickedNumber: (index) =>
                  nextQuestion(index: index, jump: true),
            ),
          ),
        ),
      );
  void selectOption(Option option) {
    if (question.isLocked) {
      return;
    } else {
      setState(() {
        question.isLocked = true;
        question.selectedOption = option;
      });
    }
  }

  void nextQuestion({int index, bool jump = false}) {
    final nextPage = controller.page + 1;
    final indexPage = index ?? nextPage.toInt();

    setState(() {
      question = widget.quiz.questions[indexPage];
    });

    if (jump) {
      controller.jumpToPage(indexPage);
    }
  }
}

class QuestionNumbersWidget extends StatelessWidget {
  final List<Question> questions;
  final Question question;
  final ValueChanged<int> onClickedNumber;

  const QuestionNumbersWidget({
    Key key,
    @required this.questions,
    @required this.question,
    @required this.onClickedNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double padding = 8;

    return Container(
      height: 35,
      width: double.infinity,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: padding),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => Container(width: padding),
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final isSelected = question == questions[index];

          return buildNumber(index: index, isSelected: isSelected);
        },
      ),
    );
  }

  Widget buildNumber({
    @required int index,
    @required bool isSelected,
  }) {
    final color = isSelected ? Color(0xFF4354b3) : Colors.white;
    final textcolor = isSelected ? Colors.white : Color(0xFF4354b3);

    return GestureDetector(
      onTap: () => onClickedNumber(index),
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.yellow)),
        child: Center(
          child: Text(
            '  ${index + 1}  ',
            style: TextStyle(
                color: textcolor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'Quicksand'),
          ),
        ),
      ),
    );
  }
}
