
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }
}

void cargarData() {
  rootBundle.loadString("data/menu-opts.json").then((data) {
    
  });
}

final menuProvider = _MenuProvider();
