import 'package:flutter/material.dart';

import '../controllers/question_complete.dart';
import '../controllers/question_controller.dart';
import 'package:get/get.dart';

class ScoreScreen extends StatelessWidget {
  final qnController;
  final int topic;

  ScoreScreen({required this.qnController, required this.topic});

  @override
  Widget build(BuildContext context) {
    // QuestionController qnController = Get.put(QuestionController());
    if (qnController is QuestionController) {
      QuestionController qnController = Get.put(QuestionController(topic: topic));
      return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                Spacer(flex: 3),
                Text(
                  "Puntuación final",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: Color(0xFF8B94BC)),
                ),
                Spacer(),
                Text(
                  "${qnController.numOfCorrectAns * 10}/${100}",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Color(0xFF8B94BC)),
                ),
                Spacer(flex: 3),
              ],
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 32, 37, 69),
      );
    } else {
      QuestionCController qnController = Get.put(QuestionCController());
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 121, 76, 227).withOpacity(0.4),
          // backgroundColor: Color.fromARGB(255, 121, 76, 227).withOpacity(0.4),
          leading: ElevatedButton(
              onPressed: () {
                Get.delete<QuestionCController>();
                Get.back();
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 62, 46, 121)))),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                Spacer(flex: 3),
                Text(
                  "Puntuación final",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: Color(0xFF8B94BC)),
                ),
                Spacer(),
                Text(
                  "${qnController.numOfCorrectAns * 10}/${qnController.questions.length * 10}",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Color(0xFF8B94BC)),
                ),
                Spacer(flex: 3),
              ],
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 32, 37, 69),
      );
    }
  }
}
