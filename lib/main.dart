import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:op_app/onboard.dart';
import 'package:op_app/tools/btnbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey[100]),
      home: intScreen == 0 || intScreen == null
          ? OnboardingScreen()
          : BtnNavbar(),
    );
  }
}
