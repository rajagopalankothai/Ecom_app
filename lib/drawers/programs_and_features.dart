import 'package:flutter/material.dart';

class ProgramsAndFeatures extends StatefulWidget {
  ProgramsAndFeatures({this.changeDrawer});

  final VoidCallback changeDrawer;

  @override
  State createState() => new ProgramsAndFeaturesState();
}

class ProgramsAndFeaturesState extends State<ProgramsAndFeatures> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 75,
          child: DrawerHeader(
            child: InkWell(
              onTap: widget.changeDrawer,
              child: ListTile(
                title: Text('Main Menu'),
                leading: Icon(Icons.menu),
              ),
            ),
          ),
        ),
        Container(
          child: Text(
            'Programs and features',
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
            title: Text('Amazon Coupons'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Amazon Launchpad'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Amazon Pantry'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Amazon Renewed'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Kindle Unlimited'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Subscribe & Save'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('The Magazine'),
          ),
        ),
      ],
    );
  }
}
