import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class ExamplePage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExamplePage2State();
  }
}

class ExamplePage2State extends State<ExamplePage2> {
  StreamController<String> _controller;
  var _text = '';

  @override
  void initState() {
    super.initState();
    _controller = StreamController<String>();
    _controller.stream.listen((String data) {
      setState(() {
        _text = data;
      });
    });
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Example 2')),
        body: Container(
          color: Color.fromARGB(80, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
          child: ListView(
            children: <Widget>[
              Text('text=$_text', style: TextStyle(fontSize: 30)),
              IconButton(
                  color: Colors.redAccent,
                  icon: Icon(Icons.wb_sunny,),
                  onPressed: () {
                    _controller.add('sunny');
                  }),
              IconButton(
                  color: Colors.blueAccent,
                  icon: Icon(Icons.cloud,),
                  onPressed: () {
                    _controller.add('cloud');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}