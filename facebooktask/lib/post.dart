import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipOval(

                child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
                  width: 55,
                  height: 55,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Karen Samuel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                  Row(
                    children: [
                      Text(" 4h . "),
                      Icon(Icons.supervisor_account_rounded)
                    ],
                  )
                ],
              ),
              SizedBox(width: 120,),
              Icon(Icons.close,size: 50,color: Colors.grey,)
            ],
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.network(
              'https://img.freepik.com/free-photo/beautiful-scenery-emerald-lake-yoho-national-park-british-columbia-canada_181624-6877.jpg',

              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 10,),
          Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                    height: 20,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top:-5,
                            right:-20,child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.redAccent,
                                border: Border.all(color: Colors.redAccent,width: 3)
                            ),
                            child: Icon(Icons.favorite,color: Colors.white,size: 20,))),

                        Positioned(
                          top: -5,
                            right: 0,
                            child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                    border: Border.all(color: Colors.blue,width: 3)
                                ),child: Icon(Icons.thumb_up_alt,color: Colors.white,size: 20,))),

                      ]
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("181",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),

                ],
              ),
              SizedBox(width: 100,),

              Text("58 Comments 27 shares")
            ],
          ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up_alt_outlined,color: Colors.grey,)),
                    Text("Like",style: TextStyle(color: Colors.grey),),
                  ],
                ),

                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline,color: Colors.grey,)),
                    Text("Comment",style: TextStyle(color: Colors.grey),),
                  ],
                ),

                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.grey,)),
                    Text("Share",style: TextStyle(color: Colors.grey),),
                  ],
                ),

              ]
            )

        ],
      ),
    );
  }
}
