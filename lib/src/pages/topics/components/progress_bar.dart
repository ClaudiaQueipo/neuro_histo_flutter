import 'package:components_app/src/controllers/question_compare.dart';
import 'package:components_app/src/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../controllers/question_complete.dart';

class ProgressBar extends StatelessWidget {
  final controller;
  final int topic;

  const ProgressBar({
    super.key,
    this.controller,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    if (controller is QuestionController) {
      return _buildQuestionProgressBar(context);
    } else if (controller is QuestionCController) {
      return _buildQuestionCProgressBar(context);
    } else if (controller is QuestionCompareController) {
      return _buildQuestionCompareProgressBar(context);
    } else {
      // Devolver un mensaje de error en caso de que el controlador sea nulo o no sea del tipo correcto
      return _buildQuestionProgressBar(context);
    }
  }

  Widget _buildQuestionProgressBar(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
          init: QuestionController(topic: topic),
          builder: (controller) {
            return _buildProgressBarContent(context, controller);
          }),
    );
  }

  Widget _buildQuestionCProgressBar(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionCController>(
          init: QuestionCController(),
          builder: (controller) {
            return _buildProgressBarContent(context, controller);
          }),
    );
  }

  Widget _buildQuestionCompareProgressBar(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionCompareController>(
          init: QuestionCompareController(),
          builder: (controller) {
            return _buildProgressBarContent(context, controller);
          }),
    );
  }

  Widget _buildProgressBarContent(BuildContext context, controller) {
    return Stack(
      children: [
        LayoutBuilder(
            builder: (context, constraints) => Container(
                  width: constraints.maxWidth * controller.animation.value,
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
  }
}
