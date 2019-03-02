import 'package:flutter_second_app/model/cart_item.dart';
class AddItemAction{
  final CartItem item;

  AddItemAction(this.item);

}

class DeleteItemAction{
  final CartItem item;

  DeleteItemAction(this.item);

}
