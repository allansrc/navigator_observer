import 'dart:developer';

import 'package:flutter/material.dart';

import '../analytics_observer.dart';

class NavigatorObserverPage extends StatefulWidget {
  const NavigatorObserverPage({super.key, required this.title});

  final String title;

  @override
  State<NavigatorObserverPage> createState() => NavigatorObserverStatePage();
}

class NavigatorObserverStatePage extends State<NavigatorObserverPage> {
  void sent() {
    log('send on back from Navigator Observer');
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
                  Navigator.of(context).pushNamed("/navigator_observer_page");
                },
                child: const Text('Next Page'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AnalyticsObserver.instance.eventDispatch = sent;
          Navigator.of(context).pop();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
