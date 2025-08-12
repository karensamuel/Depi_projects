import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item.dart';

class Vegtablepage extends StatefulWidget {
  const Vegtablepage({super.key});

  @override
  State<Vegtablepage> createState() => _VegtablepageState();
}

class _VegtablepageState extends State<Vegtablepage> {
  List <String> vegimages =["https://cdn.mafrservices.com/sys-master-root/ha6/h4f/10187580112926/32506_main.jpg?im=Resize=1700",
    "https://img.freepik.com/free-psd/close-up-delicious-apple_23-2151868338.jpg?semt=ais_hybrid&w=740&q=80",
    "https://m.media-amazon.com/images/I/31oubF6SdeL._UF1000,1000_QL80_.jpg",
    "https://orchardfruit.com/cdn/shop/files/Navel-Oranges-1-Pcs-The-Orchard-Fruit-72137770.jpg?v=1751051709"];
  List <String> names =["peach","apple","banana","orange"];
  List <String> prices =["10.00","20.00","40.00","20.00"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          title: Text("vegtable page"),
          centerTitle: true,
          actions: [
            Icon(Icons.drag_handle)
          ],
        ),
        body:Padding(

          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.7,crossAxisSpacing: 20.0,mainAxisSpacing: 20),
            itemCount: names.length,

            itemBuilder: (BuildContext context, int index) { return Item(name: names[index], price: prices[index], image: vegimages[index]);},

          ),
        )
      );

  }
}
