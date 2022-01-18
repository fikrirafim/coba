import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:m_manage/daftarorganisasi.dart';
import 'package:m_manage/masukoganisasi.dart';

class organisasi extends StatelessWidget {
  const organisasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Image.asset(
              'assets/images/kumpul.png',
              height: 300,
            ),
            Text(
              "Udah Punya Organisasi?",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 50)),
            Container(
              width: 300,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF6200EA),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return OrganisasiTerdaftar();
                  }));
                },
                child: Text(
                  "Masuk Organisasi",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              width: 300,
              height: 50,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF6200EA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return DaftarOrganisasi();
                    }));
                  },
                  child: Text(
                    "Registrasi Organisasi",
                    style: TextStyle(
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
