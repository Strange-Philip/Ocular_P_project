import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:op_app/tools/topicpage.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Topic {
  final String name;
  final String summary;
  final double progress;
  final String pdf;

  Topic(this.name, this.summary, this.progress, this.pdf);
}

class CourseCard extends StatelessWidget {
  final Topic topic;

  const CourseCard({Key key, this.topic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => TopicPage(
                        topic: topic,
                      )));
        },
        child: Container(
          height: 145,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: Color(0xFF4354b3))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xFF4354b3),
                        child: Icon(
                          LineIcons.eye,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        // width: 130,
                        child: Text(
                          topic.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Spacer(),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 5),
                      //   child: Icon(
                      //     LineIcons.stickyNote,
                      //     color: Color(0xFF4354b3),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  // width: 270,
                  child: Text(
                    topic.summary,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Quicksand',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LinearPercentIndicator(
                      width: 200.0,
                      lineHeight: 7.0,
                      animation: true,
                      percent: topic.progress,
                      animationDuration: 1000,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: Colors.grey.withOpacity(0.1),
                      progressColor: Color(0xFF4354b3),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF4354b3),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(7))),
                      child: Center(
                        child: Icon(
                          LineIcons.angleRight,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
