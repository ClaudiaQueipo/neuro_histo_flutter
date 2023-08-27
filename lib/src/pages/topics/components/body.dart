import 'package:get/get.dart';
import 'package:components_app/src/pages/topics/components/progress_bar.dart';
import 'package:components_app/src/pages/topics/components/question_card.dart';
import 'package:flutter/material.dart';
import 'package:components_app/src/models/question.dart';

import '../../../controllers/question_controller.dart';

class Body extends StatelessWidget {
  final int topic;
  Body({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController =
        Get.put(QuestionController(topic: topic));
    return Stack(children: [
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: ProgressBar(topic: topic),
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
                physics: NeverScrollableScrollPhysics(),
                controller: _questionController.pageController,
                onPageChanged: _questionController.updateTheQnNum,
                itemCount: _questionController.questions.length,
                itemBuilder: (context, index) => QuestionCard(
                  question: _questionController.questions[index],
                  topic: topic,
                ),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
