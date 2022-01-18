import 'package:flutter/material.dart';
import 'package:m_manage/login.dart';
import 'package:m_manage/register.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          //=============================================
          //swiper page 1
          //===========================================
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Colors.purple, Colors.deepPurple])),
            child: Column(children: [
              SizedBox(
                height: 200,
              ),
              Image.asset(
                'assets/images/forswipper.png',
                height: 200,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 170, 20, 20),
                child: Text(
                  "xxxxxxxxxxxxxxx",
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.justify,
                ),
              )
            ]),
          ),
          //===========================================
          //swipper page 2
          //===========================================
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: <Color>[Colors.purple, Colors.deepPurple])),
            child: Column(
              children: [
                SizedBox(
                  height: 500,
                ),
                //=============================================
                //Login Button
                //================================================
                Container(
                  width: 250,
                  height: 45,
                  child: TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      },
                      child: Text("Masuk M-Manage",
                          style: TextStyle(
                            color: Colors.blue[600],
                          ))),
                ),
                //===============================
                //ragistrasi akun
                //====================================
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  height: 45,
                  child: TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Registrasi();
                        }));
                      },
                      child: Text(
                        "Belum Punya Akun?",
                        style: TextStyle(color: Colors.blue[600]),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
