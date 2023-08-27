import 'package:components_app/src/controllers/question_controller.dart';
import 'package:components_app/src/models/question.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Option extends StatelessWidget {
  final int topic;
  const Option({
    super.key,
    required this.text,
    required this.index,
    required this.press,
    required this.topic,
  });
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(topic: topic),
      builder: (qnController) {
        Color getTheRightColor() {
          if (qnController.isAnswered) {
            if (index == qnController.correctAns) {
              return Color(0xFF6AC259);
            } else if (index == qnController.selectedAns &&
                qnController.selectedAns != qnController.correctAns) {
              return Color(0xFFE92E30);
            }
          }
          return Color(0xFFC1C1C1);
        }

        IconData getTheRightIcon() {
          return getTheRightColor() == Color(0xFFE92E30)
              ? Icons.close
              : Icons.done;
        }

        final deviceWidth = MediaQuery.of(context).size.width;

        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: deviceWidth * 0.04),
            padding: EdgeInsets.all(deviceWidth * 0.05),
            decoration: BoxDecoration(
                border: Border.all(
                  color: getTheRightColor(),
                ),
                borderRadius: BorderRadius.circular(deviceWidth * 0.07)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    // Agregamos un Expanded para expandir el espacio disponible
                    child: Text(
                      "${index + 1} $text",
                      style: TextStyle(
                          color: Color.fromARGB(255, 180, 180, 180),
                          fontSize: deviceWidth * 0.04),
                    ),
                  ),
                  Container(
                    height: deviceWidth * 0.1,
                    width: deviceWidth * 0.1,
                    decoration: BoxDecoration(
                        color: getTheRightColor() == Color(0xFFC1C1C1)
                            ? Colors.transparent
                            : getTheRightColor(),
                        borderRadius: BorderRadius.circular(deviceWidth * 0.2),
                        border: Border.all(color: getTheRightColor())),
                    child: getTheRightColor() == Color(0xFFC1C1C1)
                        ? null
                        : Icon(getTheRightIcon(), size: deviceWidth * 0.04),
                  ),
                ]),
          ),
        );
      },
    );
  }
}
