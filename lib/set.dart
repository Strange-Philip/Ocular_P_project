import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:line_icons/line_icons.dart';
import 'package:op_app/aboutpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class Setttings extends StatefulWidget {
  @override
  _SetttingsState createState() => _SetttingsState();
}

void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print('could not launch $command');
  }
}

class _SetttingsState extends State<Setttings> {
  String name;
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
        backgroundColor: Color(0xFF4354b3),
        title: Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Quicksand',
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
              child: GFCarousel(
                autoPlay: true,
                pagination: true,
                passiveIndicator: Colors.white,
                items: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xFF4354b3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Center(
                          child: Text(
                            'Exercitation id aliqua dolor ipsum aliqua incididunt consequat labore cupidatat nisi pariatur proident.',
                            maxLines: 50,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xFF4354b3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Center(
                          child: Text(
                            'Exercitation id aliqua dolor ipsum aliqua incididunt consequat labore cupidatat nisi pariatur proident.',
                            maxLines: 50,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xFF4354b3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Center(
                          child: Text(
                            'Exercitation id aliqua dolor ipsum aliqua incididunt consequat labore cupidatat nisi pariatur proident.',
                            maxLines: 50,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xFF4354b3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Center(
                          child: Text(
                            'Exercitation id aliqua dolor ipsum aliqua incididunt consequat labore cupidatat nisi pariatur proident.',
                            maxLines: 50,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xFF4354b3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Center(
                          child: Text(
                            'Exercitation id aliqua dolor ipsum aliqua incididunt consequat labore cupidatat nisi pariatur proident.',
                            maxLines: 50,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
                activeIndicator: Colors.yellow,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                "general".toUpperCase(),
                maxLines: 1,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38,
                    fontFamily: 'Quicksand'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Color(0xFF4354b3),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Icon(
                                LineIcons.user,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Text(
                            "$name",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              fontFamily: 'Quicksand',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        // Center(
                        //   child: Icon(
                        //     Icons.arrow_forward_ios,
                        //     color: Colors.grey.withOpacity(0.3),
                        //   ),
                        // ),
                        SizedBox(
                          width: 20,
                        ),
                      ]),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            //   child: GestureDetector(
            //     onTap: () {},
            //     child: Container(
            //       height: 50,
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(5)),
            //       child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             SizedBox(
            //               width: 10,
            //             ),
            //             Center(
            //               child: Container(
            //                 height: 35,
            //                 width: 35,
            //                 decoration: BoxDecoration(
            //                     color: Color(0xFF4354b3),
            //                     borderRadius: BorderRadius.circular(5)),
            //                 child: Center(
            //                   child: Icon(
            //                     LineIcons.sun,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             SizedBox(
            //               width: 10,
            //             ),
            //             Center(
            //               child: Text(
            //                 "Theme",
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.w400,
            //                   fontSize: 18,
            //                   fontFamily: "Quicksand",
            //                   color: Colors.black,
            //                 ),
            //               ),
            //             ),
            //             Spacer(),
            //             // Center(
            //             //   child: Icon(
            //             //     Icons.arrow_forward_ios,
            //             //     color: Colors.grey.withOpacity(0.3),
            //             //   ),
            //             // ),
            //             SizedBox(
            //               width: 20,
            //             ),
            //           ]),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AboutPage()));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Color(0xFF4354b3),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Icon(
                                LineIcons.questionCircleAlt,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Text(
                            "About",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: "Quicksand"),
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                "feedback".toUpperCase(),
                maxLines: 1,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38,
                    fontFamily: 'Quicksand'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  customLaunch(
                      'mailto:philipabakahmensah@gmail.com?subject=Iris Help&body=');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Color(0xFF4354b3),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Icon(
                                LineIcons.headset,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Text(
                            "Help",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              fontFamily: "Quicksand",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  customLaunch(
                      'mailto:philipabakahmensah@gmail.com?subject=Iris Bug&body=');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Color(0xFF4354b3),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Icon(
                                LineIcons.bug,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Text(
                            "Report Bug",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              fontFamily: "Quicksand",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  customLaunch(
                      'mailto:philipabakahmensah@gmail.com?subject=Iris Feedback&body=');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Color(0xFF4354b3),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Icon(
                                LineIcons.paperPlane,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Text(
                            "Send Feedback",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              fontFamily: "Quicksand",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
