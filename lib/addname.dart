import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:op_app/tools/btnbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddName extends StatefulWidget {
  @override
  _AddNameState createState() => _AddNameState();
}

class _AddNameState extends State<AddName> {
  var _formkey = GlobalKey<FormBuilderFieldState>();
  TextEditingController nameController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xFF4354b3),
        onPressed: () async {
          if (nameController.text != null || nameController.text.isNotEmpty) {
            print(nameController.text);
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString('loginDetails', nameController.text);
            prefs.setBool('isLoggin', true);
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => BtnNavbar()));
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Welcome ${nameController.text}',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
              duration: const Duration(seconds: 3),
              backgroundColor: Colors.green,
              elevation: 0,
              behavior: SnackBarBehavior.floating,
            ));
          }
        },
        elevation: 0,
        label: Row(
          children: [
            Text(
              'Go',
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
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/welcome.svg',
                  width: 200,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  'Welcome to iRis, your Ocular Physiology guide.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Quicksand'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Text(
                  'Please enter your name',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Quicksand'),
                ),
              ),
              FormBuilder(
                key: _formkey,
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(LineIcons.user),
                        onPressed: () {},
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 4, right: 20),
                            child: FormBuilderTextField(
                              name: 'name',
                              controller: nameController,
                              decoration:
                                  InputDecoration(hintText: 'First Name'),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.text,
                              validator: (value) => value.isEmpty
                                  ? 'Please enter new First name'
                                  : null,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
