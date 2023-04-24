class QuestionComplete {
  int id;
  String question;
  List<String> answer;
  List<String> fields;

  QuestionComplete(
      {required this.id,
      required this.question,
      required this.answer,
      required this.fields});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Diga dos características morfológicas de la neurona, visibles al MO",
    "answer": [
      "soma neuronal",
      "cuerpo neuronal",
      "prolongaciones",
      "Núcleo de cromatina laxa con nucléolo prominente"
    ],
    "fields": ["1ra Característica", "2da Característica"]
  },
  {
    "id": 2,
    "question":
        "Nombre de las neuroglias que se encargan de la defensa del SNC: ",
    "answer": ["microglias"],
    "fields": ["Respuesta"]
  },
  {
    "id": 3,
    "question":
        "Nombre de las neuroglias que se encargan de la formación de la mielina en el SNP: ",
    "answer": ["celulas de Schwann"],
    "fields": ["Respuesta"]
  },
  {
    "id": 4,
    "question":
        "En el SNC la glía encargada de formar la vaina de mielina es: ",
    "answer": ["oligodendroglia"],
    "fields": ["Respuesta"]
  },
  {
    "id": 5,
    "question":
        "Los acúmulos basófilos en el soma de las neuronas reciben el nombre de _____________________ y obedecen a la presencia de los organelos __________________ ",
    "answer": ["Sustancia o corpúsculos de Nissl ", "RER y polisomas libres."],
    "fields": ["Primera respuesta", "Segunda respuesta"]
  },
  {
    "id": 6,
    "question": "Las neuronas más abundantes en nuestro organismo son de tipo ",
    "answer": ["multipolares"],
    "fields": ["Respuesta"]
  },
  {
    "id": 7,
    "question":
        "Las neuronas con una sola prolongación que se bifurca cerca del cuerpo neuronal se denominan:",
    "answer": ["pseudounipolares"],
    "fields": ["Respuesta"]
  },
];
