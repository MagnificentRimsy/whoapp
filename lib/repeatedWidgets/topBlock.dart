import 'package:flutter/material.dart';

void main() => runApp(TopBlock());

class TopBlock extends StatelessWidget {
 
      
  @override
  Widget build(BuildContext context) {
    // Build the credit card widget

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Priority: High',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, top: 7),
          child: Text(
            'Opened',
            style: TextStyle(
                fontSize: 14, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          height: 30,
          width: 70,
        ),
      ],
    );;
  }
}
