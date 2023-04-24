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

  // factory Question.fromJson(Map<String, dynamic> json) {
  //   return Question(
  //     id: json['id'],
  //     question: json['question'],
  //     options: List<String>.from(json['options']),
  //     answer: int.parse(json['answer_index']),
  //   );
  // }
}

// Future<List<Question>> cargarData() async {
//   // Leer el archivo JSON y esperar el resultado
//   String data = await rootBundle.loadString("data/tema1.json");

//   // Decodificar el archivo JSON y mapear los datos en una lista de preguntas
//   Map dataMap = json.decode(data);
//   List<Question> tema1 =
//       (dataMap["6"] as List).map((e) => Question.fromJson(e)).toList();

//   // Devolver la lista de preguntas
//   return tema1;
// }

const List topic1 = [
  {
    "id": 1,
    "question":
        "Al M/E los cuerpos de Nissl se corresponden con los lisosomas.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 1
  },
  {
    "id": 2,
    "question":
        "La célula de Schwann forma la vaina de mielina en el sistema nervioso periférico",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 3,
    "question":
        "Los nodos de Ranvier son interrupciones en la vaina de mielina a lo largo de todo el axón.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 4,
    "question": "Las microglias forman parte de la barrera hematoencefálica.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 1
  },
  {
    "id": 5,
    "question": "La sustancia blanca presenta cuerpos neuronales.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 1
  },
  {
    "id": 6,
    "question":
        "Varios axones amielínicos se encuentran inmersos en el citoplasma de la célula de Schwann.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 7,
    "question":
        "La transmisión sináptica puede modificarse por efecto de los fármacos.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 8,
    "question":
        "Las fibras nerviosas amielínicas presentan una velocidad de conducción mayor.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 1
  },
  {
    "id": 9,
    "question":
        "Las neuronas que presentan una prolongación que se divide en dos se denomina multipolar.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 1
  },
  {
    "id": 10,
    "question":
        "En la sustancia gris predominan las fibras nerviosas amielínicas.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  }
];

const List topic2 = [
  {
    "id": 1,
    "question":
        "La sustancia gris del cerebro está dispuesta en 6 capas ó estratos.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 2,
    "question":
        "La barrera hematoencefálica está compuesta principalmente por los pies de la oligodendroglia.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 1
  },
  {
    "id": 3,
    "question":
        "La sustancia gris en la médula espinal ocupa la parte interna de la   misma.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 4,
    "question":
        "Los cuerpos de las células de Purkinje se localizan en la capa media  de la corteza cerebelosa.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 5,
    "question":
        "La capa más profunda de la corteza corteza cerebral es la de células piramidales.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 1
  },
  {
    "id": 6,
    "question":
        "Las neuronas en cesta se localizan en la capa media de la corteza   cerebelosa.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 1
  },
  {
    "id": 7,
    "question":
        "Las neuronas  horizontales de Cajal se encuentran en la capa más superficial de la corteza cerebral",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 8,
    "question":
        "Las dendritas de Purkinje establecen sinapsis con las fibras musgosas.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 1
  },
  {
    "id": 9,
    "question":
        "Los granos del cerebelo forman parte de estructuras sinápticas complejas  denominadas glomérulos. ",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 10,
    "question":
        "Las neuronas de Purkinje se clasifican en Golgi tipo II por la longitud del axón.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 1
  },
  {
    "id": 11,
    "question":
        "La sustancia blanca está formada por fibras mielínicas, oligodendrocitos, astrocitos fibrosos y microglia.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 12,
    "question": "La corteza cerebelosa presenta 6 capas.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 1
  },
  {
    "id": 13,
    "question":
        "En cortes transversales de la médula espinal, la sustancia blanca se localiza externamente. ",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 14,
    "question":
        "La Duramadre está constituida por tejido conjuntivo denso continuo        con el periostio de los huesos del cráneo.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 15,
    "question":
        "Existe una barrera funcional que evita el paso indiscriminado de la sangre al tejido nervioso.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 16,
    "question": "La Piamadre es avascular.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 1
  },
  {
    "id": 17,
    "question":
        "La sustancia gris presenta los cuerpos neuronales y células de neuroglia.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 18,
    "question":
        "Los cuerpos de las células de Purkinje constituyen la 2da capa del cerebelo.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  },
  {
    "id": 19,
    "question":
        "Las cavidades existentes entre las trabéculas de la aracnoides forman el espacio subaracnoideo.",
    "options": ["Verdadero", "Falso"],
    "answer_index": 0
  }
];
