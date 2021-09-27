import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/Slider.dart';
import 'package:untitled5/new.dart';
class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
        actions:<Widget> [
          Badge(
            position: BadgePosition.topEnd(top: 3, end: 18),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeContent: Text('$_counter',
              style: TextStyle(color: Colors.white),
            ),
            child: IconButton(
                icon: Icon(Icons.shopping_cart),
                padding: EdgeInsets.only(right: 30.0),
                onPressed: () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CartItemWidget()),
                    );*/
                }),
          ),
        ],

         /* ElevatedButton.icon(
            onPressed: (){},
            icon: Icon(

              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 24.0,
            ),

            label: Text(''),

          ),        ],*/
      ),
     body: SafeArea(
       child: Container(
         padding: new EdgeInsets.all(10.0),
         child: SingleChildScrollView(
           child: Column(
             children: [

               Slide(),

               Row(
                 children: [
                   Text("Electric Oven",style: TextStyle(color: Colors.black,fontSize: 20,),textAlign: TextAlign.left,),

                 ],
               ),
               Row(

                 children: [
                   Text("Large Size unit",style: TextStyle(color: Colors.black,fontSize: 13,),textAlign: TextAlign.left,),

                 ],
               ),
               Row(
                 children: [
                   Column(
                     children: [
                       Row(
                         children: [
                           Text(
                             "Rs. 3050",
                             style: TextStyle(
                               color: Colors.red,fontSize: 13,
                               decoration: TextDecoration.lineThrough,
                               decorationColor: Colors.red,
                               decorationThickness: 2,
                               decorationStyle: TextDecorationStyle.dashed,
                             ),
                           ),
                           Text("  Rs. 2400",style: TextStyle(color: Colors.black,fontSize: 13,),textAlign: TextAlign.left,),
                         ],
                       )

                     ],
                   )



                 ],
               ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   //Text("Large Size unit"),
                   OutlinedButton(
                     onPressed: _incrementCounter,
                     style: ButtonStyle(
                       shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                     ),
                     child: Icon(Icons.add,),
                     //Icons.ac_unit
                   ),
                   Text("  "+'$_counter'+"  "),
                   OutlinedButton(
                     onPressed: _decrementCounter,
                     style: ButtonStyle(
                       shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                     ),
                     child: Icon(Icons.remove,),
                     //Icons.ac_unit
                   )





                 ],
               ),
               MyStatefulWidget(),

               Row(
                 children: [
                   Text("Detail",style: TextStyle(color: Colors.black,fontSize: 20,),textAlign: TextAlign.left,),

                 ],
               ),

               SizedBox(
                 height: 10,
               ),


               Row(
                 children:<Widget> [
                   Flexible(child:
                   Text("1. Input Current: A.C Current",style: TextStyle(color: Colors.black,fontSize: 13,),textAlign: TextAlign.left,),
                   )
                 ],
               ),

               /*SizedBox(
                 height: 20,
               ),*/
               Row(
                 children:<Widget> [
                   Flexible(child:
                   Text("2. Temperature Probe: A temperature probe plugs into the side of your oven wall. It can monitor the internal temperature of meat as if cooks in the oven. It then displays this temperature on the control panel.You don't have to open the door and let all the heat out to check your meat manually.",style: TextStyle(color: Colors.black,fontSize: 13,),textAlign: TextAlign.left,),
                   )
                 ],
               ),

               Row(
                 children:<Widget> [
                   Flexible(child:
                   Text("3. Glass Doors: It's always best to avoid opening your oven doors if you can. Otherwise, the heat escapes and the internal temperature drops. That's why glass doors are so helpful.You can see the food your baking without opening the door. If you're worried about dirty glass, there are a lot of ways you can keep it clean without too much effort",style: TextStyle(color: Colors.black,fontSize: 13,),textAlign: TextAlign.left,),
                   )

                 ],
               ),
               //Text("Who will manage customers in the App?",style: TextStyle(color: Colors.blue,fontSize: 17),),

               Center(
                   child: Column(
                     children: [

                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [

                           OutlinedButton(
                               onPressed: (){},
                               style: ButtonStyle(
                                 shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                               ),
                               child: Text("Add To Cart")
                             //Icons.ac_unit
                           ),

                           OutlinedButton(
                               onPressed: (){},
                               style: ButtonStyle(
                                 shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                               ),
                               child: Text("Buy Now")
                             //Icons.ac_unit
                           ),



                         ],
                       )
                     ],
                   )

               ),







             ],

           ),

         ),
       ),
     ),

    );
  }
}
