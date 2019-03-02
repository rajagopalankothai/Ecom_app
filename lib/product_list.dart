import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_second_app/model/cart_item.dart';
import 'package:flutter_second_app/product_item.dart';
 class ProductList extends StatelessWidget{
   @override
   Widget build(BuildContext context) {
    return StoreConnector <List<CartItem>,List<CartItem>>(
      converter: (store)=> store.state,
      builder:(context,list)=> GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, i)  => ProductItem(item : list[i]),
      itemCount: list.length,
    ),
    );
  }
 }