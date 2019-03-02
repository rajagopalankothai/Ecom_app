import 'package:flutter/material.dart';
import 'package:flutter_second_app/carts.dart';
import 'package:flutter_second_app/drawers/programs_and_features.dart';
import 'package:flutter_second_app/drawers/settings.dart';
import 'package:flutter_second_app/drawers/shop_by_category.dart';
import 'package:flutter_second_app/home_page.dart';

class AppDrawer extends StatefulWidget {
  @override
  State createState() => AppDrawerState();
}

class AppDrawerState extends State<AppDrawer> {
  bool _programs = false;

  void _changeDrawer() {
    setState(() {
      _programs = !_programs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:
          !_programs
              ? RootDrawer(
            changeDrawer: _changeDrawer,
          )
              : ProgramsAndFeatures(changeDrawer: _changeDrawer),

    );
  }
}

class RootDrawer extends StatelessWidget {
  const RootDrawer({this.changeDrawer});

  final VoidCallback changeDrawer;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 75,
          child: const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Hello, Kothai',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage())),
          child: const ListTile(
            title: Text('Home Page'),
          ),
        ),
        InkWell(
          onTap: ()=>Navigator.push(context, MaterialPageRoute<ShopByCategory>(builder: (BuildContext context)=>ShopByCategory())),
          child: const ListTile(
            title: Text('Shop By Category'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            title: Text('Today Deals'),
          ),
        ),
        const Divider(
          color: Colors.black,
        ),
        InkWell(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Carts())),
          child: const ListTile(
            title: Text('Your Orders'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            title: Text('Your Wish List'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            title: Text('Your Account'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            title: Text('Amazon Pay'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            title: Text('Try Prime'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            title: Text('Sell on Amazon'),
          ),
        ),
        InkWell(
          onTap: changeDrawer,
          child: const ListTile(
            title: Text('Programs and Features   >'),
          ),
        ),
        const Divider(
          color: Colors.black,
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            title: Text('Languages'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            title: Text('Your Notifications'),
          ),
        ),
        InkWell(
          onTap: ()=>Navigator.push(context, MaterialPageRoute<SettingsPage>(builder: (BuildContext context)=>SettingsPage())),
          child: const ListTile(
            title: Text('Settings  >'),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const ListTile(
            title: Text('Customer Care'),
          ),
        ),
      ],
    );
  }
}


