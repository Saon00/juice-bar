import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CartModel with ChangeNotifier {
  static List _list = [].obs;

  static Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/juiceshop.json');
    final data = await json.decode(response);
    _list = data['juices'];
  }

  get list => _list;
}
