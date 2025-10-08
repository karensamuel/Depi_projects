import 'package:api_sess/model/usermodel.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  final UserModel user;
  const FirstPage({super.key, required  this.user});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  getPost
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Text("Name: ${widget.user.name}"),
          Text("Email: ${widget.user.email}"),
          Text("Username: ${widget.user.username}"),


        ]
      )
    );
  }
}
