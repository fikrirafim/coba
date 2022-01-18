import 'package:flutter/material.dart';
import 'package:m_manage/admin.dart';
import 'package:m_manage/bendahara.dart';
import 'package:m_manage/masukoganisasi.dart';
import 'package:m_manage/member.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(50),
                width: double.infinity,
                height: 150,
                alignment: Alignment.bottomRight,
                color: Colors.lightBlue,
                child: Text("Drawer"),
              ),
              SizedBox(
                height: 50.0,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.home,
                ),
                title: Text("Home"),
              ),
              ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return OrganisasiTerdaftar();
                    }));
                  },
                  leading: Icon(Icons.people),
                  title: Text("Lihat Organisasi punyamu")),
            ],
          ),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            //=================================================
            //Container header
            //=================================================
            Container(
              height: 350,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: <Color>[Colors.deepPurple, Colors.purple]),
                borderRadius: BorderRadius.circular(15),
              ),
              //==============================================
              //Container Text
              //==============================================
            ),
            Padding(padding: const EdgeInsets.all(16)),
            //==================================================
            //Masuk Admin
            //==================================================
            Container(
              width: 300,
              height: 60,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                  ),
                  child: Text(
                    "Masuk Sebagai Admin",
                    style: TextStyle(
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
            //==================================================
            //Masuk Member
            //==================================================
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Container(
              width: 300,
              height: 60,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  child: Text(
                    "Masuk Sebagai Member",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MemberPage();
                    }));
                  }),
            ),
            //=======================================================
            //Masuk Bendahara
            //========================================================
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Container(
              width: 300,
              height: 60,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  child: Text(
                    "Masuk Sebagai Bendahara",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BendaharaPage();
                    }));
                  }),
            ),
          ],
        )));
  }
}
