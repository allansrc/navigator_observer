import 'package:flutter/material.dart';

class CBPage extends StatefulWidget {
  const CBPage({super.key, required this.title});

  final String title;

  @override
  State<CBPage> createState() => CBPageState();
}

class CBPageState extends State<CBPage> {
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
              'You are on the page inside of callback',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('pop this Page'),
            )
          ],
        ),
      ),
    );
  }
}
