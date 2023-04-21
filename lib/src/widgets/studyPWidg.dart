import 'package:flutter/material.dart';

myBody(context) {
  return ListView(
    padding: EdgeInsets.all(10.0),
    children: [
      _cardTipo1("Tema 1", "Desc del tema 1", context),
      SizedBox(height: 15.0),
      _cardTipo1("Tema 2", "Desc del tema 2", context),
      SizedBox(height: 15.0),
      _cardTipo1("Tema 3", "Desc del tema 3", context),
      SizedBox(height: 15.0),
    ],
  );
}

_cardTipo1(title, subtitle, BuildContext context) {
  return Card(
    elevation: 10.0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    color: Color.fromARGB(200, 56, 62, 110),
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.white),
          title: Text(title),
          textColor: Colors.white,
          subtitle: Text(subtitle),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              child:
                  Text("Estudiar ahora", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, "study/topic1");
              },
            ),
            SizedBox(width: 15),
            SizedBox(height: 50),
          ],
        ),
      ],
    ),
  );
}
