// To parse this JSON data, do
//
//     final itemModel = itemModelFromJson(jsonString);

import 'dart:convert';

ItemModel itemModelFromJson(String str) => ItemModel.fromJson(json.decode(str));

String itemModelToJson(ItemModel data) => json.encode(data.toJson());

class ItemModel {
  ItemModel({
    required this.juices,
  });

  List<Juice> juices;

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
        juices: List<Juice>.from(json["juices"].map((x) => Juice.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "juices": List<dynamic>.from(juices.map((x) => x.toJson())),
      };
}

class Juice {
  Juice({
    required this.imagePath,
    required this.juiceName,
    required this.juiceDescription,
    required this.price,
  });

  String imagePath;
  String juiceName;
  String juiceDescription;
  double price;

  factory Juice.fromJson(Map<String, dynamic> json) => Juice(
        imagePath: json["imagePath"],
        juiceName: json["juiceName"],
        juiceDescription: json["juiceDescription"],
        price: json["price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "imagePath": imagePath,
        "juiceName": juiceName,
        "juiceDescription": juiceDescription,
        "price": price,
      };
}
