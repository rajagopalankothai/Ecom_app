import 'package:flutter/material.dart';
import 'package:flutter_second_app/add_item.dart';
import 'package:flutter_second_app/carts.dart';
import 'package:flutter_second_app/fields/fourth_row.dart';
import 'package:flutter_second_app/fields/second_row.dart';
import 'package:flutter_second_app/model/cart_item.dart';
import 'package:flutter_second_app/product_list.dart';
import 'package:redux/redux.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_second_app/fields/first_row.dart';
import 'package:flutter_second_app/fields/app_drawer.dart';

class HomePage extends StatelessWidget{
  final Store<List<CartItem>> store;
  HomePage({Key key,this.store}): super(key: key);
  final dynamic appColor = const Color(0XFF2C3335);
  final dynamic bgColor = const Color(0XFF8395A7);
 final Widget firstcarousel = Container(
    height: 200,
    child: Carousel(
      boxFit: BoxFit.contain,
      autoplayDuration: const Duration(seconds: 10),
      dotSize: 4,
      indicatorBgPadding: 5,
      images: const <AssetImage>[
        AssetImage('assets/images/d1.jpeg'),
        AssetImage('assets/images/heel1.jpg'),
        AssetImage('assets/images/h2.jpg'),
        AssetImage('assets/images/d4.jpeg'),
      ],
    ), //child
  );
 final Widget secondcarousel = Container(
    height: 200,
    child: Carousel(
      boxFit: BoxFit.cover,
      autoplayDuration: const Duration(seconds: 50),
      dotSize: 1.0,
      indicatorBgPadding: 1.0,
      images: const <AssetImage>[
        AssetImage('assets/images/heels.jpg'),
        AssetImage('assets/images/wallet.jpg'),
        AssetImage('assets/images/flat1.jpg'),
        AssetImage('assets/images/hb1.png'),
      ],
    ), //child
  );
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
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () => additemDialog(context),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
         FirstRow(),
          firstcarousel,
          secondcarousel,
          SecondRow(),
          Container(height: 320, child: ProductList()),
         Container(height: 300, child: FourthRow()),
        ],
      ),

     // ProductList(),

    );
  }
}
additemDialog(BuildContext context){
  showDialog(context: context,builder: (context)=>AddItem());
}