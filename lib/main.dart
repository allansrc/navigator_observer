import 'package:flutter/material.dart';
import 'package:navigator_observer/page.dart';
import 'package:navigator_observer/page_two.dart';

import 'analytics_observer.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [AnalyticsObserver()],
      initialRoute: "/home",
      routes: {
        "/home": (_) => const MyHomePage(title: 'Home'),
        "/page": (_) => const MyPage(title: 'Page'),
        "/page_two": (_) => const MyPageTwo(title: 'page_two'),
      },
    );
  }
}
