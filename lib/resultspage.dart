import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';



class ResultPage extends StatefulWidget {
  final int marks;
  ResultPage({Key key, @required this.marks}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png",
  ];

  String message;
  String image;

  @override
  void initState() {
    if (widget.marks < 20) {
      image = images[2];
      message = "You Should Try Hard..\n" + "You Scored ${widget.marks}";
    } else if (widget.marks < 35) {
      image = images[1];
      message = "You Can Do Better..\n" + "You Scored ${widget.marks}";
    } else {
      image = images[0];
      message = "You Did Very Well..\n" + "You Scored ${widget.marks}";
    }
    super.initState();
  }

 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF4354b3),
        title: Text(
          'Result',
          style: TextStyle(
            fontFamily: 'Quicksand',
          ),
        ),
        // automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Material(
              elevation: 10.0,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 15.0,
                        ),
                        child: Center(
                          child: Text(
                            message,
                            style: TextStyle(
                               fontSize:26.0,
                    fontWeight:FontWeight.w500,
                              fontFamily: "Quicksand",
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          // Expanded(
          //   flex: 4,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       OutlineButton(
          //         onPressed: () {
          //           // Navigator.of(context).pushReplacement(MaterialPageRoute(
          //           //   builder: (context) => Home(),
          //           // ));
          //           Navigator.pop(context);
          //         },
          //         child: Text(
          //           "Continue",
          //           style: TextStyle(
          //             fontSize: 18.0,
          //           ),
          //         ),
          //         padding: EdgeInsets.symmetric(
          //           vertical: 10.0,
          //           horizontal: 25.0,
          //         ),
          //         borderSide: BorderSide(width: 3.0, color: Colors.indigo),
          //         splashColor: Color(0xFF4354b3),
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Row(
          children: [
            Text(
              "Continue",
              style: TextStyle(fontSize: 18.0, fontFamily: 'Quicksand'),
            ),
            Icon(
              LineIcons.angleRight,
              size: 25,
            ),
          ],
        ),
        elevation: 0,
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Color(0xFF4354b3),
      ),
    );
  }
}
