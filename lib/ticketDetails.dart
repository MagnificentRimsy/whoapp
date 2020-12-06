import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:who/home.dart';
import 'package:who/repeatedWidgets/CustomTextField.dart';

import 'package:who/dashboard.dart';
import 'package:who/repeatedWidgets/cardDetailsBlack.dart';
import 'package:who/repeatedWidgets/cards.dart';
import 'package:who/res/size.dart';
import 'package:who/repeatedWidgets/filledButton.dart';

void main() => runApp(TicketDetails());

class TicketDetails extends StatefulWidget {
  TicketDetails({Key key}) : super(key: key);

  @override
  _TicketDetailsState createState() => _TicketDetailsState();
}

class _TicketDetailsState extends State<TicketDetails> {
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
        
            SizedBox(
              height: 5,
            ),
            FilledCards(
                color: HexColor('#6FCF97'),
                ticketDateTime: "23-11-2020/3:00pm",
                ticketFrom: "JONAH BOYI",
                ticketTItle: "Hardware Issue"),

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
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'Ticket Options',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                ),
              ),
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

            SizedBox(height:15),

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
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            )),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
