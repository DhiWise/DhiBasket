import 'package:cloud_firestore/cloud_firestore.dart';

class Products {
  String? name;
  String? id;

  Products({this.name, this.id});

  Products.fromDocumentSnapshot({DocumentSnapshot? documentSnapshot}) {
    Map data = documentSnapshot!.data() as Map;
    name = data['name'] ?? '';
    id = documentSnapshot.id;
  }

  Products.fromQueryDocumentSnapshot(
      {QueryDocumentSnapshot? queryDocSnapshot}) {
    Map data = queryDocSnapshot!.data() as Map;
    name = data['name'] ?? '';
    id = queryDocSnapshot.id;
  }

  Products.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    id = json['id'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}
