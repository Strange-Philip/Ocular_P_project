import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:op_app/cards/termcard.dart';

class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF4354b3),
        title: Text('Terms'),
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(LineIcons.search, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          TermCard(),
          TermCard(),
          TermCard(),
          TermCard(),
        ],
      ),
    ));
  }
}
