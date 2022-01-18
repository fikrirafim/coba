import 'package:flutter/material.dart';
import 'package:m_manage/mainpage.dart';
import 'package:m_manage/masukoganisasi.dart';
import 'package:m_manage/organisasi.dart';

//login Button masuk Main Page
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  bool _isObscure = true;
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      //Body
      //-------------------------------------------
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                "Welcome!",
                style: TextStyle(fontSize: 45),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                "Login To Continue",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //=======================================
            //Image
            //=======================================
            Image.asset(
              'assets/images/forlogin.png',
              height: 250,
            ),
            //=============================================
            //Input Email
            //======================================================
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(Icons.person),
                  labelText: "Username",
                  hintText: "Gunakan Akun Google",
                ),
              ),
            ),
            //============================================
            //password
            //=============================================
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                autofocus: false,
                obscureText: _isObscure,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Password",
                    hintText: "Masukan Password disini",
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30.0),
            ),
            //=========================================
            //Button Masuk
            //=======================================
            Container(
              width: 300,
              height: 50,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF6200EA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return organisasi();
                    }));
                  },
                  child: Text(
                    "M A S U K",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
