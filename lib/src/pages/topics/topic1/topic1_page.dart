import 'package:components_app/src/controllers/question_controller.dart';
import 'package:components_app/src/pages/topics/topic1/topic1_VF.dart';
import 'package:components_app/src/providers/topic1_provider.dart';
import 'package:components_app/src/widgets/homePWidg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/body.dart';

class Topic1Page extends StatelessWidget {
  const Topic1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          showCategory(
              "Verdadero o Falso",
              "Responde preguntas de verdadero o falso para probar tus conocimientos",
              context,
              "study/topic1/VF"),
          SizedBox(height: 15.0),
          showCategory(
              "Completa",
              "Completa los espacios en blanco en las preguntas dadas",
              context,
              "study/topic1/Complete"),
          SizedBox(height: 15.0),
          showCategory(
              "Identifica",
              "Identifica el contenido que se te muestra en la imagen",
              context,
              "study/topic1/VF"),
          SizedBox(height: 15.0),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 32, 37, 69),
    );
  }

  Widget showCategory(title, subtitle, context, route) {
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
                child: Text("Entrar", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pushNamed(context, route);
                },
              ),
              SizedBox(width: 15, height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
