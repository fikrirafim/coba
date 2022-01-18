import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:m_manage/bayar.dart';

class SaldoPage extends StatefulWidget {
  const SaldoPage({Key? key}) : super(key: key);

  @override
  _SaldoPageState createState() => _SaldoPageState();
}

class _SaldoPageState extends State<SaldoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saldo Page"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[Colors.purple, Colors.deepPurple]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text("Saldo Organisasi:"),
            Text("Belum ada Data"),
            SizedBox(height: 50.0),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: DataTable(columns: <DataColumn>[
                DataColumn(label: Text("Bulan")),
                DataColumn(label: Text("Pemasukan Bulanan")),
                DataColumn(label: Text("Pengeluaran Bulanan"))
              ], rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  DataCell(Text("Belum AdaData")),
                  DataCell(Text("Belum ada data")),
                  DataCell(Text("Belum ada data"))
                ])
              ]),
            )
          ],
        ),
      ),
    );
  }
}
