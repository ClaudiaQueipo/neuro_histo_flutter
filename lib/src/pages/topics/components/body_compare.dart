import 'dart:ui';

import 'package:components_app/src/controllers/question_compare.dart';
import 'package:components_app/src/controllers/question_complete.dart';
import 'package:components_app/src/pages/topics/components/question_card_compare.dart';
import 'package:get/get.dart';
import 'package:components_app/src/controllers/question_controller.dart';
import 'package:components_app/src/pages/topics/components/progress_bar.dart';
import 'package:components_app/src/pages/topics/components/questionC_card.dart';
import 'package:flutter/material.dart';

import '../../../models/question.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    QuestionCompareController _questionController =
        Get.put(QuestionCompareController());
    Map<String, TextEditingController> controllers = {};

    return Stack(children: [
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: ProgressBar(controller: _questionController, topic: 1,),
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
                itemBuilder: (context, index) => QuestionCompareCard(
                  question: _questionController.questions[index],
                ),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
