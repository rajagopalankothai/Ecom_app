List<CartItem> addItem(List<CartItem> items, AddItemAction action)
{
  bool isItemFound=false;
  if(items!=null)
  {

    for(int itemcount=0;itemcount<items.length;itemcount++){
      CartItem item=items[itemcount];
      if(item.product.id==action.item.product.id){
        print("itemcount found");
        item.quantity=action.item.quantity;
        isItemFound=true;
        break;
      }
    }

  }else{
    items=new List();
  }

  if(!isItemFound){
    items.add(action.item);
  }

  return items;
}