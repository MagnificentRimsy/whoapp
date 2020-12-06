import 'package:flutter/material.dart';
import 'package:who/repeatedWidgets/cardDetailsBlack.dart';
import 'package:who/repeatedWidgets/topBlock.dart';

void main() => runApp(FilledCards());

class FilledCards extends StatelessWidget {
  Color color;
  String ticketTItle;
  String ticketFrom;
  String ticketDateTime;

  FilledCards(
      { this.color,
      this.ticketTItle,
      this.ticketFrom,
      this.ticketDateTime});

  @override
  Widget build(BuildContext context) {
    // Build the credit card widget

    return Card(
      elevation: 8.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 150,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                '$ticketTItle',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontFamily: 'CourrierPrime'),
              ),
            ),
          TopBlock(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CardDetails(
                  label: 'Ticket From:',
                  value: ticketFrom,
                ),
                CardDetails(label: 'Date/Time', value: ticketDateTime),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
