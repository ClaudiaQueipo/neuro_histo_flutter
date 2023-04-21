import 'package:components_app/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:components_app/src/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: getApplicationRoutes(),
        onGenerateRoute: (settings) {
          return MaterialPageRoute(builder: (context) => const HomePage());
        });
  }
}
