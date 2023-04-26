import 'package:components_app/src/controllers/question_compare.dart';
import 'package:components_app/src/controllers/question_complete.dart';
import 'package:components_app/src/models/question_compare.dart';
import 'package:components_app/src/models/question_complete.dart';
import 'package:components_app/src/pages/topics/components/option.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../models/question.dart';

class QuestionCompareCard extends StatelessWidget {
  final QuestionCompare question;
  Map<String, TextEditingController> controllers = {};

  QuestionCompareCard({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    QuestionCompareController _controller =
        Get.put(QuestionCompareController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Text(
            question.question,
            style: TextStyle(color: Colors.black, fontSize: 13),
          ),
          SizedBox(height: 5.0),
          ...List.generate(
            question.fields.length,
            (index) => field(question.fields.elementAt(index), controllers),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                // for (var key in controllers.keys) {
                //   print('$key: ${controllers[key]?.text}');
                // }
                for (var key in controllers.keys) {
                  _controller.checkAns(question, controllers[key]);
                }
              },
              child: Text("EVALUAR"))
        ],
      ),
    );
  }
}

Widget field(String fieldName, Map<String, TextEditingController> controllers) {
  final controller = TextEditingController();
  controllers[fieldName] = controller; // Agrega el controlador al mapa
  return Column(
    children: [
      TextField(
        keyboardType: TextInputType.text,
        controller: controller,
        decoration: InputDecoration(
            hintText: fieldName,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
