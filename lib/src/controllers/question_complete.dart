import 'package:components_app/src/models/question.dart';
import 'package:components_app/src/models/question_compare.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../models/question_complete.dart';
import '../pages/score_screen.dart';

class QuestionCController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;

  final int topic;

  late final List<QuestionComplete> _questions;

  QuestionCController({required this.topic}) {
    _questions = setList(topic);
  }
  List<QuestionComplete> get questions => _questions;

  // final Future<List<Question>> _questions = cargarData();

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  late List<String> _correctAns;
  List<String> get correctAns => _correctAns;

  late String _selectedAns;

  // for more about obs please check documentation
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(nextQuestion);

    _pageController = PageController();
    super.onInit();
  }

  List<QuestionComplete> setList(int topic) {
    print("Tema question_controller: $topic");
    return (topic == 5)
        ? sample_data
            .map((question) => QuestionComplete(
                  id: question['id'],
                  image: question['image'],
                  question: question['question'],
                  answer: question['answer'],
                  fields: question["fields"],
                ))
            .toList()
        : (topic == 6)
            ? topic2Complete
                .map((question) => QuestionComplete(
                      id: question['id'],
                      image: question['image'],
                      question: question['question'],
                      answer: question['answer'],
                      fields: question["fields"],
                    ))
                .toList()
            : [];
  }

  void checkAns(QuestionComplete question, controller) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = controller.text;

    for (var a in _correctAns) {
      if (a == _selectedAns) {
        print("Correcta: $a\nRespuesta del usuario: + $_selectedAns");
        _numOfCorrectAns++;
        break;
      }
    }

    print("numero aciertos: $_numOfCorrectAns");
    // It will stop the counter
    _animationController.stop();
    update();

    // Once user select an ans after 3s it will go to the next qn
    Future.delayed(const Duration(seconds: 2), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      // Then start it again
      // Once timer is finish go to the next qn
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      // Get package provide us simple way to naviigate another page
      Get.to(() => ScoreScreen(
            qnController: QuestionCController(topic: topic),
            topic: 0,
          ));
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }
}
