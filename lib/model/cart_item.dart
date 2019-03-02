import 'package:meta/meta.dart';
class CartItem{
  String name;
  var price;

  CartItem({@required this.name,@required this.price});

  @override
  String toString() {
    return "$name : $price";
  }


}