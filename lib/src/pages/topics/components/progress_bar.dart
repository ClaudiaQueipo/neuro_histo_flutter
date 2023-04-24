import 'package:components_app/src/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            return Stack(
              children: [
                LayoutBuilder(
                    builder: (context, constraints) => Container(
                          width:
                              constraints.maxWidth * controller.animation.value,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF6744C4),
                                  Color(0xFFB135BE),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(50)),
                        )),
                Positioned.fill(
                    child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${(controller.animation.value * 30).round()} seg",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.timer_sharp,
                        color: Colors.white,
                      )
                    ],
                  ),
                ))
              ],
            );
          }),
    );
  }
}
