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
      HalamanKeempat.routeName : (context) => HalamanKeempat(),
      HalamanKelima.routeName  : (context) => HalamanKelima(),
      HalamanKeenam.routeName  : (context) => HalamanKeenam(),
    },
  ));
}

class Menu_Utama extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text ('Menu Utama ((UTS M. Ridho Hanafi 6SIA5))'),
        backgroundColor: Colors.deepOrange,
      ),
      body : Center(
        child : ListView(
            children:<Widget>[RaisedButton(
              child : Text ('Pindah Halaman Pertama'),
              color: Colors.blue,
              onPressed: (){

                Navigator.pushNamed(context, HalamanPertama.routeName);
              },
            ),
            RaisedButton(
              child : Text('Pindah Halaman Kedua'),
              color: Colors.yellow,
              onPressed : (){

                Navigator.pushReplacementNamed(context, HalamanKedua.routeName);
              },
            ),
            RaisedButton(
              child : Text('Pindah Halaman Ketiga'),
              color: Colors.blue,
              onPressed : (){

                Navigator.pushReplacementNamed(context, HalamanKetiga.routeName);
              },
            ),
            RaisedButton(
              child : Text('Pindah Halaman Keempat'),
              color: Colors.yellow,
              onPressed : (){

                Navigator.pushReplacementNamed(context, HalamanKeempat.routeName);
              },
            ),
            RaisedButton(
              child : Text('Pindah Halaman Kelima'),
              color: Colors.blue,
              onPressed : (){

                Navigator.pushReplacementNamed(context, HalamanKelima.routeName);
              },
            ),
            RaisedButton(
              child : Text('Pindah Halaman Keenam'),
              color: Colors.yellow,
              onPressed : (){

                Navigator.pushReplacementNamed(context, HalamanKeenam.routeName);
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
        backgroundColor: Colors.deepOrange,
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
        backgroundColor: Colors.deepOrange,
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
        backgroundColor: Colors.deepOrange,
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

class HalamanKeempat extends StatelessWidget {
  static const String routeName = "/halamanKeempat";
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar : AppBar(
        title : Text("Halaman Keempat"),
        backgroundColor: Colors.deepOrange,
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

class HalamanKelima extends StatelessWidget {
  static const String routeName = "/halamanKelima";
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar : AppBar(
        title : Text("Halaman Kelima"),
        backgroundColor: Colors.deepOrange,
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

class HalamanKeenam extends StatelessWidget {
  static const String routeName = "/halamanKeenam";
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar : AppBar(
        title : Text("Halaman Keenam"),
        backgroundColor: Colors.deepOrange,
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