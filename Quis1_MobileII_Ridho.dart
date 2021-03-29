import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title : 'Routing Navigation',
    initialRoute : '/',
    routes : {
      '/' : (context) => Menu_Utama(),
      HalamanPertama.routeName : (context) => HalamanPertama(),
      HalamanKedua.routeName   : (context) => HalamanKedua(),
      HalamanKetiga.routeName  : (context) => HalamanKetiga(),
    },
  ));
}

class Menu_Utama extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text ('Menu Utama ((Quis1 M. Ridho Hanafi))'),
      ),
      body : Center(
        child : GridView.count(
          crossAxisCount: 3,
            children:<Widget>[RaisedButton(
              child : Text ('Pindah Halaman Pertama'),
              onPressed: (){

                Navigator.pushNamed(context, HalamanPertama.routeName);
              },
            ),
            RaisedButton(
              child : Text('Pindah Halaman Kedua'),
              onPressed : (){

                Navigator.pushReplacementNamed(context, HalamanKedua.routeName);
              },
            ),
            RaisedButton(
              child : Text('Pindah Halaman Ketiga'),
              onPressed : (){

                Navigator.pushReplacementNamed(context, HalamanKetiga.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HalamanPertama extends StatelessWidget {
  static const String routeName = "/halamanPertama";
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar : AppBar(
        title : Text("Halaman Pertama"),
      ),
      body: Center(
        child : RaisedButton(
          child : Text('Kembali'),
          onPressed:(){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
  
class HalamanKedua extends StatelessWidget {
  static const String routeName = "/halamanKedua";
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar : AppBar(
        title : Text("Halaman Kedua"),
      ),
      body: Center(
        child : RaisedButton(
          child : Text('Kembali'),
          onPressed:(){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class HalamanKetiga extends StatelessWidget {
  static const String routeName = "/halamanKetiga";
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar : AppBar(
        title : Text("Halaman Ketiga"),
      ),
      body: Center(
        child : RaisedButton(
          child : Text('Kembali'),
          onPressed:(){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
