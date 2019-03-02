import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_second_app/model/cart_item.dart';
import 'package:flutter_second_app/product_details.dart';
import 'package:flutter_second_app/redux/actions.dart';

class ProductItem extends StatefulWidget {
  final CartItem item;
  const ProductItem({Key key,this.item}) : super(key : key);
  @override
  State createState() => ProductItemState();
}
  class ProductItemState extends State<ProductItem>{

  @override
  Widget build(BuildContext context) {
    return Dismissible(


      key: Key(widget.item.name),
      child: StoreConnector<List<CartItem>, OnItemDeleted>(
        converter: (store)=>(itemName)=>store.dispatch(DeleteItemAction(widget.item)),
      builder: (context, callback)=>
          Card(
            child: Hero(
              tag: widget.item.name,
              child:Material(
                child: InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>ProductDetails(
                    itemname: widget.item.name, itemprice: widget.item.price,

                  ))),
                  child: GridTile(
                      footer: Container(
                        color: Colors.white70,
                        child: ListTile(
                          leading: Text(
                            widget.item.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          title: Text(
                            '${widget.item.price}',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      child: Image.asset('assets/images/d3.jpeg',
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
          ),
    ),
    );
  }
}
typedef OnItemDeleted = Function(CartItem item);