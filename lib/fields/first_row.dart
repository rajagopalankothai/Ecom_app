import 'package:flutter/material.dart';

class FirstRow extends StatelessWidget{
  final appColor = const Color(0XFF2C3335);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: appColor,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: InkWell(
              onTap: () {},
              child: Text(
                'Prime',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: Text(
                'Grocery',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: Text(
                'Mobiles',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: Text(
                'Fashion',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}