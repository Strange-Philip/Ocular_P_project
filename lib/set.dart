import 'package:flutter/material.dart';

class Setttings extends StatefulWidget {
  @override
  _SetttingsState createState() => _SetttingsState();
}

class _SetttingsState extends State<Setttings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF4354b3),
        title: Text('Setttings'),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
    ));
  }
}
