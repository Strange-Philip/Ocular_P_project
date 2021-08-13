import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:op_app/models/question.dart';
import 'package:op_app/resultspage.dart';
import 'package:op_app/tools/loading.dart';

class Getjson extends StatelessWidget {
  final Quiz quiz;

  const Getjson({Key key, this.quiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:
          DefaultAssetBundle.of(context).loadString(quiz.quizdir, cache: false),
      builder: (context, snapshot) {
        List mydata = json.decode(snapshot.data.toString());
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Loading();
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (mydata == null) {
            return SafeArea(
                child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Color(0xFF4354b3),
                elevation: 0,
                title: Text(
                  quiz.topic,
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
            ));
          } else {
            return Quizpage(
              mydata: mydata,
              topic: quiz.topic,
            );
          }
        }
        return Container();
      },
    );
  }
}

class Quizpage extends StatefulWidget {
  final List mydata;
  final String topic;

  Quizpage({Key key, @required this.mydata, this.topic}) : super(key: key);
  @override
  _QuizpageState createState() => _QuizpageState(mydata);
}

class _QuizpageState extends State<Quizpage> {
  final List mydata;
  _QuizpageState(this.mydata);

  Color colortoshow = Color(0xFF4354b3);
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  int i = 1;
  bool disableAnswer = false;
  // extra varibale to iterate
  int j = 1;
  int timer = 60;
  String showtimer = "60";
  var randomArray;

  Map<String, Color> btncolor = {
    "a": Color(0xFF4354b3),
    "b": Color(0xFF4354b3),
    "c": Color(0xFF4354b3),
    "d": Color(0xFF4354b3),
  };

  bool canceltimer = false;

  genrandomarray() {
    var distinctIds = [];
    var rand = new Random();
    for (int i = 0;;) {
      distinctIds.add(rand.nextInt(10));
      randomArray = distinctIds.toSet().toList();
      if (randomArray.length < 10) {
        continue;
      } else {
        break;
      }
    }
    print(randomArray);
  }

  @override
  void initState() {
    starttimer();
    genrandomarray();
    super.initState();
  }

  // overriding the setstate function to be called only if mounted
  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nextquestion();
        } else if (canceltimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showtimer = timer.toString();
      });
    });
  }

  void nextquestion() {
    canceltimer = false;
    timer = 60;
    setState(() {
      if (j < 10) {
        i = randomArray[j];
        j++;
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => ResultPage(marks: marks),
        ));
      }
      btncolor["a"] = Color(0xFF4354b3);
      btncolor["b"] = Color(0xFF4354b3);
      btncolor["c"] = Color(0xFF4354b3);
      btncolor["d"] = Color(0xFF4354b3);
      disableAnswer = false;
    });
    starttimer();
  }

  void checkanswer(String k) {
    if (mydata[2][i.toString()] == mydata[1][i.toString()][k]) {
      marks = marks + 1;

      colortoshow = right;
    } else {
      colortoshow = wrong;
    }
    setState(() {
      btncolor[k] = colortoshow;
      canceltimer = true;
      disableAnswer = true;
    });
    // nextquestion();
    // changed timer duration to 1 second
    Timer(Duration(seconds: 3), nextquestion);
  }

  Widget choicebutton(String k) {
    return Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 20.0,
        ),
        child: GestureDetector(
          onTap: () => checkanswer(k),
          child: Container(
            // height: 55,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: btncolor[k])),
            child: Column(
              children: [
                Text(
                  mydata[1][i.toString()][k] ?? "",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  content: Text(
                    "Are you sure you want to quit at this stage?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                        fontFamily: 'Quicksand'),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: Text(
                        'QUIT',
                        style: TextStyle(
                            color: Color(0xFF4354b3),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            fontFamily: 'Quicksand'),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF4354b3)),
                      ),
                      child: Text(
                        'NO',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            fontFamily: 'Quicksand'),
                      ),
                    ),
                  ],
                ));
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF4354b3),
          elevation: 0,
          title: Text(
            widget.topic,
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 2),
              child: Text(
                mydata[0][i.toString()] ?? "",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: Text(
                'Please Choose an Answer',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              // flex: 6,
              child: AbsorbPointer(
                absorbing: disableAnswer,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      choicebutton('a'),
                      choicebutton('b'),
                      choicebutton('c'),
                      choicebutton('d'),
                    ],
                  ),
                ),
              ),
            ),
            disableAnswer == true
                ? Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                    child: Center(
                      child: Text(
                        mydata[3][i.toString()],
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                : SizedBox(),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Center(
                child: Text(
                  showtimer,
                  style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Quicksand',
                      color: int.parse(showtimer) > 10
                          ? Colors.green
                          : Colors.red),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}
