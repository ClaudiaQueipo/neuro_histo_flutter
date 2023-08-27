import 'package:flutter/material.dart';
import 'package:circular_chart_flutter/circular_chart_flutter.dart';

class Prueba3 extends StatefulWidget {
  const Prueba3({super.key});

  @override
  State<Prueba3> createState() => _Prueba3State();
}

class _Prueba3State extends State<Prueba3> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();

  double bien = 70.0;
  double mal = 30.0;

  var good = Color.fromRGBO(51, 189, 154, 7);
  var bad = Color.fromARGB(248, 197, 85, 85);
  var iconGood = Icons.assignment_turned_in_rounded;
  var iconBad = Icons.block;

  List<CircularStackEntry> data = <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(30.0, Color.fromARGB(248, 197, 85, 85),
            rankKey: 'Mal'),
        new CircularSegmentEntry(70.0, Color.fromRGBO(51, 189, 154, 7),
            rankKey: 'Bien'),
      ],
      rankKey: 'Quarterly Profits',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados'),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 10.0),
                  )
                ],
              ),
              child: AnimatedCircularChart(
                key: _chartKey,
                size: const Size(300.0, 300.0),
                labelStyle: TextStyle(color: Colors.black),
                initialChartData: data,
                chartType: CircularChartType.Pie,
                percentageValues: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  _tajetaNota("Excelente", "70", good, context, iconGood),
                  SizedBox(
                    height: 20,
                  ),
                  _tajetaNota("Errores", "30", bad, context, iconBad)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _tajetaNota(String titulo, String porCiento, var backgroundColor,
    BuildContext context, var icono) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.80,
    height: 150,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0),
        )
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(titulo, style: TextStyle(color: Colors.white, fontSize: 30)),
            Spacer(),
            Icon(
              icono,
              color: Colors.white,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(porCiento,
                style: TextStyle(color: Colors.white, fontSize: 20)),
            Icon(
              Icons.percent,
              color: Colors.white,
            ),
          ],
        ),
      ]),
    ),
  );
}
