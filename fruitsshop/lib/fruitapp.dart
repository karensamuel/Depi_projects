import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'categorie.dart';
import 'item.dart';

class Fruitapp extends StatefulWidget {
  const Fruitapp({super.key});

  @override
  State<Fruitapp> createState() => _FruitappState();
}

class _FruitappState extends State<Fruitapp> {
  List<String> cateimages = ["Vegtables","Fruits","Beverages","Grocery","Edible Oil","HouseHelp","electronics"];
  List<Color> bgColors = [Colors.green.shade50,Colors.red.shade50,Colors.blue.shade50,Colors.yellow.shade50,Colors.orange.shade50,Colors.purple.shade50,Colors.pink.shade50];
  List<Icon> icons = [Icon(Icons.local_florist,color:Colors.green),Icon(Icons.apple,color:Colors.red),Icon(Icons.local_drink,color:Colors.blue),Icon(Icons.local_grocery_store,color:Colors.yellow),Icon(Icons.local_drink,color:Colors.orange),Icon(Icons.local_drink,color:Colors.purple),Icon(Icons.local_drink,color:Colors.pink)];
  List <String> vegimages =["https://cdn.mafrservices.com/sys-master-root/ha6/h4f/10187580112926/32506_main.jpg?im=Resize=1700",
  "https://img.freepik.com/free-psd/close-up-delicious-apple_23-2151868338.jpg?semt=ais_hybrid&w=740&q=80",
  "https://m.media-amazon.com/images/I/31oubF6SdeL._UF1000,1000_QL80_.jpg",
  "https://orchardfruit.com/cdn/shop/files/Navel-Oranges-1-Pcs-The-Orchard-Fruit-72137770.jpg?v=1751051709"];
  List <String> names =["peach","apple","banana","orange"];
  List <String> prices =["10.00","20.00","40.00","20.00"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,


      home: Scaffold(
        backgroundColor: Colors.red.shade50,
        floatingActionButton: SizedBox(
          height: 80,
          width: 80,
          child: FloatingActionButton(

            backgroundColor: Colors.green,


            shape:const CircleBorder(),


            onPressed: () {
              print(vegimages[0]);
            },
            child: const Icon(Icons.shopping_bag, color: Colors.white ,size: 30,),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          color: Colors.white,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.grey,size: 40,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.person_pin,color: Colors.grey, size: 40,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.grey, size: 40,)),
              Icon(Icons.shopping_bag, color: Colors.white,size: 40,),

            ],
          )
        ),

        body:SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(

            children: [
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search Keywords..",
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.search,color: Colors.grey,size: 35,),
                 suffixIcon: Icon(Icons.list_outlined,color: Colors.grey,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,

                  ),

                filled: true,
                  fillColor: Colors.grey[200],

                )

              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 300,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.network("https://img.freepik.com/free-photo/buddha-bowl-dish-with-vegetables-legumes-top-view_1150-42589.jpg",fit: BoxFit.cover),
                    Image.network("https://thumbs.dreamstime.com/b/miniature-workers-helmets-stacking-oversized-cheeseburger-fresh-lettuce-tomatoes-melted-cheese-sesame-bun-playful-363228762.jpg",fit: BoxFit.cover),

                  ]
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,size: 30,color: Colors.grey)
                ]
              ),
              SizedBox(height: 20,),
             SizedBox(
               height: 90,
               width: double.infinity,

               child: ListView.builder(itemBuilder:(context,index){
                 return Padding(
                   padding:  EdgeInsets.all(8.0),
                   child: Categorie(icon: icons[index],bgColor: bgColors[index],name: cateimages[index],),
                 );
               },itemCount: cateimages.length,shrinkWrap: true,scrollDirection: Axis.horizontal,),
             ),
              SizedBox(height: 20,),
              Row(
                  children: [
                    Text("Featured Products",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,size: 30,color: Colors.grey)
                  ]
              ),

              SizedBox(
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75, // Adjust to a more reasonable value
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),  itemCount: names.length,
                  itemBuilder: (context,index){
                    return Item(name: names[index], price: prices[index], image: vegimages[index],);

                  }
                ),
              )
            ]
          ),
        ) ,
      )

    );
  }
}
