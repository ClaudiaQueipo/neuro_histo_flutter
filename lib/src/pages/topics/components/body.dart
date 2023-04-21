import 'dart:ui';

import 'package:get/get.dart';
import 'package:components_app/src/controllers/question_controller.dart';
import 'package:components_app/src/pages/topics/components/progress_bar.dart';
import 'package:components_app/src/pages/topics/components/question_card.dart';
import 'package:flutter/material.dart';

import '../../../models/question.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());

    return Stack(children: [
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: ProgressBar(),
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
                        TextSpan(text: "/4", style: TextStyle(fontSize: 22))
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
              child: FutureBuilder<List<Question>>(
                future: _questionController.questions,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return Center(child: Text('Error: \${snapshot.error}'));
                    } else {
                      return PageView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        controller: _questionController.pageController,
                        onPageChanged: _questionController.updateTheQnNum,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) => QuestionCard(
                          question: snapshot.data![index],
                        ),
                      );
                    }
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            )
          ],
        ),
      )
    ]);
  }
}
