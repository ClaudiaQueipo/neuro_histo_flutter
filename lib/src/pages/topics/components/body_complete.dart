import 'dart:ui';

import 'package:components_app/src/controllers/question_complete.dart';
import 'package:get/get.dart';
import 'package:components_app/src/pages/topics/components/progress_bar.dart';
import 'package:components_app/src/pages/topics/components/questionc_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final int topic;
  const Body({Key? key, required this.topic});

  @override
  Widget build(BuildContext context) {
    QuestionCController _questionController =
        Get.put(QuestionCController(topic: topic));
    Map<String, TextEditingController> controllers = {};

    TextEditingController textController =
        TextEditingController(); // Add this line

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: ProgressBar(
              controller: _questionController,
              topic: 1,
            ),
          ),
          SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Obx(
                () => Text.rich(
                  TextSpan(
                    text:
                        "Pregunta ${_questionController.questionNumber.value}",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                    children: [
                      TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: TextStyle(fontSize: 22))
                    ],
                  ),
                ),
              )),
          Divider(
            thickness: 0.5,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Expanded(
            child: PageView.builder(
              // Block swipe to next qn
              physics: const NeverScrollableScrollPhysics(),
              controller: _questionController.pageController,
              onPageChanged: _questionController.updateTheQnNum,
              itemCount: _questionController.questions.length,
              itemBuilder: (context, index) => SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.5, // ajuste de tamaño
                width:
                    MediaQuery.of(context).size.width * 0.7, // ajuste de tamaño
                child: QuestionCompleteCard(
                  question: _questionController.questions[index],
                  topic: topic,
                ),
              ),
            ),
          ),
          TextField(
            controller: textController, // Add this line
          ),
        ],
      ),
    );
  }
}
