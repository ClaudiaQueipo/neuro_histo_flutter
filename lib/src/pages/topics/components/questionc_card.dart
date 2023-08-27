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

    Map<String, TextEditingController> controllers = {};

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double parentWidth = constraints.maxWidth;

        return Container(
          padding: EdgeInsets.all(parentWidth * 0.05),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(parentWidth * 0.06),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.question.question,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: parentWidth > 600
                      ? parentWidth * 0.04
                      : parentWidth * 0.03,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: parentWidth * 0.01),
              putImage(widget.question),
              SizedBox(height: parentWidth * 0.01),
              ...List.generate(
                widget.question.fields.length,
                (index) => field(
                  widget.question.fields.elementAt(index),
                  controllers,
                ),
              ),
              SizedBox(height: parentWidth * 0.01),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    bool respuesta = false;
                    for (var key in controllers.keys) {
                      respuesta = _controller.checkAns(
                          widget.question, controllers[key]);
                      if (!respuesta) break;
                    }
                    setState(() {
                      evaluationResult = respuesta ? 'Correcta' : 'Incorrecta';
                    });
                  },
                  child: Text(
                    'EVALUAR',
                    style: TextStyle(
                      fontSize: parentWidth > 600
                          ? parentWidth * 0.04
                          : parentWidth * 0.03,
                    ),
                  ),
                ),
              ),
              SizedBox(height: parentWidth * 0.06),
              Text(
                evaluationResult,
                style: TextStyle(
                  color: evaluationResult == 'Correcta'
                      ? Colors.green
                      : Colors.red,
                  fontSize: parentWidth > 600
                      ? parentWidth * 0.06
                      : parentWidth * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

Widget field(String fieldName, Map<String, TextEditingController> controllers) {
  final controller = TextEditingController();
  controllers[fieldName] = controller; // Agrega el controlador al mapa
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      final double parentWidth = constraints.maxWidth;

      return Column(
        children: [
          SizedBox(
            height: parentWidth * 0.03,
          ),
          Container(
            width: parentWidth,
            child: TextField(
              keyboardType: TextInputType.text,
              controller: controller,
              decoration: InputDecoration(
                  hintText: fieldName,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              style: TextStyle(
                  fontSize: parentWidth > 600
                      ? parentWidth * 0.04
                      : parentWidth * 0.03),
              // Establece la altura del TextField en porcentaje
            ),
          ),
        ],
      );
    },
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
