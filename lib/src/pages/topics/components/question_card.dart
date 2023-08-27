import 'package:components_app/src/controllers/question_controller.dart';
import 'package:components_app/src/pages/topics/components/option.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../models/question.dart';

class QuestionCard extends StatelessWidget {
  final int topic;
  const QuestionCard({super.key, required this.question, required this.topic});

  final Question question;

  @override
  Widget build(BuildContext context) {
  QuestionController _controller = Get.put(QuestionController(topic: topic));

  final deviceWidth = MediaQuery.of(context).size.width;
  final scaleFactor = deviceWidth < 600 ? 0.8 : 1.0; // Factor de escala

  return ListView.builder(
    itemCount: 1, // Solo habrá una pregunta en la lista
    itemBuilder: (BuildContext context, int index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: deviceWidth * 0.04),
        padding: EdgeInsets.all(deviceWidth * 0.05),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(deviceWidth * 0.1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              question.question,
              style: TextStyle(
                color: Colors.black,
                fontSize: deviceWidth * 0.04 * scaleFactor,
              ),
            ),
            putImage(question),
            SizedBox(height: deviceWidth * 0.01),
            ListView.builder(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: question.options.length,
              itemBuilder: (BuildContext context, int index) {
                return Option(
                  text: question.options[index],
                  index: index,
                  topic: topic,
                  press: () {
                    _controller.checkAns(question, index);
                  },
                );
              },
            ),
          ],
        ),
      );
    },
  );
}
}

Widget putImage(Question question) {
  if (question.image != null) {
    return Image(
      image: AssetImage(question.image!),
    );
  } else {
    return SizedBox.shrink(); // Esto hace que no se renderice nada
  }
}
