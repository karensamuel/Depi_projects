import 'package:api_sess/first_page.dart';
import 'package:api_sess/services/services.dart';
import 'package:flutter/material.dart';

import 'model/usermodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool passwordVisible = true;
  List<UserModel> users = [];
  getUser() async{
    GetUserService().getService().then((value){
      setState(() {
        users = value??[];
        print("Fetched users: $value =======================================");
        print("users length = ${users.length}");
        print("users are $users");
      });
    });
  }
  @override
void initState(){
    getUser();
    super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: "Email",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,

          ),
          SizedBox(height: 20),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              hintText: "password",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye),
              border: OutlineInputBorder(),
            ),


          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){
            print("email is ${emailController.text}");
            print("password is ${passwordController.text}");
            for(int i = 0;i<users.length;i++){
              if(emailController.text == users[i].email && passwordController.text == users[i].username){
                print("user found");

                Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage(user: users[i])));
                break;
              }else{
                print("user not found");
              }
            }
          }, child: const Text("Login")),

        ],
      ) ,

    );
  }
}
