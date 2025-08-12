import 'package:flutter/material.dart';
import 'package:fruitsshop/categorie.dart';

class Categoriepage extends StatefulWidget {
  const Categoriepage({super.key});

  @override
  State<Categoriepage> createState() => _CategoriepageState();
}

class _CategoriepageState extends State<Categoriepage> {
  List<String> cateimages = ["Vegtables","Fruits","Beverages","Grocery","Edible Oil","HouseHelp","electronics"];
  List<Color> bgColors = [Colors.green.shade50,Colors.red.shade50,Colors.blue.shade50,Colors.yellow.shade50,Colors.orange.shade50,Colors.purple.shade50,Colors.pink.shade50];
  List<Icon> icons = [Icon(Icons.local_florist,color:Colors.green),Icon(Icons.apple,color:Colors.red),Icon(Icons.local_drink,color:Colors.blue),Icon(Icons.local_grocery_store,color:Colors.yellow),Icon(Icons.local_drink,color:Colors.orange),Icon(Icons.local_drink,color:Colors.purple),Icon(Icons.local_drink,color:Colors.pink)];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Categories page"),
          centerTitle: true,
          actions: [
            Icon(Icons.drag_handle)
          ],
        ),
        body: Padding(

          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10),itemCount: icons.length, itemBuilder: (BuildContext context, int index) {
             return  Categorie(icon: icons[index], bgColor: bgColors[index],name: cateimages[index],);

          },),
        ),
      );
  }
}
