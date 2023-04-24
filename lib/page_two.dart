import 'package:flutter/material.dart';

class MyPageTwo extends StatefulWidget {
  const MyPageTwo({super.key, required this.title});

  final String title;

  @override
  State<MyPageTwo> createState() => MyPageTwoState();
}

class MyPageTwoState extends State<MyPageTwo> {
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
          Navigator.of(context).pop();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
