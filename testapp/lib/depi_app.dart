import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DepiApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        appBar: AppBar(
          backgroundColor: Colors.transparent ,

          title: Text("karen samuel",style:TextStyle(color: Colors.green,fontWeight: FontWeight.bold) ,),

          actions: [
            Icon(Icons.camera_alt_outlined,size: 30,),
            SizedBox(width:20),
            Icon(Icons.more_vert_rounded,size:30)
               ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,

                ),
                child: Row(
                  children: [
                    Icon(Icons.search,color: Colors.grey,),
                    Text("search data",style: TextStyle(color: Colors.grey,fontSize: 25),)
                  ],

                ),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(

                      shape: BoxShape.rectangle,

                      border: Border.all(

                        color: Colors.grey, // Border color
                        width: 2, // Border width
                      ),
                      borderRadius: BorderRadius.circular(50),

                    ),
                    child: Text("Groups",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(width:10),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(

                        shape: BoxShape.rectangle,

                        border: Border.all(

                          color: Colors.grey, // Border color
                          width: 2, // Border width
                        ),
                        borderRadius: BorderRadius.circular(50),

                      ),
                      child: Text("Groups",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width:10),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(

                        shape: BoxShape.rectangle,

                        border: Border.all(

                          color: Colors.grey, // Border color
                          width: 2, // Border width
                        ),
                        borderRadius: BorderRadius.circular(50),

                      ),
                      child: Text("Groups",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width:10),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(

                        shape: BoxShape.rectangle,

                        border: Border.all(

                          color: Colors.grey, // Border color
                          width: 2, // Border width
                        ),
                        borderRadius: BorderRadius.circular(50),

                      ),
                      child: Text("Groups",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width:10),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(

                        shape: BoxShape.rectangle,

                        border: Border.all(

                          color: Colors.grey, // Border color
                          width: 2, // Border width
                        ),
                        borderRadius: BorderRadius.circular(50),

                      ),
                      child: Text("Groups",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                    ),

                ],),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(

                        children: [
                          CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/images/japan.jpg"),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Karen Samuel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Text("hello",style: TextStyle(fontSize: 15,color: Colors.grey))

                            ],),
                          ),
                          SizedBox(width: 10,),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("11:00 am",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold)),

                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Text("1",style: TextStyle(
                                  color: Colors.white
                                ),),
                              )

                            ],
                          )
                        ],
                      ),
                      SizedBox(height:15,),
                      Row(

                        children: [
                          CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/images/japan.jpg"),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Karen Samuel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("hello",style: TextStyle(fontSize: 15,color: Colors.grey))

                              ],),
                          ),
                          SizedBox(width: 10,),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("11:00 am",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold)),

                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Text("1",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          )
                        ],
                      ),
                      SizedBox(height:15,),
                      Row(

                        children: [
                          CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/images/japan.jpg"),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Karen Samuel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("hello",style: TextStyle(fontSize: 15,color: Colors.grey))

                              ],),
                          ),
                          SizedBox(width: 10,),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("11:00 am",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold)),

                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Text("1",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          )
                        ],
                      ),
                      SizedBox(height:15,),
                      Row(

                        children: [
                          CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/images/japan.jpg"),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Karen Samuel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("hello",style: TextStyle(fontSize: 15,color: Colors.grey))

                              ],),
                          ),
                          SizedBox(width: 10,),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("11:00 am",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold)),

                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Text("1",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          )
                        ],
                      ),
                      SizedBox(height:15,),
                      Row(

                        children: [
                          CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/images/japan.jpg"),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Karen Samuel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("hello",style: TextStyle(fontSize: 15,color: Colors.grey))

                              ],),
                          ),
                          SizedBox(width: 10,),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("11:00 am",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold)),

                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Text("1",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          )
                        ],
                      ),
                      SizedBox(height:15,),
                      Row(

                        children: [
                          CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/images/japan.jpg"),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Karen Samuel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("hello",style: TextStyle(fontSize: 15,color: Colors.grey))

                              ],),
                          ),
                          SizedBox(width: 10,),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("11:00 am",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold)),

                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Text("1",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          )
                        ],
                      ),
                      SizedBox(height:15,),
                      Row(

                        children: [
                          CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/images/japan.jpg"),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Karen Samuel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("hello",style: TextStyle(fontSize: 15,color: Colors.grey))

                              ],),
                          ),
                          SizedBox(width: 10,),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("11:00 am",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold)),

                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Text("1",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          )
                        ],
                      ),
                      SizedBox(height:15,),
                      Row(

                        children: [
                          CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/images/japan.jpg"),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Karen Samuel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("hello",style: TextStyle(fontSize: 15,color: Colors.grey))

                              ],),
                          ),
                          SizedBox(width: 10,),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("11:00 am",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold)),

                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Text("1",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          )
                        ],
                      ),
                      SizedBox(height:15,),
                      Row(

                        children: [
                          CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/images/japan.jpg"),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Karen Samuel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("hello",style: TextStyle(fontSize: 15,color: Colors.grey))

                              ],),
                          ),
                          SizedBox(width: 10,),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("11:00 am",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold)),

                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Text("1",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          )
                        ],
                      ),
                      SizedBox(height:15,),
                      Row(

                        children: [
                          CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/images/japan.jpg"),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Karen Samuel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text("hello",style: TextStyle(fontSize: 15,color: Colors.grey))

                              ],),
                          ),
                          SizedBox(width: 10,),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("11:00 am",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold)),

                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Text("1",style: TextStyle(
                                    color: Colors.white
                                ),),
                              )

                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

}
