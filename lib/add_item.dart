import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_second_app/model/cart_item.dart';
import 'package:flutter_second_app/redux/actions.dart';
 class AddItem extends StatefulWidget{
   @override
   State createState()=>AddItemState();
 }
 class AddItemState extends State<AddItem>{
   String itemName;
   var itemPrice;
   @override
   Widget build(BuildContext context) {
    return StoreConnector<List<CartItem>,OnItemAddedCallback>(
converter: (store)=>(itemName)=>store.dispatch(AddItemAction(CartItem(name: itemName, price: itemPrice))),
      builder: (context, callback)=>
      AlertDialog(
      title: Text('Add Item'),
      content: Column(
        children: <Widget>[
          Expanded(child: TextField(
            decoration: InputDecoration(
              labelText: ('Product Name'),
              hintText: ('Enter The Product Name'),


            ),
onChanged: (text) {
     setState(() {
     itemName = text;
     });},
          )),
          Expanded(child: TextField(
            decoration: InputDecoration(
              labelText: ('Product Price'),
              hintText: ('Enter The Product Price'),
            ),
            onChanged: (int) {
              setState(() {
                itemPrice = int;
              });},

          )),
        ],
      ),
      actions: <Widget>[
        FlatButton(onPressed: (){callback(itemName);
        Navigator.of(context).pop();}, child: Text('Add The product')),
        FlatButton(onPressed:()=> Navigator.of(context).pop(), child: Text('cancel')),
      ],
    ),
    );
  }
 }
 typedef OnItemAddedCallback = Function (String itemName);