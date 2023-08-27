import 'package:components_app/src/widgets/homePWidg.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(),
        body: myHomeBody(),
        backgroundColor: const Color.fromARGB(255, 32, 37, 69),
        bottomNavigationBar: myBottomBar(context));
  }
}
