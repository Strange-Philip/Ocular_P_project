import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:op_app/cards/coursecards.dart';
import 'package:op_app/cards/htmlContent.dart';
import 'package:op_app/flashcards.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

String greetingMessage() {
  var timeNow = DateTime.now().hour;

  if (timeNow <= 12) {
    return 'Good Morning';
  } else if ((timeNow > 12) && (timeNow <= 16)) {
    return 'Good Afternoon';
  } else if ((timeNow > 16) && (timeNow < 20)) {
    return 'Good Evening';
  } else {
    return 'Sweet dreams';
  }
}

class _HomeState extends State<Home> {
  String greetingMes = greetingMessage();
  String name;
  List<Topic> topics = [
    Topic(
        '1. The Bony Orbit',
        "2 hrs 30 mins",
        'images/pdf/BonyOrbit.pdf',
        Icon(
          LineIcons.brain,
          color: Colors.white,
          size: 28,
        )),
    Topic(
        '2. Orbital Contents',
        "2 hrs 30 mins",
        '',
        Icon(
          LineIcons.bone,
          color: Colors.white,
          size: 28,
        )),
    Topic(
        'Topic 3',
        "2 hrs 30 mins",
        '',
        Icon(
          LineIcons.eye,
          color: Colors.white,
          size: 28,
        )),
    Topic(
        'Topic 4',
        "2 hrs 30 mins",
        '',
        Icon(
          LineIcons.glasses,
          color: Colors.white,
          size: 28,
        )),
    Topic(
        'Topic 5',
        "2 hrs 30 mins",
        '',
        Icon(
          LineIcons.stethoscope,
          color: Colors.white,
          size: 28,
        )),
    Topic(
        'Topic 6',
        "2 hrs 30 mins",
        '',
        Icon(
          LineIcons.lowVision,
          color: Colors.white,
          size: 28,
        )),
  ];
  Future<String> getname() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String prefname = prefs.getString('name');
    print(prefname);
    return prefname;
  }

  @override
  void initState() {
    super.initState();
    getname().then((value) => setState(() {
          this.name = value;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => FlashCards()));
            },
            child: Image.asset(
              'images/sticky.png',
              color: Color(0xFF4354b3),
              width: 35,
              height: 35,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Text(
                greetingMes + ' $name.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Quicksand'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 140 * topics.length / 1,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: topics.length,
                    itemBuilder: (context, index) {
                      return CourseCard(
                        topic: topics[index],
                      );
                      // return ViewHTML();
                    }),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
