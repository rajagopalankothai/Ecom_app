import 'package:flutter/material.dart';
import 'package:flutter_second_app/fields/app_drawer.dart';
class Carts extends StatefulWidget{
  @override
  State createState()=>CartsState();
}
class CartsState extends State<Carts>{
  final dynamic appColor = const Color(0XFF2C3335);
  final dynamic bgColor = const Color(0XFF8395A7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: appColor,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            tooltip: MaterialLocalizations
                .of(context)
                .openAppDrawerTooltip,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
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
    onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Carts())),
    ),
        ],
      ),
      drawer: AppDrawer(),
      body: Container(),
    );
  }
}