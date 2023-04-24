import 'package:components_app/src/controllers/question_complete.dart';
import 'package:components_app/src/models/question_complete.dart';
import 'package:components_app/src/pages/topics/components/option.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../models/question.dart';

class QuestionCompleteCard extends StatelessWidget {
  const QuestionCompleteCard({super.key, required this.question});

  final QuestionComplete question;

  @override
  Widget build(BuildContext context) {
    QuestionCController _controller = Get.put(QuestionCController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Text(
            question.question,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          SizedBox(height: 40.0),
          ...List.generate(question.fields.length,
              (index) => field(question.fields.elementAt(index))),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: () {}, child: Text("EVALUAR"))
        ],
      ),
    );
  }
}

Widget field(fieldname) {
  return Column(
    children: [
      TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: fieldname,
            fillColor: Colors.purple,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(24))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
