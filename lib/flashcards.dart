import 'package:flutter/material.dart';
import 'cards/flashcard.dart ';

class FlashCard {
  final String frontText;
  final String backText;

  FlashCard(this.frontText, this.backText);
}

class FlashCards extends StatefulWidget {
  @override
  _FlashCardsState createState() => _FlashCardsState();
}

class _FlashCardsState extends State<FlashCards> {
  List<FlashCard> flashcardlist = [
    FlashCard('Excepteur ipsum laboris cillum est in velit consequat.',
        'Lorem ea ea do dolor voluptate aliquip. Et sint officia minim cupidatat irure aute nostrud veniam sit aute commodo ea.'),
    FlashCard('Excepteur ipsum laboris cillum est in velit consequat.',
        'Lorem ea ea do dolor voluptate aliquip. Et sint officia minim cupidatat irure aute nostrud veniam sit aute commodo ea.'),
    FlashCard('Excepteur ipsum laboris cillum est in velit consequat.',
        'Lorem ea ea do dolor voluptate aliquip. Et sint officia minim cupidatat irure aute nostrud veniam sit aute commodo ea.'),
    FlashCard('Excepteur ipsum laboris cillum est in velit consequat.',
        'Lorem ea ea do dolor voluptate aliquip. Et sint officia minim cupidatat irure aute nostrud veniam sit aute commodo ea.'),
    FlashCard('Excepteur ipsum laboris cillum est in velit consequat.',
        'Lorem ea ea do dolor voluptate aliquip. Et sint officia minim cupidatat irure aute nostrud veniam sit aute commodo ea.'),
  ];
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
          padding: const EdgeInsets.symmetric( vertical: 60),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: flashcardlist.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal:12,vertical: 8),
                  child: Flash(
                    flashCard: flashcardlist[index],
                  ),
                );
              })),
    ));
  }
}
