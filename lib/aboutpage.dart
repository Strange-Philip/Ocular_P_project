import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF4354b3),
        title: Text(
          'About',
          style: TextStyle(
            fontFamily: 'Quicksand',
          ),
        ),
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
    ));
  }
}
