import 'package:flutter/material.dart';

import '../controllers/question_controller.dart';
import 'package:get/get.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: Color(0xFF8B94BC)),
              ),
              Spacer(),
              Text(
                "${qnController.numOfCorrectAns * 10}/${4 * 10}",
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
