import 'package:flutter/material.dart';
import 'package:m_manage/admin.dart';
import 'package:m_manage/bendahara.dart';
import 'package:m_manage/masukoganisasi.dart';
import 'package:m_manage/member.dart';

class DaftarOrganisasi extends StatefulWidget {
  const DaftarOrganisasi({Key? key}) : super(key: key);

  @override
  _DaftarOrganisasiState createState() => _DaftarOrganisasiState();
}

class _DaftarOrganisasiState extends State<DaftarOrganisasi> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            //===========================================================
            //Image Reg
            //=====================================================
            Image.asset('assets/images/reg.png'),
            Text(
              "Masukan Identitas Organisasi",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Pastikan Kamu Mencantumkannya Dengan Benar",
              style: TextStyle(color: Colors.grey),
            ),
            //==================================================
            //Input Nama Orgagnisasi
            //===========================================================
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Icon(Icons.people),
                    labelText: "Nama Organisasi",
                    hintText: "Masukan Nama Organisasi dan kelompok mu!"),
              ),
            ),
            //===================================
            //Input Alamat
            //===========================================================
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(Icons.pin_drop),
                  labelText: "Alamat",
                  hintText: "Masukan Alamat Organisasi mu!",
                ),
              ),
            ),
            //=========================================
            //Input Password
            //====================================================
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 30),
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  hintText: "Password Mudah Di ingat",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
            ),
            //==============================================
            //Text Button
            //==============================================
            Container(
              width: 300,
              height: 50,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF6200EA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  child: Text(
                    "Registrasi",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AdminPage();
                    }));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
