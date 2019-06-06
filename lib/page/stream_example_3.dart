import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class ExamplePage3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExamplePage3State();
  }
}

class ExamplePage3State extends State<ExamplePage3> {
  StreamController<String> _controller = StreamController<String>();

  @override
  void initState() {
    super.initState();
    _controller = StreamController<String>();
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
        appBar: AppBar(title: Text('Example 3')),
        body: Container(
          color: Color.fromARGB(80, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
          child: ListView(
            children: <Widget>[
              StreamBuilder<String>(
                initialData: '',
                stream: _controller.stream,
                builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                  return Text('text=${snapshot.data}', style: TextStyle(fontSize: 30));
                },
              ),
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