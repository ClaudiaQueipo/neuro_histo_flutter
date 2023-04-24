import 'dart:convert';

import 'package:components_app/src/providers/topic1_provider.dart';
import 'package:flutter/services.dart';

class Question {
  int id;
  String question;
  List<String> options;
  int answer;

  Question(
      {required this.id,
      required this.question,
      required this.options,
      required this.answer});

  int get getAnswerIndex => this.answer;

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      question: json['question'],
      options: List<String>.from(json['options']),
      answer: int.parse(json['answer_index']),
    );
  }
}

Future<List<Question>> cargarData() async {
  // Leer el archivo JSON y esperar el resultado
  String data = await rootBundle.loadString("data/tema1.json");

  // Decodificar el archivo JSON y mapear los datos en una lista de preguntas
  Map dataMap = json.decode(data);
  List<Question> tema1 =
      (dataMap["6"] as List).map((e) => Question.fromJson(e)).toList();

  // Devolver la lista de preguntas
  return tema1;
}
