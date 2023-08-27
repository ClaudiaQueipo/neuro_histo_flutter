import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _Topic1Provider {
  List<dynamic> tema1 = [];

  _Topic1Provider() {
    cargarData();
  }

  Future<List> cargarData() async {
    final resp = await rootBundle.loadString("data/tema1.json");

    Map dataMap = json.decode(resp);
    tema1 = dataMap["6"];

    return tema1;
  }
}

final topic1Provider = _Topic1Provider();
