
import 'package:components_app/src/pages/topics/components/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/question_controller.dart';

class Topic2VF extends StatelessWidget {
  const Topic2VF({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController(topic: 2));
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 121, 76, 227).withOpacity(0.4),
        // backgroundColor: Color.fromARGB(255, 121, 76, 227).withOpacity(0.4),
        leading: ElevatedButton(
            onPressed: () {
              Get.delete<QuestionController>();
              Get.back();
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
      body: Body(topic: 2),
      backgroundColor: const Color.fromARGB(255, 32, 37, 69),
    );
  }
}
