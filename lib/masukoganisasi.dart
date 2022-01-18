import 'package:flutter/material.dart';
import 'package:m_manage/admin.dart';
import 'package:m_manage/bendahara.dart';
import 'package:m_manage/daftarorganisasi.dart';
import 'package:m_manage/mainpage.dart';
import 'package:m_manage/organisasi.dart';

class OrganisasiTerdaftar extends StatefulWidget {
  const OrganisasiTerdaftar({Key? key}) : super(key: key);

  @override
  _OrganisasiTerdaftarState createState() => _OrganisasiTerdaftarState();
}

class _OrganisasiTerdaftarState extends State<OrganisasiTerdaftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Organisasi Yang Teradftar"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(children: <Widget>[
            //SizedBox(),
            //============================================
            //Card widget
            //============================================
            SizedBox(
              height: 30,
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AdminPage();
                  }));
                },
                child: Container(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 100, 0),
                      child: Column(
                        children: [
                          Text("Sample Organisasi 1"),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "Kamu terdaftar sebagai admin!",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      )),
                  width: 300,
                  height: 100,
                ),
              ),
              elevation: 6,
            ),
            SizedBox(
              height: 15,
            ),
            //=================================================
            //sample organisasi 2
            //================================================
            Card(
              elevation: 6,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BendaharaPage();
                  }));
                },
                child: Container(
                  width: 300,
                  height: 100,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 100, 0),
                      child: Column(
                        children: [
                          Text("Sample Organisasi 2"),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "Kamu terdaftar sebagai bendahara",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
            //================================================
            //floating button
            //===============================================
            SizedBox(
              height: 30,
            ),
            FloatingActionButton(
              backgroundColor: Colors.purple,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return DaftarOrganisasi();
                }));
              },
              child: Icon(Icons.add),
            )
          ]),
        ));
  }
}
