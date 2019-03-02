import 'package:flutter/material.dart';

class SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget>[
          Text(
            'Amazon Pay',
            style:
            TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
          ),
          Text(
            'Scan',
            style:
            TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
          ),
          Text(
            'Recharges',
            style:
            TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
          ),
          Text(
            'Pay Bills',
            style:
            TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
          ),
          Text(
            'offers',
            style:
            TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
          ),
        ].map<Widget>((Widget child) {
          return Container(
            child: child,
          );
        }).toList(),
      ),
    );
  }
}
