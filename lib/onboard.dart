import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:line_icons/line_icons.dart';
import 'package:op_app/tools/btnbar.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreen createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: IntroductionScreen(
      showNextButton: true,
      pages: [
        PageViewModel(
            title: "Quick and Easy Learning",
            image: SvgPicture.asset(
              "images/intro.svg",
            ),
            body:
                "Get all resources and the notes for Ocular Physiology with simple diagrams at one place.",
            decoration: PageDecoration(
                pageColor: Colors.white,
                imagePadding: EdgeInsets.all(50),
                titleTextStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w600),
                bodyTextStyle: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Quicksand',
                ))),
        PageViewModel(
            title: "My simple notes",
            image: SvgPicture.asset(
              "images/notes.svg",
            ),
            body:
                "Take simple notes from what you learn and easily keep it locally on your phone.",
            decoration: PageDecoration(
                pageColor: Colors.white,
                imagePadding: EdgeInsets.all(50),
                titleTextStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w600),
                bodyTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Quicksand',
                ))),
        PageViewModel(
            title: "Try Flashcards",
            image: SvgPicture.asset(
              "images/flashcards.svg",
            ),
            body:
                "Get simple notes and definitions placed on cards for easy studies. ",
            decoration: PageDecoration(
                pageColor: Colors.white,
                imagePadding: EdgeInsets.all(50),
                titleTextStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w600),
                bodyTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Quicksand',
                ))),
        PageViewModel(
            title: "Test yourself with quizes",
            image: SvgPicture.asset(
              "images/quizes.svg",
            ),
            body:
                "There are quizes based on each topic you can try out.Our quizes are multiple choice question.",
            decoration: PageDecoration(
                pageColor: Colors.white,
                imagePadding: EdgeInsets.all(50),
                titleTextStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w600),
                bodyTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Quicksand',
                ))),
        PageViewModel(
            title: "Track your progress",
            image: SvgPicture.asset(
              "images/analysis.svg",
            ),
            footer: FloatingActionButton.extended(
              backgroundColor: Color(0xFF4354b3),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => BtnNavbar()));
              },
              elevation: 0,
              label: Row(
                children: [
                  Text(
                    'Get Started',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  Icon(
                    LineIcons.angleRight,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            body:
                "Get reports and analysis on topics read and quizes taken easily on our app.",
            decoration: PageDecoration(
                pageColor: Colors.white,
                imagePadding: EdgeInsets.all(50),
                titleTextStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w600),
                bodyTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Quicksand',
                ))),
      ],
      onDone: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => BtnNavbar()));
      },
      done: Text(
        "",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          fontFamily: 'Quicksand',
          color: Color(0xFF4354b3),
        ),
      ),
      showSkipButton: true,
      next: Text(
        "Next",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          fontFamily: 'Quicksand',
          color: Color(0xFF4354b3),
        ),
      ),
      skip: Text(
        "Skip",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          fontFamily: 'Quicksand',
          color: Color(0xFF4354b3),
        ),
      ),
      dotsDecorator: DotsDecorator(
          activeColor: Color(0xFF4354b3), spacing: EdgeInsets.all(2)),
    ));
  }
}
