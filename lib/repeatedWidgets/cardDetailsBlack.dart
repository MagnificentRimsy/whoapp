import 'package:flutter/material.dart';

void main() => runApp(CardDetails());

class CardDetails extends StatelessWidget {
  Color color2;
  String label;
  String value;

  CardDetails({this.label, this.value, this.color2});

  @override
  Widget build(BuildContext context) {
    // Build the credit card widget

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label',
          style: TextStyle(
              color: Colors.white,
               fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          '$value',
          style: TextStyle(
              color: color2 == null ? Colors.white : color2,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
