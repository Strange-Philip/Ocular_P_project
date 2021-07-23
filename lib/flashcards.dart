import 'package:flutter/material.dart';

class FlashCards extends StatefulWidget {
  @override
  _FlashCardsState createState() => _FlashCardsState();
}

class _FlashCardsState extends State<FlashCards> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF4354b3),
        title: Text('FlashCards',style: TextStyle( fontFamily: 'Quicksand',),),
        elevation: 0,
      ),
    ));
  }
}
