import 'package:flutter/material.dart';
import 'package:m_manage/login.dart';
import 'package:m_manage/organisasi.dart';
import 'package:m_manage/swiper.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  _RegistrasiState createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  @override
  bool _isObscure = true;
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Registrasiin akun kamu",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.left,
            ),
          ),
          Image.asset(
            'assets/images/regaccount.png',
            height: 250,
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              child: Text(
                "Sudah punya akun?",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              )),
          //=========================================
          //input username
          //==========================================
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.person),
                labelText: "Username",
              ),
            ),
          ),
          //================================
          //password
          //====================================
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
            child: TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                  )),
            ),
          ),
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
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Registrasi Telah Berhasil"),
                          content: Text(
                            "Jelajahi M-Manage?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          actions: [
                            Container(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.blue[500]),
                                  onPressed: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return organisasi();
                                    }));
                                  },
                                  child: Text(
                                    "Iya",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.red),
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return IntroPage();
                                  }));
                                },
                                child: Text(
                                  "Ngga",
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        );
                      });
                },
                child: Text(
                  "Registrasi",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
