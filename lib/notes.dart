import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:op_app/cards/notescard.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF4354b3),
        title: Text('Notes',style: TextStyle(fontFamily: 'Quicksand',),),
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(LineIcons.plus, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          NotesCard(),
          NotesCard(),
          NotesCard(),
          NotesCard(),
        ],
      ),
    ));
  }
}
