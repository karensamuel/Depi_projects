import 'package:facebooktask/peopleyoumayknow.dart';
import 'package:facebooktask/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Facbookpage extends StatefulWidget {
  const Facbookpage({super.key});

  @override
  State<Facbookpage> createState() => _FacbookpageState();
}

class _FacbookpageState extends State<Facbookpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
            appBar: AppBar(
        title: Text("Facebook",style: TextStyle(color: Colors.blue ,fontSize: 35,fontWeight: FontWeight.bold  ),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.message)),
          IconButton(
            onPressed: () {},
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(Icons.notifications),

                // Notification badge
                Positioned(
                  right: -6,
                  top: -10,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(
                      minWidth: 20,
                      minHeight: 20,
                    ),
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
            ),
          body: Column(
            children: [
              TabBar(
              labelColor: Colors.blue,              // Color of selected tab text/icon
              unselectedLabelColor: Colors.grey,    // Color of unselected tab text/icon
              indicatorColor: Colors.blue,tabs: [
                IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                IconButton(onPressed: (){}, icon: Icon(Icons.ondemand_video)),
                IconButton(onPressed: (){}, icon: Icon(Icons.people_outline_rounded)),
                IconButton(onPressed: (){}, icon: Icon(Icons.shop)),
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)),
                IconButton(onPressed: (){}, icon: ClipOval(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
                    width: 30,
                    height: 30,
                    fit: BoxFit.fill,
                  ),
                ),),
              ]),
              SizedBox(height: 10,),


              Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                          children: [
                            IconButton(onPressed: (){}, icon: ClipOval(
                              child: Image.network(
                                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
                                width:35,
                                height: 35,
                                fit: BoxFit.fill,
                              ),)),
                            Container(
                              width: 330,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400,width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text("  What's on your mind?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                            Spacer(),
                            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.green,size: 30,)),

                          ]
                      ),
                      SizedBox(
                                  height: 200, // Set the desired height
                                  child: ListView.builder(
                      scrollDirection: Axis.horizontal, // Horizontal scrolling
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://img.freepik.com/free-photo/beautiful-scenery-emerald-lake-yoho-national-park-british-columbia-canada_181624-6877.jpg',
                              width: 100,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                                  ),
                                ),
                      Divider(color: Colors.grey.shade400,thickness: 6,),
                      Post(),
                      Divider(color: Colors.grey.shade400,thickness: 6,),
                      Peopleyoumayknow(),
                      Divider(color: Colors.grey.shade400,thickness: 6,),
                      Post(),
                      Divider(color: Colors.grey.shade400,thickness: 6,),
                    ],
                  ),
                ),
              ),


            ]
          )
          
        
            ),
      )
    ) ;
  }
}
