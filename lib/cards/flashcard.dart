import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:op_app/flashcards.dart';

class Flash extends StatelessWidget {
  final FlashCard flashCard;

  const Flash({Key key, this.flashCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      front: Container(
        padding: const EdgeInsets.all(8.0),
        height: 400,
        width: 300,
        decoration: BoxDecoration(
          color: Color(0xFF4354b3).withOpacity(0.9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            flashCard.frontText,
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
      back: Container(
        padding: const EdgeInsets.all(8.0),
        height: 400,
        width: 300,
        decoration: BoxDecoration(
          color: Color(0xFF4354b3).withOpacity(0.9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            flashCard.backText,
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
