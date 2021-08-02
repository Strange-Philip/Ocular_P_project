import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:op_app/notes.dart';
import 'package:op_app/onboard.dart';
import 'package:op_app/tools/btnbar.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/notesprovider.dart';
import 'notesaddpage.dart';
import 'notesview.dart';

int intScreen;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefences = await SharedPreferences.getInstance();
  // ignore: await_only_futures
  intScreen = await prefences.getInt('intScreen');
  await prefences.setInt('intScreen', 1);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => NoteProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: Colors.grey[100]),
          home: SafeArea(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: Container(
                  height: 150,
                  width: 250,
                  child: AnimatedSplash(
                    home: intScreen == 0 || intScreen == null
                        ? OnboardingScreen()
                        : BtnNavbar(),
                    imagePath: 'images/logo.png',
                    type: AnimatedSplashType.StaticDuration,
                    duration: 3000,
                  ),
                ),
              ),
            ),
          ),
          routes: {
            'homepage': (context) => Notes(),
            'noteView': (context) => NoteView(),
            'noteEdit': (context) => NoteEditScreen(),
          },
        ));
  }
}
