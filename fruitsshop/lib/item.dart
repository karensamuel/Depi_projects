


import 'package:flutter/material.dart';

import 'itempage.dart';

class Item extends StatefulWidget {
  final String name;
  final String price;
  final String image;

  const Item({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  State<Item> createState() => _ItemState();
}


class _ItemState extends State<Item> {

  bool isFavorite = false;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
        MaterialPageRoute(builder: (context)=>ItemPage(name: widget.name,price: widget.price,image: widget.image,))
        );},
      child: Container(
          padding: const EdgeInsets.all(8),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Spacer(),
                    IconButton(color:isFavorite? Colors.red:Colors.grey, onPressed: () {
                      setState(() {
                        isFavorite=!isFavorite;
                      });
                    },icon:Icon(isFavorite?Icons.favorite:Icons.favorite_outline),),
                  ],
                ),
                Expanded(child: Image.network(widget.image,fit: BoxFit.cover,height: 100,)),

                Text("\$${widget.price}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.green ),)
                ,Text(widget.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
                Divider(thickness: 3,color: Colors.red.shade50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_shopping_cart,color: Colors.green),
                    Text("Add to cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)
                  ],
                )

              ]
          )



      ),
    );
  }
}
