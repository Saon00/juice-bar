class JuiceJson {
  List<Juices>? juices;

  JuiceJson({this.juices});

  JuiceJson.fromJson(Map<String, dynamic> json) {
    if (json['juices'] != null) {
      juices = <Juices>[];
      json['juices'].forEach((v) {
        juices!.add(Juices.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (juices != null) {
      data['juices'] = juices!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Juices {
  String? imagePath;
  String? juiceName;
  String? juiceDescription;
  double? price;

  Juices({this.imagePath, this.juiceName, this.juiceDescription, this.price});

  Juices.fromJson(Map<String, dynamic> json) {
    imagePath = json['imagePath'];
    juiceName = json['juiceName'];
    juiceDescription = json['juiceDescription'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imagePath'] = imagePath;
    data['juiceName'] = juiceName;
    data['juiceDescription'] = juiceDescription;
    data['price'] = price;
    return data;
  }
}
