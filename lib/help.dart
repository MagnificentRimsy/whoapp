import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:who/repeatedWidgets/CustomTextField.dart';
import 'package:who/res/size.dart';

void main() => runApp(HelpPage());

class HelpPage extends StatefulWidget {
  HelpPage({Key key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: .5,
        title: Center(
            child: Text(
          'Ticket Detail #332',
          style: TextStyle(
            color: Colors.black,
          ),
        )),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Help',
                      style: TextStyle(
                        color: HexColor('#0093D5'),
                        fontSize: 24.0,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Center',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24.0,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 0, bottom: 0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 20.09,
                      ),
                      SizedBox(
                        width: size.convert(context, 10),
                      ),
                      Expanded(
                        child: CustomTextField(
                          color1: Colors.transparent,
                          hints: "Search for Help",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 380,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    children: List.generate(4, (index) {
                      return Container(
                        child: Card(
                          elevation: 8.0,
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Container(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    'Beginner',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontFamily: 'CourrierPrime'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'Basic Service',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontFamily: 'CourrierPrime'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Frequently Asked Questions',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Network Issues',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: HexColor('#0093D5'),
                        ),
                      ),
                    ],
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
                SizedBox(height: 15),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'System Cannot install updates',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: HexColor('#0093D5'),
                        ),
                      ),
                    ],
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
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
