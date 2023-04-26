import 'package:components_app/src/controllers/question_complete.dart';
import 'package:components_app/src/models/question_complete.dart';
import 'package:components_app/src/pages/topics/components/option.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'question_card.dart';

import '../../../models/question.dart';

class QuestionCompleteCard extends StatefulWidget {
  final QuestionComplete question;
  final int topic;

  QuestionCompleteCard(
      {super.key, required this.question, required this.topic});

  @override
  _QuestionCompleteCardState createState() => _QuestionCompleteCardState();
}

class _QuestionCompleteCardState extends State<QuestionCompleteCard> {
  Map<String, TextEditingController> controllers = {};

  late String evaluationResult;

  @override
  void initState() {
    super.initState();
    evaluationResult = '';
  }

  @override
  Widget build(BuildContext context) {
    QuestionCController _controller =
        Get.put(QuestionCController(topic: widget.topic));
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Text(
            widget.question.question,
            style: TextStyle(color: Colors.black, fontSize: 13),
          ),
          putImage(widget.question),
          SizedBox(height: 10.0),
          ...List.generate(
            widget.question.fields.length,
            (index) =>
                field(widget.question.fields.elementAt(index), controllers),
          ),
          SizedBox(
            height: 5.0,
          ),
          ElevatedButton(
            onPressed: () {
              bool respuesta = false;
              for (var key in controllers.keys) {
                respuesta =
                    _controller.checkAns(widget.question, controllers[key]);
                if (!respuesta) break;
              }
              setState(() {
                evaluationResult = respuesta ? 'Correcta' : 'Incorrecta';
              });
            },
            child: Text('EVALUAR'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            evaluationResult,
            style: TextStyle(
              color: evaluationResult == 'Correcta' ? Colors.green : Colors.red,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
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

Widget putImage(QuestionComplete question) {
  if (question.image != null) {
    return Image(
      image: AssetImage(question.image!),
    );
  } else {
    return SizedBox.shrink(); // Esto hace que no se renderice nada
  }
}
