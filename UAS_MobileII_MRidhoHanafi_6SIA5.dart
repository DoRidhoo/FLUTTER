import 'package:flutter/material.dart';

void main() => runApp(App13());

class App13 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'M. Ridho Hanafi (6SIA5)',
      home: Ridho6SIA5(),
    );
  }
}

class Ridho6SIA5 extends StatefulWidget {
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<Ridho6SIA5>
    with SingleTickerProviderStateMixin {
  TabController controller;
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        title: Text('UAS MobileII M. Ridho Hanafi (6SIA5)'),
        bottom: TabBar(controller: controller, tabs: <Tab>[
          Tab(text: "Data Table"),
          Tab(text: "Aritmatika"),
          
        ]),
      ),
      // body: TabBarView(),
      body: TabBarView(controller: controller, children: <Widget>[
        Mahasiswa(),
        Hitung(),
      
      ]),
      drawer: Menu(),
    );
  }
}

class DataMahasiswa {
  String nama;
  String kelas;
  String nirm;
  String prodi;

  DataMahasiswa({this.nama,this.kelas, this.nirm, this.prodi});
}

// class Mahasiswa
class Mahasiswa extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Mahasiswa> {
  //deklarasi variabel
  final txtnamamhs = TextEditingController();
  final txtkelas = TextEditingController();
  final txtnirm = TextEditingController();
  final txtprodi = TextEditingController();

  List<Widget> data = [];

  onTambah() {
    setState(() {
      data.add(ListTile(
        leading: Text(txtnamamhs.text),
        title: Text(txtkelas.text),
        subtitle: Text(txtnirm.text),
        trailing: Text(txtprodi.text),
      ));
      txtnamamhs.clear();
      txtkelas.clear();
      txtnirm.clear();
      txtprodi.clear();
    });
  }

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                controller: txtnamamhs,
                decoration: InputDecoration(hintText: 'Nama Mahasiswa'),
              ),
              TextField(
                controller: txtkelas,
                decoration: InputDecoration(hintText: 'Kelas'),
              ),
              TextField(
                controller: txtnirm,
                decoration: InputDecoration(hintText: 'NIRM'),
              ),
              TextField(
                controller: txtprodi,
                decoration: InputDecoration(hintText: 'Program Studi'),
              ),
              Divider(height: 10.0),
              ElevatedButton(child: Text("Tambah"), onPressed: onTambah),
            ],
          ),
        ),
        new Column(
          children: data,
        )
      ],
    );
  }
}

// class Menu
class Menu extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 50.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('M. Ridho Hanafi'),
              accountEmail: Text('mridhohanafi7@gmail.com'),
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Pemrograman Mobile II'),
              onTap: () {},
            ),
            Divider(height: 2.0),
            ListTile(
              leading: Icon(Icons.cast_for_education),
              title: Text('Sistem Informasi'),
              onTap: () {},
            ),
            Divider(height: 2.0),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('STMIK Triguna Dharma'),
              onTap: () {},
            ),
            Divider(height: 2.0),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Kembali'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}

class Hitung extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Hitung> {
  final txtharga = TextEditingController();
  final txtbeli = TextEditingController();

  String hasil = '';
  String bonus = '';

  // operasi aritmatika
  onHitung() {
    setState(() {
      var harga = int.parse(txtharga.text);
      var beli = int.parse(txtbeli.text);
      var bayar = harga * beli;
      hasil = bayar.toString();
      // penggunaan fungsi if
      if (bayar > 49999) {
        bonus = "Selamat anda mendapat bonus undian :)";
      }
    });
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: txtharga,
            decoration: new InputDecoration(
              labelText: "Input Harga Barang",
            ),
          ),
          TextField(
            controller: txtbeli,
            decoration: new InputDecoration(
              labelText: "Input Jumlah Beli",
            ),
          ),
          Divider(height: 10.0),
          ElevatedButton(
            child: Text("Hitung"),
            onPressed: onHitung,
          ),
          Text("Total Belanja = Rp. $hasil"),
          Text("$bonus"),
          Text(""),
          Text(""),
          Text("== Jika Anda Belanja dan Membayar Lebih dari Rp 50.000 Anda Mendapatkan Undian =="),
          Text(""),
          Text("Kasir : Ridho"),
          
        ],
      ),
    );
  }
}
