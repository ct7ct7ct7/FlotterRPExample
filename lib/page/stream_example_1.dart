import 'dart:math';

import 'package:flutter/material.dart';


class ExamplePage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExamplePage1State();
  }
}

class ExamplePage1State extends State<ExamplePage1>{
  var _text = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Example 1')),
        body: Container(
          color: Color.fromARGB(80, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
          child: ListView(
            children: <Widget>[
              Text('text=$_text',style: TextStyle(fontSize: 30),),
              IconButton(
                icon: Icon(Icons.wb_sunny,color: Colors.redAccent,),
                onPressed: (){
                  setState(() {
                    _text = 'sunny';
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.cloud,color: Colors.blue,),
                onPressed: (){
                  setState(() {
                    _text = 'cloud';
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}