import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:op_app/cards/coursecards.dart';
import 'package:op_app/flashcards.dart';
import 'package:op_app/terms.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF4354b3),
        title: Text('Home',style: TextStyle( fontFamily: 'Quicksand',),),
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
        child: ListView(
          children: [
            CourseCard(),
            CourseCard(),
            CourseCard(),
            CourseCard(),
          ],
        ),
      ),
    ));
  }
}
