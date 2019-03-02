import 'package:flutter/material.dart';
class SettingsPage extends StatefulWidget{
  @override
  State createState()=> SettingsPageState();}
  class SettingsPageState extends State<SettingsPage>{
    final dynamic appColor = const Color(0XFF2C3335);
    final dynamic bgColor = const Color(0XFF8395A7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: appColor,
        title: const Text('My Ecom App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            )),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            tooltip: 'Search',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),

        ],
      ),

        body: ListView(

      children: <Widget>[
        SizedBox(
          height: 6,
        ),
        Container(
          child: Text(
            'Settings',
            style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Change Country'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Notifications'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Default Purchase Settings'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Legal & About'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Sign Out'),
          ),
        )
      ],
    ),
    );
  }
}