import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:m_manage/bayar.dart';
import 'package:m_manage/masukoganisasi.dart';
import 'package:m_manage/organisasi.dart';
import 'package:m_manage/saldo.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(100),
              width: double.infinity,
              height: 200,
              alignment: Alignment.bottomRight,
              color: Colors.deepPurple,
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return OrganisasiTerdaftar();
                }));
              },
              title: Text(
                "Lihat Organisasi Terdaftar",
                style: TextStyle(color: Colors.grey[600]),
              ),
              leading: Icon(Icons.people),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Lihat Profil Organisasi",
                style: TextStyle(color: Colors.grey[600]),
              ),
              leading: Icon(Icons.group),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //===========================================
            //header
            //===========================================
            Container(
              height: 500,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.deepPurple, Colors.purple]),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Image.asset(
                      'assets/images/admin.png',
                      width: 300,
                    ),
                  ),
                  Text("Admin Page",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                        "Selamat datang, Kamu sekarang adalah admin di organisasi ini. kamu bisa bayar saldo dan lihat saldo, kelola organisasi mu!",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            //==========================================
            //bayar
            //==========================================
            Container(
              width: 300,
              height: 50,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Text(
                    "Bayar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BayarPage();
                    }));
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            //=========================================
            //Lihat Saldo
            //=========================================
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
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
