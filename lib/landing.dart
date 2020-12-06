import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:who/helpDetails.dart';
import 'package:who/repeatedWidgets/CustomTextField.dart';
import 'package:who/repeatedWidgets/cardDetailsBlack.dart';
import 'package:who/res/size.dart';
import 'package:who/repeatedWidgets/filledButton.dart';

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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: size.convert(context, 24)),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20),
            // SvgPicture.asset("assets/images/help.svg"),
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
              height: 5,
            ),

            Container(
              color: Colors.grey[50],
              padding:
                  EdgeInsets.only(left: 16.0, right: 16.0, top: 0, bottom: 0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.transparent,
                    size: 20.09,
                  ),
                  SizedBox(
                    width: size.convert(context, 10),
                  ),
                  Expanded(
                    child: CustomTextField(
                      color1: Colors.grey[50],
                      hints: "Search for Help",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'Browse by Category',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(height: 30),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 8.0,
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Container(
                      height: 150,
                      width: 100,
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, bottom: 10.0),
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
                            padding: const EdgeInsets.only(top: 16.0),
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
                ),
              ],
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CardDetails(
                    color2: Colors.black87,
                    value: 'John Ade',
                  ),
                  CardDetails(
                    color2: Colors.black87,
                    value: '23-11-2020/3:00pm',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'I cannot use my atm pin and it is not allowing me to change the pin at the atm machine, what do i do.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CardDetails(
                    color2: HexColor('#0093D5'),
                    value: 'Omotayo Hamzart',
                  ),
                  CardDetails(
                    color2: Colors.black87,
                    value: '23-11-2020/4:00pm',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'Card Service Unit - E-Business Dept.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              padding: EdgeInsets.only(right: 5, left: 5),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.white70,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                        'Dear Customer,  We have reset your PIN to 0000. Please visit any of our ATMs to reset the PIN. Thanks',
                        style: TextStyle(
                            fontSize: 14.0,
                            height: 2.0 //You can set your custom height here
                            )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Reply Support',
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
                      'New Complaint',
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
                      'My issue was resolved',
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
            SizedBox(height: 60),
            Container(
                child: filledButton(
              txt: "Close Ticket",
              color1: HexColor('#EA574D'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpDetailsPage()));
              },
            )),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
