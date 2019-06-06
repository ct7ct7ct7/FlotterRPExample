import 'package:flutter/material.dart';
import 'package:flutter_stream_example_app/page/stream_example_1.dart';
import 'package:flutter_stream_example_app/page/stream_example_2.dart';
import 'package:flutter_stream_example_app/page/stream_example_3.dart';
import 'package:flutter_stream_example_app/page/stream_example_4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter stream example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter stream example'),
        ),
        body: MyHomePage(),
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(title: Text('example 1'),onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
            return ExamplePage1();
          }));
        }),
        ListTile(title: Text('example 2'),onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
            return ExamplePage2();
          }));
        }),
        ListTile(title: Text('example 3'),onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
            return ExamplePage3();
          }));
        }),
        ListTile(title: Text('example 4'),onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
            return ExamplePage4();
          }));
        }),
      ],
    );
  }
}