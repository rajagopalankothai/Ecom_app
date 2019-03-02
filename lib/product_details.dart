import 'package:flutter/material.dart';
import 'package:flutter_second_app/carts.dart';

class ProductDetails extends StatefulWidget {
  final String itemname;
  final dynamic itemprice;
  final dynamic itempicture;

  ProductDetails({this.itemname, this.itemprice, this.itempicture});

  @override
  State createState() => ProductDetailsState();
}

class ProductDetailsState extends State<ProductDetails> {
  final dynamic appColor = const Color(0XFF2C3335);
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: appColor,
        title: const Text('My Ecom App', style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white,)),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search, color: Colors.white,),
            tooltip: 'Search',
            onPressed: () {},),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white,),
            onPressed: () {},),
        ],),
      body: ListView(scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(height: 3.0,),
          Container(padding: EdgeInsets.fromLTRB(22.0, 6.0, 0.0, 0.0),
            color: Colors.grey[30],
            height: 45,
            child: Row(textDirection: TextDirection.ltr,
              children: <Widget>[
                Icon(Icons.location_on, color: Colors.black),
                Container(child: Column(children: <Widget>[
                  Text('Deliver to Kothai',
                      style: TextStyle(color: Colors.black)),
                  Text('Chennai 600071', style: TextStyle(color: Colors.black)),
                ],),),
              ],),),
          ratings,
          SizedBox(height: 6),
          Container(padding: EdgeInsets.fromLTRB(22.0, 0.0, 0.0, 0.0),
            height: 40,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Aurelia', style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blue)),
                Text('Aurelia Ethic Wear collection.',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15))

              ],),),

          Container(// padding: EdgeInsets.fromLTRB(left, top, right, bottom),
              height: 350,
              child: GridTile(child: Container(
                  child: Image.asset('assets/images/d3.jpeg')))),
          SizedBox(height: 7),
          Row(children: <Widget>[ Padding(
            padding: const EdgeInsets.fromLTRB(22.0, 5.0, 5.0, 5.0),
            child: Text('Size Chart', style: TextStyle(color: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal),),)
          ],),
          Row(children: <Widget>[ Padding(
            padding: const EdgeInsets.fromLTRB(22.0, 5.0, 5.0, 5.0),
            child: Text('Fit  : ', style: TextStyle(color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),),),
            Padding(padding: EdgeInsets.all(5.0),
            child: Text('Regular',style: TextStyle(color: Colors.black,
                fontSize: 16,
                fontStyle: FontStyle.normal)),),
          ],),
          Divider(color: Colors.grey),
          Row(children: <Widget>[ Padding(
            padding: const EdgeInsets.fromLTRB(22.0, 5.0, 5.0, 5.0),
            child: Text('Colour :', style: TextStyle(color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),),),
            Padding(padding: EdgeInsets.all(5.0),
            child:Text('Red',style: TextStyle(color: Colors.black,
    fontSize: 16,
    fontStyle: FontStyle.normal)) ,)

          ],),
          Divider(color: Colors.grey),
          Container(
            height: 80,
            margin: const EdgeInsets.all(22.0),
            padding: const EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
                border: new Border.all(color: Colors.black),
              color: Colors.black12,
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Size :', style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal)),
                  Text('Select Size', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                ],
            ),
              ),
              SizedBox(width: 180),
              Expanded(child: Icon(Icons.arrow_forward_ios)),
            ],),

          ),

         



          Row(children: <Widget>[ Padding(
            padding: const EdgeInsets.fromLTRB(22.0, 5.0, 5.0, 5.0),
            child: Text('M.R.P.      : ', style: TextStyle(color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal),),),
          Padding(padding: EdgeInsets.all(5.0),
            child: Text('Rs. ${widget.itemprice}',style: TextStyle(color: Colors.black,
                fontSize: 16, fontWeight: FontWeight.normal,decoration: TextDecoration.lineThrough,
                fontStyle: FontStyle.normal)),),
          ],),
      Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(22.0, 5.0, 5.0, 5.0),
          child: Text('Price        : ', style: TextStyle(color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal),),),

        Padding(padding: EdgeInsets.all(5.0),
          child: Text('Rs. 2000',style: TextStyle(color: Colors.red,
              fontSize: 16, fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal),),)

      ],),
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 5.0, 5.0, 5.0),
              child: Text('You Save : ', style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal),),),

            Padding(padding: EdgeInsets.all(5.0),
              child: Text('Rs. 500',style: TextStyle(color: Colors.red,
                  fontSize: 16, fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal),),)

          ],),
          Padding(padding:EdgeInsets.all(5.0),
            child: Container(
                  height: 40,
                  margin: const EdgeInsets.all(22.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black),
                    color: Colors.white,
                  ),
                  child: MaterialButton(onPressed: (){},
                  child:Row(children: <Widget>[
                    Text('Qty'),
                    Icon(Icons.arrow_drop_down)
                  ],)
                  )
                ),
          ),








      Column(children: <Widget>[
        SizedBox(height: 5),
        Material(borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(onPressed: () {},
            color: Colors.orangeAccent,
            textColor: Colors.black,
            elevation: 0.2,
            minWidth: 370.0,
            height: 50.0,
            child: Text('Buy Now', style: TextStyle(fontSize: 16)),),),
        SizedBox(height: 15.0),
        Material(borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Carts())),
            color: Colors.orangeAccent,
            textColor: Colors.black,
            elevation: 0.2,
            minWidth: 370.0,
            height: 50.0,
            child: Text('Add to Cart', style: TextStyle(fontSize: 16)),),),
        SizedBox(height: 10.0),
        Container(padding: EdgeInsets.fromLTRB(0.0, 0.0, 230.0, 0.0),
          alignment: Alignment(0.0, 1.0),
          child: Text('ADD TO WISHLIST',
            style: TextStyle(color: Colors.blue, fontSize: 16),),),
        SizedBox(height: 20.0),
        Divider(color: Colors.grey),
        Container(padding: EdgeInsets.fromLTRB(22.0, 0.0, 55.0, 0.0),
          child: Column(
            children: <Widget>[
            Text('Have any questions',
              style: TextStyle(color: Colors.black, fontSize: 28),),
            Text('Find answers in product Info, Q&As, reviews',
              style: TextStyle(color: Colors.black, fontSize: 16),),
          ],),

          ),
        Container(
          height: 40,
          margin: const EdgeInsets.all(22.0),
          padding: const EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
            border: new Border.all(color: Colors.black),
            color: Colors.white,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.search,color: Colors.black)
            ],),
        ),


                Container(padding: EdgeInsets.fromLTRB(22.0, 0.0, 0.0, 0.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('About this item',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),


        Container(
          height: 330,
          margin: const EdgeInsets.all(22.0),
          padding: const EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
            border: new Border.all(color: Colors.black),
            color: Colors.white,
          ),

          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text('Description :',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),SizedBox(height: 7.0,),
              Text('White solid straight kurta, has a mandarin collar, three-quarter sleeves, hook-and-eye closure on the front, straight hem, side slits, one pocket',style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
  Divider(color: Colors.grey),
              SizedBox(height: 7.0,),
              Text('Features :',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),SizedBox(height: 7.0,),
              Text('. Material: Cotton with three quarter sleeve and round neck'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal)),SizedBox(height: 7.0,),
              Text('. Straight fit'
                  ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal)),SizedBox(height: 7.0,),
              Text('. Calf length'
                  ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal)),SizedBox(height: 7.0,),
              Text('. Dry clean only'
                  ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal)),SizedBox(height: 7.0,),
              Text('. Casual wear'
                  ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal)),SizedBox(height: 7.0,),



            ],),

        ),
        Container(padding: EdgeInsets.fromLTRB(22.0, 0.0, 0.0, 0.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Customer Questions',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Container(
          height: 40,
          margin: const EdgeInsets.all(22.0),
          padding: const EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
            border: new Border.all(color: Colors.black),
            color: Colors.white,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.search,color: Colors.grey),
              Text('Have a question?  Search for answers',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16),),
            ],),
        ),
        Container(padding: EdgeInsets.fromLTRB(22.0, 0.0, 0.0, 0.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Customer Reviews',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Padding(padding:EdgeInsets.all(5.0),
          child: Container(
              height: 45,
              margin: const EdgeInsets.all(22.0),
              padding: const EdgeInsets.all(10.0),
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.black),
                color: Colors.black12,
              ),
              child: MaterialButton(onPressed: (){}

                  ,
                  child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: <Widget>[
                    Text('Be the first to write the review',style: TextStyle(color: Colors.black),),
                    SizedBox(width: 75.0),
                    Icon(Icons.arrow_forward_ios)
                  ],)
              )
          ),
        ),


      ],),


      ],),


    );

  }
}

var stars = Row(mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.yellow),
    Icon(Icons.star, color: Colors.yellow),
    Icon(Icons.star, color: Colors.yellow),
    Icon(Icons.star, color: Colors.yellow),
    Icon(Icons.star_border, color: Colors.yellow),
  ],);

final ratings = Container(padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),
  height: 15,
  child: Row(textDirection: TextDirection.rtl,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [

      Text('10', style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14,),),
      stars,
    ],),);


