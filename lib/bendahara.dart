import 'package:flutter/material.dart';
import 'package:m_manage/bayar.dart';
import 'package:m_manage/saldo.dart';
import 'package:m_manage/tariksaldo.dart';

class BendaharaPage extends StatelessWidget {
  const BendaharaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            //=================================================
            //header
            //=================================================
            Container(
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.deepPurple, Colors.purple]),
              ),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/bendahara.png'),
                  Text(
                    "Bendahara Page",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      "Kamu adalah Bendahara di organisasi ini, kamu bisa melakukan penarikan saldo organisasimu, gunakan dengan bijak!",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //================================================
            //bayar
            //================================================
            Container(
              height: 50,
              width: 300,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return BayarPage();
                  }));
                },
                child: Text(
                  "Bayar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //============================================
            //lihat saldo
            //============================================
            Container(
              width: 300,
              height: 50,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SaldoPage();
                    }));
                  },
                  child: Text(
                    "Lihat Saldo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 300,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TarikSaldo();
                    }));
                  },
                  child: Text(
                    "Tarik Uang",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
