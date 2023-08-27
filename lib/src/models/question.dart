import 'dart:convert';

import 'package:components_app/src/providers/topic1_provider.dart';
import 'package:flutter/services.dart';

class Question {
  int id;
  String? image;
  String question;
  List<String> options;
  int answer;

  Question(
      {required this.id,
      this.image,
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

//1
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

//2
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

//3
const List topic2Rel = [
  {
    "id": 1,
    "question": "Adherida con firmeza al periostio de cráneo y raquis",
    "options": [
      "Duramadre",
      "Aracnoides",
      "Piamadre",
      "Todas las anteriores",
      "Ninguna de las anteriores"
    ],
    "answer_index": 0
  },
  {
    "id": 2,
    "question": "Forma trabéculas entre las cuales circula el líquido CR",
    "options": [
      "Duramadre",
      "Aracnoides",
      "Piamadre",
      "Todas las anteriores",
      "Ninguna de las anteriores"
    ],
    "answer_index": 1
  },
  {
    "id": 3,
    "question":
        "Adherida con firmeza al la superficiedel encéfalo y de la médula espinal",
    "options": [
      "Duramadre",
      "Aracnoides",
      "Piamadre",
      "Todas las anteriores",
      "Ninguna de las anteriores"
    ],
    "answer_index": 2
  },
  {
    "id": 4,
    "question":
        "Cubre los capilares en la sustancia gris para formar la barrera hematoencefálica",
    "options": [
      "Duramadre",
      "Aracnoides",
      "Piamadre",
      "Todas las anteriores",
      "Ninguna de las anteriores"
    ],
    "answer_index": 1
  },
  {
    "id": 5,
    "question": "Compuesta principalmente por tejido conjuntivo denso",
    "options": [
      "Duramadre",
      "Aracnoides",
      "Piamadre",
      "Todas las anteriores",
      "Ninguna de las anteriores"
    ],
    "answer_index": 0
  },
  {
    "id": 6,
    "question": "Los astrocitos son en su mayor parte de tipo fibroso.",
    "options": [
      "Sustancia gris",
      "Sustancia blanca",
      "Ambas",
      "Ninguna",
    ],
    "answer_index": 1
  },
  {
    "id": 7,
    "question": "Contiene oligodendrocitos.",
    "options": [
      "Sustancia gris",
      "Sustancia blanca",
      "Ambas",
      "Ninguna",
    ],
    "answer_index": 2
  },
  {
    "id": 8,
    "question":
        "Se sitúa externamente formando las cortezas cerebral y cerebelosa ",
    "options": [
      "Sustancia gris",
      "Sustancia blanca",
      "Ambas",
      "Ninguna",
    ],
    "answer_index": 0
  },
  {
    "id": 9,
    "question": "Contiene cuerpos neuronales.",
    "options": [
      "Sustancia gris",
      "Sustancia blanca",
      "Ambas",
      "Ninguna",
    ],
    "answer_index": 0
  },
  {
    "id": 10,
    "question": "Contiene en su mayor parte axones y células de la neuroglia. ",
    "options": [
      "Sustancia gris",
      "Sustancia blanca",
      "Ambas",
      "Ninguna",
    ],
    "answer_index": 1
  },
];

//4
const List topic2P6 = [
  {
    "id": 1,
    "image": "assets/tema2p6.jpg",
    "question":
        "Observe el esquema que se muestra a continuación y responda:\n1- El órgano que se representa es:",
    "options": ["Cerebro", "Cerebelo"],
    "answer_index": 0
  },
  {
    "id": 2,
    "image": "assets/tema2p6.jpg",
    "question": "Nombre de la estructura #1 señalada en la figura:",
    "options": [
      "Capa granulosa externa",
      "Corteza Cerebral",
    ],
    "answer_index": 1
  },
  {
    "id": 3,
    "image": "assets/tema2p6.jpg",
    "question": "Nombre de la estructura #2 señalada en la figura:",
    "options": [
      "Capa molecular",
      "Capa piramidal externa",
    ],
    "answer_index": 0
  },
  {
    "id": 4,
    "image": "assets/tema2p6.jpg",
    "question": "Nombre de la estructura #3 señalada en la figura:",
    "options": [
      "Capa granulosa externa",
      "Corteza Cerebral",
    ],
    "answer_index": 0
  },
  {
    "id": 5,
    "image": "assets/tema2p6.jpg",
    "question": "Nombre de la estructura #4 señalada en la figura:",
    "options": [
      "Capa granulosa externa",
      "Capa piramidal externa",
    ],
    "answer_index": 1
  },
  {
    "id": 6,
    "image": "assets/tema2p6.jpg",
    "question": "Nombre de la estructura #5 señalada en la figura:",
    "options": [
      "Neuronas piramidales gigantes de BETZ",
      "Capa granulosa interna"
    ],
    "answer_index": 1
  },
  {
    "id": 7,
    "image": "assets/tema2p6.jpg",
    "question": "Nombre de la estructura #6 señalada en la figura:",
    "options": [
      "Capa piramidal interna",
      "Capa de células polimorfas",
    ],
    "answer_index": 0
  },
  {
    "id": 8,
    "image": "assets/tema2p6.jpg",
    "question": "Nombre de la estructura #7 señalada en la figura:",
    "options": [
      "Capa granulosa externa",
      "Capa de células polimorfas",
    ],
    "answer_index": 1
  },
  {
    "id": 9,
    "image": "assets/tema2p6.jpg",
    "question": "Nombre de la estructura #8 señalada en la figura:",
    "options": [
      "Corteza Cerebral",
      "Neuronas piramidales gigantes de BETZ",
    ],
    "answer_index": 1
  },
  {
    "id": 10,
    "image": "assets/tema2p7.png",
    "question":
        "Observe la figura que se muestra a continuación y responda:\nEl órgano que se muestra es:",
    "options": ["Cerebelo", "Médula espinal", "Cerebro"],
    "answer_index": 1
  },
  {
    "id": 11,
    "image": "assets/tema2p7.png",
    "question":
        "Observe la figura que se muestra a continuación y responda:\nLa coloración empleada:",
    "options": ["Impregnación argéntica", "Hematoxilina/ Eosina", "PAS"],
    "answer_index": 1
  },
  {
    "id": 12,
    "image": "assets/tema2p7.png",
    "question": "Relacione las estructura #1 que se muestra en la imagen:",
    "options": ["Sustancia blanca", "Sustancia gris", "Piamadre"],
    "answer_index": 2
  },
  {
    "id": 13,
    "image": "assets/tema2p7.png",
    "question": "Relacione las estructura #2 que se muestra en la imagen:",
    "options": ["Sustancia blanca", "Sustancia gris", "Piamadre"],
    "answer_index": 0
  },
  {
    "id": 14,
    "image": "assets/tema2p7.png",
    "question": "Relacione las estructura #3 que se muestra en la imagen:",
    "options": ["Sustancia blanca", "Sustancia gris", "Piamadre"],
    "answer_index": 1
  },
  {
    "id": 15,
    "image": "assets/tema2p9.png",
    "question":
        "Observe la fotomicrografía óptica que se muestra a continuación y repsonda:\nEl órgano que se presenta es:",
    "options": ["Corteza cerebral", "Corteza cerebelosa", "Médula espinal"],
    "answer_index": 1
  },
  {
    "id": 16,
    "image": "assets/tema2p9.png",
    "question":
        "Observe la fotomicrografía óptica que se muestra a continuación y repsonda:\nLa coloración empleada es:",
    "options": ["Hematoxilina/Eosina", "Impregnación argéntica", "PAS"],
    "answer_index": 1
  },
];

//8
const List topic4p3 = [
  {
    "id": 1,
    "question":
        "Relacione cual de las opciones se asocia el enunciado:\n Fotorreceptores:",
    "options": ["Conos", "Bastones", "Ambos", "Ninguno"],
    "answer_index": 2
  },
  {
    "id": 2,
    "question":
        "Relacione cual de las opciones se asocia el enunciado:\n Tiene segmento externo:",
    "options": ["Conos", "Bastones", "Ambos", "Ninguno"],
    "answer_index": 2
  },
  {
    "id": 3,
    "question":
        "Relacione cual de las opciones se asocia el enunciado:\n Responsable de la visión nocturna:",
    "options": ["Conos", "Bastones", "Ambos", "Ninguno"],
    "answer_index": 1
  },
  {
    "id": 4,
    "question":
        "Relacione cual de las opciones se asocia el enunciado:\n Contienen pigmento visual:",
    "options": ["Conos", "Bastones", "Ambos", "Ninguno"],
    "answer_index": 2
  },
  {
    "id": 5,
    "question":
        "Relacione cual de las opciones se asocia el enunciado:\n Responsable de la visión a color:",
    "options": ["Conos", "Bastones", "Ambos", "Ninguno"],
    "answer_index": 0
  },
  {
    "id": 6,
    "question":
        "Relacione cual de las opciones se asocia el enunciado:\n Contiene rodopsina:",
    "options": ["Conos", "Bastones", "Ambos", "Ninguno"],
    "answer_index": 1
  },
  {
    "id": 7,
    "question":
        "Relacione cual de las opciones se asocia el enunciado:\n Contiene yodopsina:",
    "options": ["Conos", "Bastones", "Ambos", "Ninguno"],
    "answer_index": 0
  },
  {
    "id": 8,
    "question":
        "Relacione cual de las opciones se asocia el enunciado:\n Son los más abundantes:",
    "options": ["Conos", "Bastones", "Ambos", "Ninguno"],
    "answer_index": 1
  },
  {
    "id": 9,
    "question":
        "Relacione cual de las opciones se asocia el enunciado:\n Son los más abundantes:",
    "options": ["Conos", "Bastones", "Ambos", "Ninguno"],
    "answer_index": 3
  },
  {
    "id": 10,
    "question": "Responda correctamente:\nCorpúsculos gustativos:",
    "options": [
      "Están distribuidos toda la mucosa bucal",
      "Su elemento asociado a la superficie es la secreción de las glándulas de Bowwman",
      "Están constituidos por 3 tipos celulares: las basales, las sustentaculares y las sensoriales I y II ",
      "Es un receptor primario"
    ],
    "answer_index": 2
  },
  {
    "id": 11,
    "question": "Responda correctamente:\nMucosa olfatoria:",
    "options": [
      "Es un receptor primario",
      "Presenta células con pelos I y II",
      "Se clasifica como un epitelio seudo estratificado cilíndrico ciliado con células caliciformes",
      "Se localiza a lo largo de todas las vías respiratorias"
    ],
    "answer_index": 0
  },
  {
    "id": 12,
    "question": "Responda correctamente:\nRetina:",
    "options": [
      "Las células horizontales son neuronas de conducción directa",
      "Las células  de Müller son parte de las glías  periféricas",
      "Los conos y bastones son las células receptoras",
      "Las células amacrinas son neuronas bipolares"
    ],
    "answer_index": 2
  },
  {
    "id": 13,
    "question": "Responda correctamente:\nMáculas utriculares y saculares:",
    "options": [
      "Son receptores primarios",
      "Presentan en su superficie la membrana otolítica",
      "Sus células receptoras son neuronas bipolares",
      "Las células de sostén son las falángicas "
    ],
    "answer_index": 1
  },
  {
    "id": 14,
    "question": "Responda correctamente:\nCresta ampular:",
    "options": [
      "Es un receptor primario",
      "Localizado en el techo de la cavidad nasal",
      "Tiene en su superficie libre una formación cónica, gelatinosa que se llama cúpula",
      "Presenta otolitos "
    ],
    "answer_index": 2
  },
  {
    "id": 15,
    "question": "Responda correctamente:\nÓrgano de Corti:",
    "options": [
      "Está ubicado en el oído medio",
      "El elemento asociado a la superficie es la membrana basilar.",
      "Las células receptoras son células sensoriales con pelos tipos I y II.",
      "Es el receptor del equilibrio"
    ],
    "answer_index": 2
  },
  {
    "id": 16,
    "image": "assets/topic4p5.jpg",
    "question": "El corte histológico está coloreado con:",
    "options": ["PAS", "Hematoxilina/Eosina", "Impregnación argéntica"],
    "answer_index": 1
  },
  {
    "id": 17,
    "image": "assets/topic4p5.jpg",
    "question": "Se encuentra señalado:",
    "options": ["Órgano de Corti", "Corpúsculo gustativo", "Mucosa olfatoria"],
    "answer_index": 1
  },
  {
    "id": 18,
    "image": "assets/topic4p5.jpg",
    "question":
        "Este receptor según el tipo de célula receptora se clasifica como: ",
    "options": ["Primario", "Secundario"],
    "answer_index": 1
  },
  {
    "id": 19,
    "image": "assets/topic4p6.jpg",
    "question": "Representa a: ",
    "options": ["Mucosa olfatoria", "Corpúsculo gustativo", "Órgano de Corti"],
    "answer_index": 0
  },
  {
    "id": 20,
    "image": "assets/topic4p6.jpg",
    "question":
        "Este receptor según el tipo de célula receptora se clasifica como:",
    "options": ["Primario", "Secundario"],
    "answer_index": 0
  },
  {
    "id": 21,
    "image": "assets/topic4p7.jpg",
    "question": "Representa a:",
    "options": [
      "Mucosa olfatoria",
      "Crestas y Máculas utriculares y saculares ",
      "Órgano de Corti"
    ],
    "answer_index": 1
  },
  {
    "id": 22,
    "image": "assets/topic4p7.jpg",
    "question": "Representa a:",
    "options": ["Primario", "Secundario"],
    "answer_index": 1
  },
];
