


import 'package:flutter/material.dart';

class Item extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
        height: 300,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(

            children: [
              Row(
                children: [
                  Spacer(),
                  Icon(Icons.favorite_outline,color: Colors.grey),
                ],
              ),
              Image.network(image,fit: BoxFit.cover,height: 100,),

              Text("\$$price",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.green ),)
              ,Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
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



    );
  }
}
