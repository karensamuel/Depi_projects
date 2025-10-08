import 'package:flutter/material.dart';

class Todoanimation extends StatelessWidget {
  const Todoanimation({super.key});
  void showDialog(  BuildContext context,{int ?index,String ?oldTitle}){
    final controller = TextEditingController(
      text:oldTitle??""
    );
    showDialog(
        context: context,
        builder: (_){
          return AlertDialog(
            title: Text(index!=null?"Add Todo":"edit Todo"),
            content: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Enter Todo",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),


            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Cancel"),),
              ElevatedButton(onPressed: (){
                final title = controller.text;
                if(index!=null){
                 //context.read<TodoBloc>().add(EditTodo(index, title));
                }else{
                 //context.read<TodoBloc>().add(AddTodo(title));
                }
              }, child: Text("Save"))
            ],

          );
        });


  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

    );
  }
}
