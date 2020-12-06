import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:who/home.dart';
import 'package:who/res/size.dart';

import 'repeatedWidgets/CustomTextField.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: .5,
        title: Center(
            child: Text(
          'Add Label',
          textAlign: TextAlign.left,
        )),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: size.convert(context, 24)),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              width: 240,
              child: Text(
                "You\'re Welcome Back!",
                style: TextStyle(
                  color: HexColor('#0093D5'),
                  fontSize: 40.0,
                  fontFamily: 'Mulish',
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              child: SvgPicture.asset("assets/images/w1.svg"),
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'E-Mail',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  child: CustomTextField(
                    color1: Colors.white70,
                    hints: "example@who.int",
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300], width: 1),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(3.0, 3.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  child: CustomTextField(
                    color1: Colors.white70,
                    hints: "Password",
                    obscureText: true,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300], width: 1),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(3.0, 3.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Sign In',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: HexColor('#0093D5'),
                          fontSize: 25.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: FloatingActionButton(
                          onPressed: () {
                            // Add your onPressed code here!
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                          ),
                          backgroundColor: HexColor('#0093D5')),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
