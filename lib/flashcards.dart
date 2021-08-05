import 'package:flip_card/flip_card.dart';
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
        title: Text(
          'FlashCards',
          style: TextStyle(
            fontFamily: 'Quicksand',
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
             padding: const EdgeInsets.symmetric(horizontal:10),
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 400,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color(0xFF4354b3).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Front',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                back: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 500,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color(0xFF4354b3).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Nostrud voluptate ea ut et. Aute esse enim aliquip consectetur irure. Consectetur amet excepteur reprehenderit fugiat cillum anim sint veniam excepteur laborum excepteur sit. Irure anim ut ullamco quis duis. Eiusmod consequat do occaecat excepteur pariatur aliqua ad ad excepteur sunt non eiusmod laboris. Occaecat cupidatat ea amet est officia non deserunt cupidatat excepteur commodo commodo.',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 500,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color(0xFF4354b3).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Front',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                back: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 500,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF4354b3).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Nostrud voluptate ea ut et. Aute esse enim aliquip consectetur irure. Consectetur amet excepteur reprehenderit fugiat cillum anim sint veniam excepteur laborum excepteur sit. Irure anim ut ullamco quis duis. Eiusmod consequat do occaecat excepteur pariatur aliqua ad ad excepteur sunt non eiusmod laboris. Occaecat cupidatat ea amet est officia non deserunt cupidatat excepteur commodo commodo.',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 500,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color(0xFF4354b3).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Front',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                back: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 500,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF4354b3).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Nostrud voluptate ea ut et. Aute esse enim aliquip consectetur irure. Consectetur amet excepteur reprehenderit fugiat cillum anim sint veniam excepteur laborum excepteur sit. Irure anim ut ullamco quis duis. Eiusmod consequat do occaecat excepteur pariatur aliqua ad ad excepteur sunt non eiusmod laboris. Occaecat cupidatat ea amet est officia non deserunt cupidatat excepteur commodo commodo.',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 500,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF4354b3).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Front',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                back: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 500,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF4354b3).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Nostrud voluptate ea ut et. Aute esse enim aliquip consectetur irure. Consectetur amet excepteur reprehenderit fugiat cillum anim sint veniam excepteur laborum excepteur sit. Irure anim ut ullamco quis duis. Eiusmod consequat do occaecat excepteur pariatur aliqua ad ad excepteur sunt non eiusmod laboris. Occaecat cupidatat ea amet est officia non deserunt cupidatat excepteur commodo commodo.',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
