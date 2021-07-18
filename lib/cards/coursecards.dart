import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: Color(0xFF4354b3))),
        child: Container(
          height: 120,
          width: 289,
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
                        width: 130,
                        child: Text(
                          "Topic title",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
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
                  width: 270,
                  child: Text(
                    'Laborum amet ex esse cillum ipsum est tempor et dolor cupidatat officia minim aute occaecat. Mollit magna aliqua eu amet cillum dolore. Enim eiusmod et veniam labore magna non mollit qui. Non tempor incididunt ea irure ut amet dolor dolor minim. Et elit in commodo culpa est veniam enim. Exercitation id aliqua dolor ipsum aliqua incididunt consequat labore cupidatat nisi pariatur proident.',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
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
                      percent: 0.5,
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
