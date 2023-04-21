import 'package:components_app/src/pages/topics/topic1_page.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/study_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (context) => const HomePage(),
    'study': (context) => const StudyPage(),
    'study/topic1': (context) => const Topic1Page()
  };
}
