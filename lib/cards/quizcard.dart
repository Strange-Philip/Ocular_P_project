import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class QuizCard extends StatelessWidget {
  final String topic;
  final String number;

  const QuizCard({Key key, this.topic, this.number}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: 70,
        width: 200,
        decoration: BoxDecoration(
          color: Color(0xFF4354b3).withOpacity(0.9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Icon(
              LineIcons.eyeAlt,
              color: Colors.white,
            ),
            Text(
              topic,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Quicksand',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '$number questions',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Quicksand',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
