import 'package:flutter/material.dart';

myBody(context) {
  return ListView(
    padding: EdgeInsets.all(10.0),
    children: [
      _cardTipo1("\nTema 1", "\nTejido Nervioso", context, "study/topic1"),
      SizedBox(height: 15.0),
      _cardTipo1(
          "\nTema 2",
          "\nSistema Nervioso Central:Cerebro, Cerebelo, Meninges y Barrera hematoencefàlica",
          context,
          "study/topic2"),
      SizedBox(height: 15.0),
      _cardTipo1(
          "\nTema 3", "\nSistema Nervioso Periférico", context, "study/topic3"),
      SizedBox(height: 15.0),
      _cardTipo1(
          "\nTema 4", "\nReceptores Especiales", context, "study/topic4"),
      SizedBox(height: 15.0),
    ],
  );
}

_cardTipo1(title, subtitle, BuildContext context, route) {
  return Card(
    elevation: 10.0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    color: Color.fromARGB(200, 56, 62, 110),
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.white),
          title: Text(title, textAlign: TextAlign.justify),
          textColor: Colors.white,
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          subtitle: Text(subtitle),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(width: 15),
            SizedBox(height: 45),
          ],
        ),
      ],
    ),
  );
}
