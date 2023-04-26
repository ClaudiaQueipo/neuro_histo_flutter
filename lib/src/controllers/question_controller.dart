import 'package:components_app/src/models/question.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../pages/score_screen.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  final int topic;
  late final List<Question> _questions;

  QuestionController({required this.topic}) {
    _questions = setList(topic);
  }
  int get currentTopic => topic;

  List<Question> get questions => _questions;
  // final Future<List<Question>> _questions = cargarData();

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAns;
  int get correctAns => _correctAns;

  late int _selectedAns;
  int get selectedAns => _selectedAns;

  // for more about obs please check documentation
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

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

  List<Question> setList(int topic) {
    print("Tema question_controller: $topic");
    return (topic == 1)
        ? topic1
            .map((question) => Question(
                  id: question['id'],
                  image: question['image'],
                  question: question['question'],
                  options: question["options"],
                  answer: question['answer_index'],
                ))
            .toList()
        : (topic == 2)
            ? topic2
                .map((question) => Question(
                      id: question['id'],
                      image: question['image'],
                      question: question['question'],
                      options: question["options"],
                      answer: question['answer_index'],
                    ))
                .toList()
            : (topic == 3)
                ? topic2Rel
                    .map((question) => Question(
                          id: question['id'],
                          image: question['image'],
                          question: question['question'],
                          options: question["options"],
                          answer: question['answer_index'],
                        ))
                    .toList()
                : (topic == 4)
                    ? topic2P6
                        .map((question) => Question(
                              id: question['id'],
                              image: question['image'],
                              question: question['question'],
                              options: question["options"],
                              answer: question['answer_index'],
                            ))
                        .toList()
                    : (topic == 8)
                        ? topic4p3
                            .map((question) => Question(
                                  id: question['id'],
                                  image: question['image'],
                                  question: question['question'],
                                  options: question["options"],
                                  answer: question['answer_index'],
                                ))
                            .toList()
                        : [];
  }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

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
            qnController: QuestionController(topic: topic),
            topic: topic,
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
