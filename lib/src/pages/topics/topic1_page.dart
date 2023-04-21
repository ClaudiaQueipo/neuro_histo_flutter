import 'package:components_app/src/controllers/question_controller.dart';
import 'package:components_app/src/providers/topic1_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';

class Topic1Page extends StatelessWidget {
  const Topic1Page({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // backgroundColor: Color.fromARGB(255, 121, 76, 227).withOpacity(0.4),
        actions: [
          TextButton(
              onPressed: () {
                _controller.nextQuestion();
              },
              child: Text(
                "Saltar",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Body(),
      backgroundColor: const Color.fromARGB(255, 32, 37, 69),
    );
  }
}


// List<Widget> _listaItems(data, BuildContext context) {
//   final List<Widget> preguntas = [];

//   data.forEach((element) {
//      final widTemp = AlertDialog(
//        title: Text("Pregunta"),
//        content: Text(element["preg"]),
//        actions: [
//           ElevatedButton(
//              child: Text("Verdadero"),
//              onPressed: evaluate("V", element["res"])),
//          ElevatedButton(
//            child: Text("Falso"),
//            onPressed: evaluate("F", element["res"]),
//          ),
//        ],
//     );
//      preguntas
//        ..add(widTemp)
//        ..add(Divider());
//   });
//   return preguntas;

// }

// Widget _lista() {
//   return FutureBuilder(
//     future: topic1Provider.cargarData(),
//     initialData: [],
//     builder: (context, snapshot) {
//       return ListView(
//         children: _listaItems(snapshot.data, context)

//       );
//     },
//   );
// }
// List<Widget> _listaItems(data, BuildContext context) {
//   final List<Widget> preguntas = [];
