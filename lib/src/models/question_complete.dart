class QuestionComplete {
  int id;
  String? image;
  String question;
  List<String> answer;
  List<String> fields;

  QuestionComplete(
      {required this.id,
      this.image,
      required this.question,
      required this.answer,
      required this.fields});
}

//5
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

//6
const List topic2Complete = [
  {
    "id": 1,
    "image": "assets/tema2p8.png",
    "question": "En la siguiente fotomicrografía óptica escriba:",
    "answer": ["impregnacion argentica", "o sales de plata", "cerebro"],
    "fields": ["Tinción empleada", "Órgano al que pertenece"]
  },
  {
    "id": 2,
    "image": "assets/tema2p8.png",
    "question": "En la siguiente fotomicrografía óptica escriba:",
    "answer": ["presencia de neurona piramidal"],
    "fields": ["¿Qué detalle te permitió identificarla?"]
  },
  {
    "id": 3,
    "image": "assets/tema2p10.png",
    "question": "Identifique el órgano y nombre sus estratos:",
    "answer": ["cerebelo"],
    "fields": ["Órgano"]
  },
  {
    "id": 4,
    "image": "assets/tema2p10.png",
    "question": "Identifique el nombre sus estratos:",
    "answer": [
      "capa molecular",
      "capa de las células de Purkinje",
      "capa de los granos"
    ],
    "fields": ["1era Capa", "2da Capa", "3ra Capa"]
  },
  {
    "id": 5,
    "image": "assets/tema2p11.png",
    "question": "Apoyándose en el siguiente esquema:\na.	Describa los componentes del glomérulo cerebeloso. ",
    "answer": [
      "Fibras musgosas", "dendritas de los granos","el axón de las estrelladas de Golgi"
    ],
    "fields": ["1ra característica", "2da característica", "3ra característica"]
  },
  {
    "id": 6,
    "image": "assets/tema2p11.png",
    "question": "Apoyándose en el siguiente esquema:\nb. Diga cuál es su importancia funcional. ",
    "answer": [
      "Sitio de múltiples sinapsis"
    ],
    "fields": ["Importancia funcional"]
  },
  {
    "id": 7,
    "image": "assets/tema2p12-1.png",
    "question": "Nombre de las células de esta imágen",
    "answer": [
      "Células de Purkinje"
    ],
    "fields": ["Célula"]
  },
  {
    "id": 8,
    "image": "assets/tema2p12-2.png",
    "question": "Nombre de las células de esta imágen",
    "answer": [
      "Piramidales de Betz", "gigantes de Betz"
    ],
    "fields": ["Célula"]
  },
  {
    "id": 9,
    "question": "Las neuronas piramidales gigantes de Betz son las neuronas representativas de la corteza _________________. ",
    "answer": [
      "cerebral"
    ],
    "fields": ["Respuesta"]
  },
  {
    "id": 10,
    "question": "La vía eferente de la corteza cerebelosa la constituyen ________________.",
    "answer": [
      "axones de las células de Purkinje"
    ],
    "fields": ["Respuesta"]
  },
  {
    "id": 11,
    "question": "En las áreas motoras de la corteza cerebral predominan las neuronas de tipo ____________. ",
    "answer": [
      "piramidales"
    ],
    "fields": ["Respuesta"]
  },
  {
    "id": 12,
    "question": "Las neuronas típicas de la corteza cerebelosa son _______________. ",
    "answer": [
      "células de Purkinje"
    ],
    "fields": ["Respuesta"]
  },
  {
    "id": 13,
    "question": "La presencia de axones bifurcados en forma de T es característico de la capa más superficial de la corteza _____________",
    "answer": [
      "cerebelosa"
    ],
    "fields": ["Respuesta"]
  },
  {
    "id": 14,
    "question": "Las fibras nerviosas aferentes cuyas dilataciones forman parte del glomérulo cerebeloso son las ______________.",
    "answer": [
      "musgosas"
    ],
    "fields": ["Respuesta"]
  },
  {
    "id": 15,
    "question": "La capa de la corteza cerebral donde se encuentran células fusiformes, gránulos y pirámides se denomina _________________.",
    "answer": [
      "capa de células polimorfas"
    ],
    "fields": ["Respuesta"]
  },
  {
    "id": 16,
    "question": "La neurona típica de la corteza cerebelosa es __________________",
    "answer": [
      "célula de Purkinje"
    ],
    "fields": ["Respuesta"]
  },
  {
    "id": 17,
    "question": "La estructura del SNC que dificulta el paso de ciertas sustancias y gérmenes al tejido nervioso se nombra",
    "answer": [
      "Barrera Hematoencefálica", "BHE"
    ],
    "fields": ["Respuesta"]
  },
  {
    "id": 18,
    "question": "En las áreas sensoriales de la corteza cerebral existe un predominio de neuronas de tipo _______________. ",
    "answer": [
      "granulosas"
    ],
    "fields": ["Respuesta"]
  },
  
];

const List topic3Complete = [
  {
    "id": 1,
    "image": "assets/tema3p1-1.png",
    "question": "Observe e identifique la imagen",
    "answer": ["haces de fibras nerviosas"],
    "fields": ["Identifiquela"]
  },
  {
    "id": 2,
    "image": "assets/tema3p1-2.png",
    "question": "Observe e identifique la imagen",
    "answer": ["nervio periferico"],
    "fields": ["Identifiquela"]
  },
  {
    "id": 3,
    "image": "assets/tema3p1-3.png",
    "question": "Identifique en la imagen las estructuras señaladas con las letras A, B Y C",
    "answer": ["Epineuro", "perineuro", "endoneuro"],
    "fields": ["A", "B", "C"]
  },
  {
    "id": 4,
    "image": "assets/tema3p2.png",
    "question": "Identifique la estructura de la imagen",
    "answer": ["fibra nerviosa mielínica"],
    "fields": ["Respuesta"]
  },
  {
    "id": 5,
    "image": "assets/tema3p2.png",
    "question": "Identifique y nombre sus elementos componentes. ",
    "answer": ["axón", "vaina de mielina", "el nodo de Ranvier"],
    "fields": ["A", "B", "C"]
  },
  {
    "id": 6,
    "image": "assets/tema3p3.png",
    "question": "Identifique la estructura de la imagen",
    "answer": ["Ganglio nervioso craneoespinal"],
    "fields": ["Respuesta"]
  },
  {
    "id": 7,
    "image": "assets/tema3p3.png",
    "question": "a.	Identifique y nombre sus elementos constituyentes señalados con los números 1,2 y 3.",
    "answer": ["cuerpos neuronales", "fibras nerviosas ", "cápsula"],
    "fields": ["1", "2", "3"]
  },
  {
    "id": 8,
    "image": "assets/tema3p4.png",
    "question": "Identifique el tipo de neurona presente en cada una teniendo en cuenta el número de prolongaciones. ",
    "answer": ["neurona seudounipolar", "neurona multipolar"],
    "fields": ["Imagen 1", "Imagen 2"]
  },
  {
    "id": 9,
    "image": "assets/tema3p5.png",
    "question": "Identifique los tipos de ganglios representados en las imágenes 1 y 2 y responda",
    "answer": ["ganglo craneoespinal ", "ganglio autonomo"],
    "fields": ["Imagen 1", "Imagen 2"]
  },
  {
    "id": 10,
    "question": "1.	Las fibras nerviosas mielínicas en el SNP están constituidas por el axón y su vaina de mielina   que es sintetizada por la _______________",
    "answer": ["célula de Schwann"],
    "fields": ["Respuesta"]
  },
  {
    "id": 11,
    "question": "2.	La vaina de mielina se interrumpe a intervalos regulares en zonas denominadas ________________",
    "answer": ["nodos de Ranvier"],
    "fields": ["Respuesta"]
  },
  {
    "id": 12,
    "question": "3.	La velocidad de conducción del impulso nervioso es mayor en las fibras nerviosas de tipo _________________",
    "answer": ["mielínicas"],
    "fields": ["Respuesta"]
  },
  {
    "id": 13,
    "question": "4.	En los ganglios craneoespinales las neuronas según la forma de sus cuerpos son de tipo ________________",
    "answer": ["esféricas"],
    "fields": ["Respuesta"]
  },
  {
    "id": 14,
    "question": "5.	El tejido conectivo fibroso que rodea el conjunto de haces de fibras nerviosas se denomina  ________________",
    "answer": ["epineuro"],
    "fields": ["Respuesta"]
  },
  {
    "id": 15,
    "question": "6.	Los ganglios que generalmente no poseen cápsula de tejido conectivo con fibras y cuerpos neuronales entremezclados se denominan ________________",
    "answer": ["autónomos, vegetativos o motores"],
    "fields": ["Respuesta"]
  },
  {
    "id": 15,
    "question": "7.	Las neuronas de los ganglios nerviosos se encuentran rodeadas por células gliales llamadas ______________",
    "answer": ["satélites"],
    "fields": ["Respuesta"]
  },
  {
    "id": 16,
    "question": "8.	Cada fibra nerviosa se encuentra rodeada por un tejido conectivo con abundantes fibras reticulares denominado ______________",
    "answer": ["endoneuro"],
    "fields": ["Respuesta"]
  },
  {
    "id": 17,
    "question": "9.	El conjunto de haces de fibras nerviosas rodeado por tejido conectivo se denomina _________________",
    "answer": ["nervio periférico"],
    "fields": ["Respuesta"]
  },
  {
    "id": 18,
    "question": "10.	Los acúmulos de los cuerpos neuronales situados en el SNP se denominan __________________",
    "answer": ["ganglios nerviosos"],
    "fields": ["Respuesta"]
  },
  {
    "id": 19,
    "question": "11.	El ganglio nervioso donde los somas de las neuronas se disponen en la periferia se nombra __________________",
    "answer": ["craneoespinal o sensitivo"],
    "fields": ["Respuesta"]
  },
  {
    "id": 20,
    "question": "12.	El tejido conectivo donde las células aplanadas unidas muy íntimamente rodean a un haz de fibras nerviosas se denomina __________________",
    "answer": ["perineuro"],
    "fields": ["Respuesta"]
  },
];

const List topic4 = [
  {
    "id": 1,
    "question": "1.	En el techo de la cavidad nasal se localiza el receptor nombrado",
    "answer": ["mucosa olfatoria"],
    "fields": ["Respuesta"]
  },
  {
    "id": 2,
    "question": "2.	El material asociado a la superficie de las máculas utriculares y saculares es ",
    "answer": ["membrana otolítica"],
    "fields": ["Respuesta"]
  },
  {
    "id": 3,
    "question": "3.	La cúpula es una capa gelatinosa de matriz extracelular presente en la superficie del receptor nombrado",
    "answer": ["crestas ampulares"],
    "fields": ["Respuesta"]
  },
  {
    "id": 4,
    "question": "4.	En el órgano de Corti las células que reciben los estímulos sonoros se denominan",
    "answer": ["células con pelos tipo I y II"],
    "fields": ["Respuesta"]
  },
  {
    "id": 5,
    "question": "5.	Las glándulas de Bowman constituyen estructuras anexas del receptor nombrado",
    "answer": ["mucosa olfatoria"],
    "fields": ["Respuesta"]
  },
  {
    "id": 6,
    "question": "6.	El órgano de Corti descansa sobre una membrana nombrada ",
    "answer": ["basilar"],
    "fields": ["Respuesta"]
  },
  {
    "id": 7,
    "question": "7.	Las células receptoras   en la mucosa olfatoria son neuronas bipolares por lo que se clasifica como receptor",
    "answer": ["primario"],
    "fields": ["Respuesta"]
  },
  {
    "id": 8,
    "question": "8.	En la mucosa olfatoria las células receptoras son",
    "answer": ["neuronas bipolares"],
    "fields": ["Respuesta"]
  },
  {
    "id": 9,
    "question": "9.	Los conos y bastones establecen sinapsis con las neuronas bipolares en la capa",
    "answer": ["plexiforme externa"],
    "fields": ["Respuesta"]
  },
  {
    "id": 10,
    "question": "10.	Los complejos de unión entre las células fotoreceptoras y las células de Müller constituyen la capa",
    "answer": ["limitante externa"],
    "fields": ["Respuesta"]
  },
  {
    "id": 11,
    "question": "11.	Las neuronas de conducción directa de la retina son las bipolares y",
    "answer": ["ganglionares"],
    "fields": ["Respuesta"]
  },
  {
    "id": 12,
    "question": "12.	Entre las células olfatorias de la mucosa olfatoria existen células con microvellosidades denominadas",
    "answer": ["sustentaculares o de sostén"],
    "fields": ["Respuesta"]
  },
  {
    "id": 13,
    "question": "13.	Cada corpúsculo gustativo presenta una apertura por donde penetran las sustancias y que se nombra poro",
    "answer": ["gustativo"],
    "fields": ["Respuesta"]
  },
  {
    "id": 14,
    "question": "14.	Los somas de los conos y bastones se localizan en la capa",
    "answer": ["nuclear externa"],
    "fields": ["Respuesta"]
  },
  {
    "id": 15,
    "question": "15.	Los axones de las células ganglionares conforman la capa de la retina denominada capa de ",
    "answer": ["fibras del nervio óptico"],
    "fields": ["Respuesta"]
  },
  {
    "id": 16,
    "question": "16.	Las células fotorreceptoras de la retina que permiten una gran agudeza visual son",
    "answer": ["los conos"],
    "fields": ["Respuesta"]
  },
  {
    "id": 17,
    "question": "17.	Los somas de las células bipolares, horizontales y amacrinas se encuentran en la capa ",
    "answer": ["nuclear interna"],
    "fields": ["Respuesta"]
  },
  {
    "id": 18,
    "question": "18.	La estructura amorfa rica en glicoproteínas que recubre en su superficie al órgano de Corti se denomina",
    "answer": ["membrana tectoria"],
    "fields": ["Respuesta"]
  },
  {
    "id": 18,
    "image": "assets/topic4p6.jpg",
    "question": "Identifique los señalamientos",
    "answer": ["2", "1", "3"],
    "fields": ["Célula receptora (neurona bipolar)", "Célula sustentacular", "Célula basal"]
  },

];



