import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:who/home.dart';
import 'package:who/repeatedWidgets/CustomTextField.dart';

import 'package:who/res/size.dart';
import 'package:who/repeatedWidgets/filledButton.dart';
import 'package:who/ticketDetails.dart';

import 'repeatedWidgets/filledButton.dart';

void main() => runApp(AddTicketPage());

class AddTicketPage extends StatefulWidget {
  AddTicketPage({Key key}) : super(key: key);

  @override
  _AddTicketPageState createState() => _AddTicketPageState();
}

class _AddTicketPageState extends State<AddTicketPage> {
  String valueChoose;
  String zoneChoose;

  List listItem = ["High", "Low", "Medium"];

  List listZone = [
    "Abuja",
    "North West Zone",
    "North Central Zone",
    "North East Zone",
    "South West Zone",
    "South East Zone",
    "South South Zone"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: .5,
        title: Center(
            child: Text(
          'New Ticket',
          textAlign: TextAlign.left,
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
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'COMPLAINT TITLE',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              child: CustomTextField(
                color1: Colors.white70,
                hints: "Enter Complaint title",
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'CATEGORY',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding:
                  EdgeInsets.only(left: 16.0, right: 16.0, top: 7, bottom: 7),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DropdownButton(
                      hint: Text(
                        "Select Priority",
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Mulish',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      dropdownColor: Colors.grey[100],
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey[400],
                      ),
                      iconSize: 36,
                      elevation: 5,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue;
                        });
                      },
                      items: listItem.map((valueItem) {
                        return DropdownMenuItem(
                          
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300], width: 1),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(3.0, 3.0),
                      blurRadius: 10.0,
                      spreadRadius: 1.0),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'ZONE/SITE',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding:
                  EdgeInsets.only(left: 16.0, right: 16.0, top: 7, bottom: 7),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DropdownButton(
                      hint: Text(
                        "Select ZONE",
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Mulish',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      dropdownColor: Colors.grey[100],
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey[400],
                      ),
                      iconSize: 36,
                      elevation: 5,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      value: zoneChoose,
                      onChanged: (newValue) {
                        setState(() {
                          zoneChoose = newValue;
                        });
                      },
                      items: listZone.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300], width: 1),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(3.0, 3.0),
                      blurRadius: 10.0,
                      spreadRadius: 1.0),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'COMPLAINT',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 150,
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
                    child: TextFormField(
                      enabled: true,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      controller: null,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 10),
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintText: "Complaint here",
                          hintStyle: TextStyle(
                            fontSize: size.convert(context, 14),
                            fontFamily: "Mulish",
                            color: Colors.grey,
                          )),
                      //autofocus: true,
//              style: TextStyle(
//
//              ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
                child: filledButton(
              txt: "Send Complaint",
              color1: HexColor('#0093D5'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TicketDetails()));
              },
            )),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
