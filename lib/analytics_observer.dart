import 'package:flutter/material.dart';

class AnalyticsObserver extends NavigatorObserver {
  // Singleton instance
  static final AnalyticsObserver instance = AnalyticsObserver._internal();

  factory AnalyticsObserver() => instance;

  AnalyticsObserver._internal();

  // Setter to send analytics event: it's used only on navigatorObserver example
  VoidCallback eventDispatch = () {};

  // This  valeu on app could be instancve from default navigator or
  // a default global navigator key; it's used only on RouteAware example
  RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);

    eventDispatch(); //  it's used only on navigatorObserver example
    eventDispatch = () {}; //  it's used only on navigatorObserver example
  }
}
