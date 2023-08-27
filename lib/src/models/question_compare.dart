class QuestionCompare {
  int id;
  String question;
  List<String> answer;
  List<String> fields;

  QuestionCompare(
      {required this.id,
      required this.question,
      required this.answer,
      required this.fields});
}

const List questionsCompare = [
  {
    // La respuesta del axon es la primera y la segunda es la de la dentrita
    "id": 1,
    "question": "Compare dentritas y axón en cuanto a longitud:",
    "answer": ["variable hasta 100 cm", "cortas"],
    "fields": ["Axón", "Dentrita"]
  },
  {
    "id": 2,
    "question": "Compare dentritas y axón en cuanto a Número:",
    "answer": ["unico", "multiples"],
    "fields": ["Axón", "Dentrita"]
  },
  {
    "id": 3,
    "question": "Compare dentritas y axón en cuanto a función:",
    "answer": ["conducen el impulso nervioso", "reciben el impulso nervioso"],
    "fields": ["Axón", "Dentrita"]
  }
];
