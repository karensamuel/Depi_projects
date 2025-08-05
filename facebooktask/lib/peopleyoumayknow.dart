import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Peopleyoumayknow extends StatefulWidget {
  const Peopleyoumayknow({super.key});

  @override
  State<Peopleyoumayknow> createState() => _PeopleyoumayknowState();
}

class _PeopleyoumayknowState extends State<Peopleyoumayknow> {
  List<String> images = [
    "https://alexgear.com/cdn/shop/files/Jennifer-Aniston-Brown-Leather-Coat-Friends-S05.jpg?v=1705260612",
    "https://i0.wp.com/www.ourmovielife.com/wp-content/uploads/2020/03/unagi.jpg?resize=800%2C500&ssl=1",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNBWGyPazr1actR4IN-OWQ5vlKEaKCznsWKw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYOVi9XsynTz-9vX2sCofDRrjFzJq6RaLNxQ&s",
    "https://miro.medium.com/v2/resize:fit:4800/format:webp/1*rBbbt8YPDIRr_gnu0dPfGw.jpeg",
    "https://openpsychometrics.org/tests/characters/test-resources/pics/F/3.jpg",

     ];


  List<String> names = ["Rachel Green","Ross Geller","Monica Geller","Joey Tribbiani","Chandler Bing","Phoebe Buffay"];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(children: [
          Icon(Icons.people_outline_sharp),
          SizedBox(width: 10,),
          Text("People you may know",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Spacer(),
          Icon(Icons.more_horiz_outlined,size: 50,color: Colors.grey,),
        ],),
        SizedBox(height:320,child:
        ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: names.length,
           separatorBuilder: (context, index) => SizedBox(width: 10,),
            itemBuilder: (context, index) => Container(
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 1,),
                borderRadius: BorderRadius.circular(15),

              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image.network(
                        images[index],
                        width: double.infinity,
                        height: 200,

                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("   ${names[index]}",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(

                      children: [
                        ClipOval(child: Image.network(
                          images[index],
                          width: 15,
                          height: 15,
                          fit: BoxFit.fill,
                        ),),

                        Text(" 1 mutual friend",style: TextStyle(fontSize: 10,color: Colors.grey),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(

                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue,width: 2)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_add_alt_1_sharp,color: Colors.white,size: 10,),
                            Text(" Add friend",style: TextStyle(color: Colors.white,fontSize: 10 ,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(

                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300,width: 2)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(" Remove",style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ],
                  ),



                ],
              ),
            ),)),

        Text("see all >",style: TextStyle(fontSize: 25,color: Colors.grey),)

      ]
    );
  }
}
