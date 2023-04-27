import 'dart:developer';

import 'package:flutter/material.dart';

import '../core/state/my_app_state.dart';

class RouteAwarePage extends StatefulWidget {
  const RouteAwarePage({super.key, required this.title});

  final String title;

  @override
  State<RouteAwarePage> createState() => RouteAwarePageState();
}

class RouteAwarePageState extends MyAppState<RouteAwarePage> {
  void sent() {
    log('send on back from RouteAware');
  }

  @override
  void didPopNext() {
    log("didPopNext (called when the page this one called pops) / back here $runtimeType");
    sent();
  }

  @override
  void didPop() {
    log("didPop (called when this one pops) $runtimeType");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You are on the page',
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/route_aware_page");
                },
                child: const Text('Next Page'))
          ],
        ),
      ),
    );
  }
}
