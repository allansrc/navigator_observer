import 'package:flutter/material.dart';

import 'analytics_observer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/route_aware");
              },
              child: const Text('RouteAware'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/navigator_observer");
              },
              child: const Text('NavigatorObserver + singleton'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/callback");
              },
              child: const Text('Callback'),
            ),
          ],
        ),
      ),
    );
  }
}
