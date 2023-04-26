import 'package:components_app/src/controllers/question_controller.dart';
import 'package:components_app/src/pages/topics/topic1/topic1_VF.dart';
import 'package:components_app/src/providers/topic1_provider.dart';
import 'package:components_app/src/widgets/homePWidg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/body.dart';

class Topic2Page extends StatelessWidget {
  const Topic2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: [
                showCategory(
                  "Verdadero o Falso",
                  "Responde preguntas de verdadero o falso para probar tus conocimientos",
                  context,
                  "study/topic2/VF",
                ),
                SizedBox(height: 15.0),
                showCategory(
                  "Relacione",
                  "Questionario de preguntas",
                  context,
                  "study/topic2/Relacione",
                ),
                SizedBox(height: 15.0),
                showCategory(
                  "Indentifica",
                  "Identifica de acuerdo a una imagen los aspectos señalados",
                  context,
                  "study/topic2/Imagenes",
                ),
                SizedBox(height: 15.0),
                showCategory(
                  "Completa",
                  "Completa los espacios en blanco de acuerdo a una imagen los aspectos señalados",
                  context,
                  "study/topic2/Complete",
                ),
                SizedBox(height: 15.0),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: myBottomBar(context),
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
