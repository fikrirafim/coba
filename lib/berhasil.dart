import 'package:flutter/material.dart';
import 'package:m_manage/bayar.dart';
import 'package:m_manage/saldo.dart';

class BayarBerhasil extends StatelessWidget {
  const BayarBerhasil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(""), backgroundColor: Colors.purple[700]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pembayaran berhasil",
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BayarPage();
                    }));
                  },
                  child: Text("Bayar Lagi")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SaldoPage();
                    }));
                  },
                  child: Text("Lihat Saldo"))
            ],
          ),
        ));
  }
}
