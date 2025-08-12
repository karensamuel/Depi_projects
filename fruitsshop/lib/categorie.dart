
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruitsshop/vegtablepage.dart';

class Categorie extends StatelessWidget {
  final Icon icon;
  final Color bgColor;
  final String name;

  const Categorie({
    super.key,
    required this.icon,
    required this.bgColor,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20),

        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(10),
        ),),
      onPressed: () {
        Navigator.push(
            context,
        MaterialPageRoute(builder: (context)=>Vegtablepage(

        ))
        );
      },
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
              width: 50,
              height: 50,


              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor
              ),
              child: icon
          ),
          Text(name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),)
        ],
      ),
    );
  }
}
