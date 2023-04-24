import 'dart:developer';

import 'package:flutter/material.dart';

import '../analytics_observer.dart';

class NOPage extends StatefulWidget {
  const NOPage({super.key, required this.title});

  final String title;

  @override
  State<NOPage> createState() => NOPageState();
}

class NOPageState extends State<NOPage> {
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
                onPressed: () {},
                child: const Text('back to Navigator Observer Page'))
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
