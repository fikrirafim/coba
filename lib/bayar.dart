import 'package:flutter/material.dart';
import 'package:m_manage/berhasil.dart';
import 'package:m_manage/saldo.dart';

class BayarPage extends StatefulWidget {
  const BayarPage({Key? key}) : super(key: key);

  @override
  _BayarPageState createState() => _BayarPageState();
}

class _BayarPageState extends State<BayarPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //==================================================
      //appbar
      //==================================================
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.purple,
      ),
      //===================================================
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Text(
              "Rp.",
              style: TextStyle(color: Colors.grey),
            ),
            //=========================================
            //tampil nominal
            //=========================================
            Text(
              controller.text,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            //========================================
            //Textfield
            //=======================================
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(Icons.money),
                    labelText: "bayar",
                    hintText: "Bayar Di Sini"),
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
            ),
            //=============================================
            //button bayar
            //============================================
            Container(
              height: 60,
              width: 300,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () {
                    //=========================================
                    //show dialog option
                    //=========================================
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            title: Text("Success"),
                            content: Text("Selamat pembayaran telah berhasil!"),
                            actions: [
                              Center(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 250,
                                      //==================================
                                      //lihat saldo
                                      //=====================================
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor:
                                                  Colors.deepPurple),
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return SaldoPage();
                                            }));
                                          },
                                          child: Text(
                                            "Lihat Saldo",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                    //===================================
                                    //bayar lagi
                                    //======================================
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 250,
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor:
                                                  Colors.deepPurple),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "Bayar Lagi",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          );
                        });
                  },
                  child: Text(
                    "Bayar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  )),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
