import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:line_icons/line_icons.dart';

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
        title: Text(
          'Setttings',
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                            'Laborum amet ex esse cillum ipsum est tempor et dolor cupidatat officia minim aute occaecat. Mollit magna aliqua eu amet cillum dolore. Enim eiusmod et veniam labore magna non mollit qui. Non tempor incididunt ea irure ut amet dolor dolor minim. Et elit in commodo culpa est veniam enim. Exercitation id aliqua dolor ipsum aliqua incididunt consequat labore cupidatat nisi pariatur proident.',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
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
                            'Laborum amet ex esse cillum ipsum est tempor et dolor cupidatat officia minim aute occaecat. Mollit magna aliqua eu amet cillum dolore. Enim eiusmod et veniam labore magna non mollit qui. Non tempor incididunt ea irure ut amet dolor dolor minim. Et elit in commodo culpa est veniam enim. Exercitation id aliqua dolor ipsum aliqua incididunt consequat labore cupidatat nisi pariatur proident.',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
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
                            'Laborum amet ex esse cillum ipsum est tempor et dolor cupidatat officia minim aute occaecat. Mollit magna aliqua eu amet cillum dolore. Enim eiusmod et veniam labore magna non mollit qui. Non tempor incididunt ea irure ut amet dolor dolor minim. Et elit in commodo culpa est veniam enim. Exercitation id aliqua dolor ipsum aliqua incididunt consequat labore cupidatat nisi pariatur proident.',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
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
                            'Laborum amet ex esse cillum ipsum est tempor et dolor cupidatat officia minim aute occaecat. Mollit magna aliqua eu amet cillum dolore. Enim eiusmod et veniam labore magna non mollit qui. Non tempor incididunt ea irure ut amet dolor dolor minim. Et elit in commodo culpa est veniam enim. Exercitation id aliqua dolor ipsum aliqua incididunt consequat labore cupidatat nisi pariatur proident.',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
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
                            'Laborum amet ex esse cillum ipsum est tempor et dolor cupidatat officia minim aute occaecat. Mollit magna aliqua eu amet cillum dolore. Enim eiusmod et veniam labore magna non mollit qui. Non tempor incididunt ea irure ut amet dolor dolor minim. Et elit in commodo culpa est veniam enim. Exercitation id aliqua dolor ipsum aliqua incididunt consequat labore cupidatat nisi pariatur proident.',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
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
                                LineIcons.questionCircle,
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
                            "Quizes Taken",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              fontFamily: 'Quicksand',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              fontFamily: 'Quicksand',
                              color: Colors.black,
                            ),
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
                                LineIcons.book,
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
                            "Topics Competed",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              fontFamily: 'Quicksand',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              fontFamily: 'Quicksand',
                              color: Colors.black,
                            ),
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
                                LineIcons.cog,
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
                            "Settings ",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              fontFamily: "Quicksand",
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
                                LineIcons.question,
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
                              fontFamily: "Quicksand"
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
