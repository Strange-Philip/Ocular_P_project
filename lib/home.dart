import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:op_app/cards/coursecards.dart';
import 'package:op_app/flashcards.dart';
import 'package:op_app/terms.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double progress;
//  SharedPreferences prefences = await SharedPreferences.getInstance();
//    progress = await prefences.getDouble('topic');
  List<Topic> topics = [
    Topic('The Bony Orbit', "Delve into the world of the bony orbit", 0,
        'images/pdf/BonyOrbit.pdf'),
    Topic('Cornea And Sclera', "What do you know about the Cornea of the Eye?",
        0, ''),
    Topic('Topic 3', "", 0, ''),
    Topic('Topic 4', "", 0, ''),
    Topic('Topic 5', "", 0, ''),
    Topic('Topic 6', "", 0, ''),
  ];
  @override
  // void initState() async {
  //   super.initState();
  //   SharedPreferences prefences = await SharedPreferences.getInstance();
  //   progress = prefences.getDouble('topic');
  // }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF4354b3),
        title: Text(
          'Home',
          style: TextStyle(
            fontFamily: 'Quicksand',
          ),
        ),
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
              color: Colors.white,
              width: 30,
              height: 30,
            ),
          ),
          IconButton(
              icon: Icon(LineIcons.book, color: Colors.white),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => Terms()));
              }),
          // SizedBox(width: 10,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: topics.length,
            itemBuilder: (context, index) {
              return CourseCard(
                topic: topics[index],
              );
            }),
      ),
    ));
  }
}
