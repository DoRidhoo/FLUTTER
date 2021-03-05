import 'package:flutter/material.dart';

void main() => runApp(MyApp);

class MyApp extends stateless_widget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: Text('Aplikasi Flutter Petanikode'),
          backgroundColor: Colors.deepOrange,
        ), //AppBar
        body: Center( 
          child: Text('Selamat Datang di Flutter'),
        ), //Center
      ), //Scaffold
    ); //MaterialApp
  }
}