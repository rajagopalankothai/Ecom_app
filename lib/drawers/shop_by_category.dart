import 'package:flutter/material.dart';
import 'package:flutter_second_app/fields/app_drawer.dart';
class ShopByCategory extends StatefulWidget{
  @override
  State createState()=>ShopByCategoryState();
}
class ShopByCategoryState extends State<ShopByCategory>{
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
              child: const Text(
                'Shop By Category',
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title:  Text('Echo & Alexa'),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.dehaze),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title:  Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

          ]
      ),
    );
  }
}