import 'package:http/http.dart' as http;

import '../model/postmodel.dart';
import '../model/usermodel.dart';

class GetUserService{
  Future<List<UserModel>?> getService() async{

 var client = http.Client();
 var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
 var response = await client.get(url);
 if(response.statusCode == 200){
   var json = response.body;
 return userModelFromJson(json);
 }
 return null;

  }
  Future<List<PostModel>?> getPostService() async{
    var client = http.Client();
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(url);
    if(response.statusCode == 200) {
      var json = response.body;
      return postModelFromJson(json);
    }
    return null;


  }


}

