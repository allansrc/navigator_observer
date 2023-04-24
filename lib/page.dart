import 'package:flutter/material.dart';

import 'analytics_observer.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key, required this.title});

  final String title;

  @override
  State<MyPage> createState() => MyPageState();
}

class MyPageState extends State<MyPage> {
  void sent() {
    print('object');
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
            ElevatedButton(onPressed: () {}, child: const Text('Next Page'))
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
