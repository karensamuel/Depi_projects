import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  final String name;
  final String price;
  final String image;

  const ItemPage({super.key, required this.name, required this.price, required this.image});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  bool isFavorite=false;
  int quantity=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(widget.image),
              Positioned(
                top: MediaQuery.of(context).padding.top + 8,
                left: 8,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
         Padding(padding:  const EdgeInsets.all(16),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: 10,),
             Row(
               children: [
                 Text(" \$ ${widget.price}",style: TextStyle(fontSize: 30,color: Colors.green),),
                 Spacer(),
                 IconButton(color:isFavorite?Colors.redAccent:Colors.grey, onPressed: () {
                   setState(() {
                     isFavorite=!isFavorite;
                   });
                 },icon:Icon(isFavorite?Icons.favorite:Icons.favorite_outline,size: 40,),
                 ),

               ],
             ),

             Text(" ${widget.name}",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
             SizedBox(height: 20,),
             Container(
               height: 100,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Row(

                 children: [
                   SizedBox(width: 20,),
                   Text("Quantity",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                   Spacer(),
                   IconButton(
                     onPressed: (){
                       setState(() {
                         if(quantity>0){
                           quantity--;
                         }
                       });}
                     , icon: Icon(Icons.remove,color: Colors.grey,),),
                   VerticalDivider(thickness: 3,color: Colors.grey.shade200,),
                   Text("  $quantity  ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                   VerticalDivider(thickness: 3,color: Colors.grey.shade200,),
                   IconButton(
                     onPressed: (){
                       setState(() {
                         quantity++;
                       });}
                     , icon: Icon(Icons.add,color: Colors.grey,),)
                 ],
               ),
             ),
             SizedBox(height: 20,),
             ElevatedButton(onPressed: (){},

                 style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.green,
                     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10))

                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Add to Cart  ",style: TextStyle(color:Colors.white ,fontSize: 30),),
                     Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 30,)

                   ],
                 ))
           ],
         ),
         )
        ],
      ),
    );
  }
}
