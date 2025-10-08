import 'dart:convert';


List<UserModel> userModelFromJson(String str)=>List<UserModel>.from(json.decode(str).map((x)=>UserModel.fromJson(x)));
String userModelToJson(List<UserModel> data)=>json.encode(List<dynamic>.from(data.map((x)=>x.toJson())));

class UserModel{
  int id;
  String name;
  String email;
  String username;
  String phone;
  String website;
  Address address;
  Company company;
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.username,

    required this.phone,
    required this.website,
    required this.address,
    required this.company,
  });
  factory UserModel.fromJson(Map<String,dynamic> json){
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      username: json['username'],

      phone: json['phone'],
      website: json['website'],
      address: Address.fromJson(json['address']),
      company: Company.fromJson(json['company']),

    );

  }
  Map<String,dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['username'] = username;

    data['phone'] = phone;
    data['website'] = website;
    data['address'] = address.toJson();
    data['company'] = company.toJson();
        return data;

  }
}
class Address{
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory Address.fromJson(Map<String,dynamic> json){
    return Address(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
      geo: Geo.fromJson(json['geo']),
    );
  }
  Map<String,dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['suite'] = this.suite;
    data['city'] = this.city;
    data['zipcode'] = this.zipcode;
    if (this.geo != null) {
      data['geo'] = this.geo.toJson();
    }
    return data;
  }

}
class Geo {
  String lat;
  String lng;

  Geo({
    required this.lat,
    required this.lng,
  });
  factory Geo.fromJson(Map<String,dynamic> json){
    return Geo(
      lat: json['lat'],
      lng: json['lng']);
  }
  Map<String,dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }

}

class Company{
  String name;
  String catchPhrase;
  String bs;
  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });
  factory Company.fromJson(Map<String,dynamic> json){
    return Company(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs']);
  }
  Map<String,dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['catchPhrase'] = this.catchPhrase;
    data['bs'] = this.bs;
    return data;

  }
}