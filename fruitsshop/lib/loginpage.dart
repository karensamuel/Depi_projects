import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
        
              children: [
                Image.asset("assets/images/women.png"),
                Align(
        
        
                    child: Text("welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
        
        
              ]
            ),
            const Text("welcome Back" ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
            const Text("Sign in to your account " ,style: TextStyle(fontSize: 15,) ),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),
                prefixIcon: Icon(Icons.email,color: Colors.grey,size: 35,),
        
              ),
        
        
            ),
            TextField(
              obscureText: !isvisible,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),
                prefixIcon: Icon(Icons.lock,color: Colors.grey,size: 35,),
                suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    isvisible = !isvisible;
                  });
                },
                icon:Icon(isvisible?Icons.visibility:Icons.visibility_off,color: Colors.grey,size: 35,)),
        
        
        
              ),
        
        
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){

              }, child: Text("login"),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, // text color
                  backgroundColor: Colors.green, // button background color
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // rounded corners
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
