import 'package:flutter/material.dart';

class AnalyticsObserver extends NavigatorObserver {
  // Singleton instance
  static final AnalyticsObserver instance = AnalyticsObserver._internal();

  factory AnalyticsObserver() => instance;

  AnalyticsObserver._internal();

  // Setter to send analytics event
  VoidCallback eventDispatch = () {};

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);

    eventDispatch();
    eventDispatch = () {};
  }
}
