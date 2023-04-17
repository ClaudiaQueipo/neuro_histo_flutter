import 'package:components_app/src/providers/topic1_provider.dart';
import 'package:flutter/material.dart';

class Topic1Page extends StatelessWidget {
  const Topic1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tema 1"),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  return FutureBuilder(
    future: topic1Provider.cargarData(),
    initialData: [],
    builder: (context, snapshot) {
      return ListView(
        children: _listaItems(snapshot.data, context),
      );
    },
  );
}

List<Widget> _listaItems(data, BuildContext context) {
  final List<Widget> preguntas = [];

  data.forEach((element) {
    final widTemp = ListTile(
      title: Text(element["preg"] + element["res"]),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.blue,
      ),
    );
    preguntas
      ..add(widTemp)
      ..add(Divider());
  });
  return preguntas;
}
