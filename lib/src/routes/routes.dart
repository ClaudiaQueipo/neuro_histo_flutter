import 'package:components_app/src/pages/topics/topic1/topic1_VF.dart';
import 'package:components_app/src/pages/topics/topic1/topic1_comp.dart';
import 'package:components_app/src/pages/topics/topic1/topic1_compare.dart';
import 'package:components_app/src/pages/topics/topic1/topic1_page.dart';
import 'package:components_app/src/pages/topics/topic2/topic2_complete.dart';
import 'package:components_app/src/pages/topics/topic2/topic2_image.dart';
import 'package:components_app/src/pages/topics/topic2/topic2_relacione.dart';
import 'package:components_app/src/pages/topics/topic3/topic3_complete.dart';
import 'package:components_app/src/pages/topics/topic3/topic3_page.dart';
import 'package:components_app/src/pages/topics/topic4/topic4_selecc.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/study_page.dart';
import '../pages/topics/topic2/topic2_VF.dart';
import '../pages/topics/topic2/topic2_page.dart';
import '../pages/stats_page.dart';
import '../pages/topics/topic4/topic4_complete.dart';
import '../pages/topics/topic4/topic4_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (context) => const HomePage(),
    'study': (context) => const StudyPage(),
    'study/topic1': (context) => const Topic1Page(),
    'study/topic1/VF': (context) => const Topic1VF(),
    'study/topic1/Complete': (context) => const Topic1Comp(),
    'study/topic1/Compare': (context) => const Topic1Compare(),
    'study/topic2': (context) => const Topic2Page(),
    'study/topic2/VF': (context) => const Topic2VF(),
    'study/topic2/Relacione': (context) => const Topic2Rel(),
    'study/topic2/Imagenes': (context) => const Topic2Image(),
    'study/topic2/Complete': (context) => const Topic2Comp(),
    'study/topic3': (context) => const Topic3Page(),
    'study/topic3/Complete': (context) => const Topic3Comp(),
    'study/topic4': (context) => const Topic4Page(),
    'study/topic4/Complete': (context) => const Topic4Comp(),
    'study/topic4/VF': (context) => const Topic4VF(),
    // 'study/topic2/Complete': (context) => const Topic1Comp(),
    // 'study/topic2/Compare': (context) => const Topic1Compare(),
  };
}
