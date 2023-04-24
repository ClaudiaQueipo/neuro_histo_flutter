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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Text(
            question.question,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          SizedBox(height: 10.0),
          ...List.generate(
              question.options.length,
              (index) => Option(
                  text: question.options[index],
                  index: index,
                  topic: topic,
                  press: () {
                    _controller.checkAns(question, index);
                  }))
        ],
      ),
    );
  }
}
