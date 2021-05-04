import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  //deklarasi variabel
  final txtjudul = TextEditingController();
  final txtpenyanyi = TextEditingController();
  final txtgenre = TextEditingController();
  final txttahunrilis = TextEditingController();
  List<Widget> data = [];

  onTambah() {
    setState(() {
      data.add(ListTile(
        leading: Icon(Icons.audiotrack),
        title: Text(txtjudul.text),
        subtitle: Text(txtpenyanyi.text),
        trailing: Text(txttahunrilis.text),
        
      ));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(title: Text("MASUKKAN MUSIK FAVORIT ANDA")),
            body: new ListView(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextField(
                        controller: txtjudul,
                        decoration: InputDecoration(hintText: 'Judul Lagu'),
                      ),
                      TextField(
                        controller: txtpenyanyi,
                        decoration: InputDecoration(hintText: 'Penyanyi'),
                      ),
                      TextField(
                        controller: txtgenre,
                        decoration: InputDecoration(hintText: 'Genre'),
                      ),
                      TextField(
                        controller: txttahunrilis,
                        decoration: InputDecoration(hintText: 'Tahun Rilis'),
                      ),
                      RaisedButton(child: Text("Simpan"), onPressed: onTambah),
                    ],
                  ),
                ),
                new Column(
                  // Isi List View
                  children: data,
                )
              ],
         )));
  }
}