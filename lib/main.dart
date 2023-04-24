import 'package:flutter/material.dart';

import 'RouteAware/route_aware.dart';
import 'RouteAware/route_aware_page.dart';
import 'analytics_observer.dart';
import 'callback/callback.dart';
import 'callback/callback_second_page.dart';
import 'home.dart';
import 'navigatorObserver/navigator_observer.dart';
import 'navigatorObserver/navigator_observer_page.dart';

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
      navigatorObservers: [
        // this is called for RouteAware
        AnalyticsObserver.instance.routeObserver,

        // this is called for NavigatorObserver
        AnalyticsObserver(),
      ],
      initialRoute: "/home",
      routes: {
        "/home": (_) => const MyHomePage(title: 'Home'),
        "/callback": (_) => const CallbackPage(title: 'callback'),
        "/callback_page": (_) => const CBPage(title: 'callback_page'),
        "/route_aware": (_) => const RouteAwarePage(title: 'route_aware'),
        "/route_aware_page": (_) => const RAPage(title: 'route_aware_page'),
        "/navigator_observer": (_) =>
            const NavigatorObserverPage(title: 'page_two'),
        "/navigator_observer_page": (_) =>
            const NOPage(title: 'navigator_observer_page'),
      },
    );
  }
}
