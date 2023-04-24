import 'dart:developer';

import 'package:flutter/material.dart';

class CallbackPage extends StatefulWidget {
  const CallbackPage({super.key, required this.title});

  final String title;

  @override
  State<CallbackPage> createState() => CallbackPageState();
}

class CallbackPageState extends State<CallbackPage> {
  void sent() {
    log('send on back from callback on callback page');
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
            Text('You are on the ${widget.title} page'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/callback_page").then((value) {
                  sent();
                });
              },
              child: const Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
