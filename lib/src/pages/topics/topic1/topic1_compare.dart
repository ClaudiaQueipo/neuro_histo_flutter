import 'package:components_app/src/controllers/question_compare.dart';
import 'package:flutter/material.dart';

import 'package:components_app/src/controllers/question_complete.dart';
import 'package:components_app/src/pages/topics/components/body_compare.dart';

import 'package:get/get.dart';

class Topic1Compare extends StatelessWidget {
  const Topic1Compare({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionCompareController _controller =
        Get.put(QuestionCompareController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 121, 76, 227).withOpacity(0.4),
        // backgroundColor: Color.fromARGB(255, 121, 76, 227).withOpacity(0.4),
        leading: ElevatedButton(
            onPressed: () {
              Get.delete<QuestionCompareController>();
              Get.back(canPop: true);
            },
            child: Icon(Icons.arrow_back_ios),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 62, 46, 121)))),
        actions: [
          TextButton(
              onPressed: () {
                _controller.nextQuestion();
              },
              child: Text(
                "Saltar",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: const Body(),
      backgroundColor: const Color.fromARGB(255, 32, 37, 69),
    );
  }
}
