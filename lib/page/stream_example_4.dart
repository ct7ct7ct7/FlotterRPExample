import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class ExamplePage4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExamplePage4State();
  }
}

class ExamplePage4State extends State<ExamplePage4> {
  StreamController<String> _controller;

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
    var st = StreamTransformer<String, String>.fromHandlers(handleData: (data, sink){
      sink.add('Transformer:$data');
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Example 4')),
        body: Container(
          color: Color.fromARGB(80, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
          child: ListView(
            children: <Widget>[
              StreamBuilder<String>(
                initialData: '',
                stream: _controller.stream.transform(st),
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