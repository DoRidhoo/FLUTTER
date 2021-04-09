import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('M. Ridho Hanafi - Kelas'),
      ),
      body: ListView(children: <Widget>[
        Center(
            child: Text('Data Mahasiswa',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        DataTable(
          columns: [
            DataColumn(label: Text('NIRM')),
            DataColumn(label: Text('Nama Mahasiswa')),
            DataColumn(label: Text('Jurusan')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('2018020346')),
              DataCell(Text('M. Ridho Hanafi')),
              DataCell(Text('Sistem Informasi')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018020384')),
              DataCell(Text('Dwika Andriawan')),
              DataCell(Text('Sistem Informasi')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018020267')),
              DataCell(Text('Legiandi Lubis')),
              DataCell(Text('Sistem Informasi')),
            ]),
          ],
        ),
      ]),
    );
  }
}