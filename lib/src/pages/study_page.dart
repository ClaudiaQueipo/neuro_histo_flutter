import 'package:flutter/material.dart';
import '../widgets/homePWidg.dart';
import '../widgets/studyPWidg.dart';

class StudyPage extends StatelessWidget {
  const StudyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(),
        body: myBody(context),
        backgroundColor: const Color.fromARGB(255, 32, 37, 69),
        bottomNavigationBar: myBottomBar(context));
  }
}
