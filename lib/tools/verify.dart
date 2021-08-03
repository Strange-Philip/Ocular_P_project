import 'loading.dart';
import 'package:flutter/material.dart';
import 'package:op_app/addname.dart';
import 'package:op_app/tools/btnbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VerifyUser extends StatefulWidget {
  @override
  _VerifyUserState createState() => _VerifyUserState();
}

class _VerifyUserState extends State<VerifyUser> {
  bool isLoggin = false;
  bool isLoading = false;

  checkUserLogin() async {
    isLoading = true;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLogin = prefs.getBool('isLoggin') ?? false;

    setState(() {
      isLoggin = isLogin;
      isLoading = false;
    });
  }

  @override
  void initState() {
    checkUserLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? Center(child: Loading()) : check();
  }

  Widget check() {
    if (isLoggin == true) {
      return BtnNavbar();
    } else {
      return AddName();
    }
  }
}
