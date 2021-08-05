import 'package:flutter/material.dart';
import 'package:op_app/models/question.dart';
import 'package:op_app/tools/optionwidget.dart';

class QuestionsWidget extends StatelessWidget {
  final Quiz quiz;
  final PageController controller;
  final ValueChanged<int> onChangedPage;
  final ValueChanged<Option> onClickedOption;

  const QuestionsWidget({
    Key key,
    @required this.quiz,
    @required this.controller,
    @required this.onChangedPage,
    @required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
        onPageChanged: onChangedPage,
        controller: controller,
        itemCount: quiz.questions.length,
        itemBuilder: (context, index) {
          final question = quiz.questions[index];

          return buildQuestion(question: question);
        },
      );

  Widget buildQuestion({
    @required Question question,
  }) =>
      Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text(
              question.question,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,fontFamily: 'Quicksand'),
            ),
            SizedBox(height: 8),
            Text(
              'Please Choose an Answer',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18,fontFamily: 'Quicksand',fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            Expanded(
              child: OptionsWidget(
                question: question,
                onClickedOption: onClickedOption,
              ),
            ),
          ],
        ),
      );
}