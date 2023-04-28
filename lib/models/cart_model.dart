import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JuiceJson extends ChangeNotifier{
  static List _list = [];

  static Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/juiceshop.json');
    final data = await json.decode(response);
    _list = data['juices'];
  }

  get list => _list;
}
