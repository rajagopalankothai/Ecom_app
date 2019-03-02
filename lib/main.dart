import 'package:flutter/material.dart';
import 'package:flutter_second_app/home_page.dart';
import 'package:flutter_second_app/model/cart_item.dart';
import 'package:redux/redux.dart';
import 'package:flutter_second_app/redux/reducers.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main(){
  final store = Store<List<CartItem>>(cartItemsReducer,initialState: List());
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
final Store<List<CartItem>> store;
const MyApp({Key key,this.store}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
     child: MaterialApp(
      home: HomePage(store: store),
    ),
    );
  }
}


