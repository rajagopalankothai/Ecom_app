import 'package:flutter_second_app/model/cart_item.dart';
import 'package:flutter_second_app/redux/actions.dart';

List<CartItem> cartItemsReducer(List<CartItem> items, dynamic action) {
if(action is AddItemAction){
return addItem(items, action);
}
else if(action is DeleteItemAction){
return deleteItem(items, action);
}
return items;
}

List<CartItem>addItem(List<CartItem> items, AddItemAction action){
  return List.from(items)..add(action.item);
}

List<CartItem>deleteItem(List<CartItem> items, DeleteItemAction action){
  return List.from(items)..remove(action.item);
}