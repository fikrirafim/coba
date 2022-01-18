import 'package:flutter/material.dart';
import 'package:m_manage/bayar.dart';
import 'package:m_manage/berhasil.dart';
import 'package:m_manage/saldo.dart';

class MemberPage extends StatelessWidget {
  const MemberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            //===============================================
            //header
            //===============================================
            Container(
              height: 500,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[Colors.deepPurple, Colors.purple]),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Image.asset(
                      'assets/images/member.png',
                      width: 500,
                    ),
                  ),
                  Text(
                    "Member Page",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 30, 0),
                      child: Text(
                        "Selamat datang di organisasi ini, Kamu bisa bayar uang kas kapan aja dimana aja kok!",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //===================================================
            //bayar
            //==================================================
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
                  )),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            //==============================================
            //Lihat Saldo
            //================================================
            Container(
              height: 50,
              width: 300,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SaldoPage();
                    }));
                  },
                  child: Text(
                    "Lihat Saldo",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
