import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class NotesCard extends StatelessWidget {


  const NotesCard({Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
         
        },
        child: Container(
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 5,
                decoration: BoxDecoration(
                  color: Color(0xFF4354b3),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 120,
                  width: 289,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // CircleAvatar(
                            //   radius: 20,
                            //   backgroundColor: Color(0xFF4354b3),
                            // ),
                            // SizedBox(
                            //   width: 5,
                            // ),
                            Container(
                              width: 130,
                              child: Text(
                                "Eyelid Notes",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                   fontFamily: 'Quicksand',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Icon(
                                LineIcons.stickyNote,
                                color: Color(0xFF4354b3),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 270,
                        child: Text(
                          'Laborum amet ex esse cillum ipsum est tempor et dolor cupidatat officia minim aute occaecat. Mollit magna aliqua eu amet cillum dolore. Enim eiusmod et veniam labore magna non mollit qui. Non tempor incididunt ea irure ut amet dolor dolor minim. Et elit in commodo culpa est veniam enim. Exercitation id aliqua dolor ipsum aliqua incididunt consequat labore cupidatat nisi pariatur proident.',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                             fontFamily: 'Quicksand',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            
                          ),
                        ),
                      ),
                      Spacer(),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 10),
                      //   child: Row(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Icon(LineIcons.comment,
                      //           size: 18, color: Colors.green[800]),
                      //       SizedBox(
                      //         width: 3,
                      //       ),
                      //       Text(
                      //         forum.comments,
                      //         maxLines: 1,
                      //         overflow: TextOverflow.ellipsis,
                      //         style: TextStyle(
                      //           color: Colors.green[800],
                      //           fontSize: 16,
                      //           fontWeight: FontWeight.w400,
                              
                      //         ),
                      //       ),
                      //       Spacer(),
                      //       Text(
                      //         forum.time,
                      //         maxLines: 1,
                      //         overflow: TextOverflow.ellipsis,
                      //         style: TextStyle(
                      //           color: Colors.green[800],
                      //           fontSize: 16,
                      //           fontWeight: FontWeight.w400,
                              
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}