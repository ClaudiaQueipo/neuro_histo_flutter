import 'package:components_app/src/controllers/question_complete.dart';
import 'package:components_app/src/models/question.dart';
import 'package:components_app/src/pages/topics/components/body_complete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Topic4Comp extends StatelessWidget {
  const Topic4Comp({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionCController _controller = Get.put(QuestionCController(topic: 9));
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 121, 76, 227).withOpacity(0.4),
        // backgroundColor: Color.fromARGB(255, 121, 76, 227).withOpacity(0.4),
        leading: ElevatedButton(
            onPressed: () {
              Get.delete<QuestionCController>();
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
      body: const Body(
        topic: 9,
      ),
      backgroundColor: const Color.fromARGB(255, 32, 37, 69),
    );
  }
}
