import 'package:flutter/material.dart';

class RAPage extends StatefulWidget {
  const RAPage({super.key, required this.title});

  final String title;

  @override
  State<RAPage> createState() => RAPageState();
}

class RAPageState extends State<RAPage> {
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
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('pop to RouteAware Page'))
          ],
        ),
      ),
    );
  }
}
