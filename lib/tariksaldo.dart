import 'package:flutter/material.dart';

class TarikSaldo extends StatefulWidget {
  const TarikSaldo({Key? key}) : super(key: key);

  @override
  _TarikSaldoState createState() => _TarikSaldoState();
}

class _TarikSaldoState extends State<TarikSaldo> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(""),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            //=======================================
            //tampil nominal
            //========================================
            Text(
              "Rp.",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              controller.text,
              style: TextStyle(fontSize: 30),
            ),
            //============================================
            //input nominal
            //============================================
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(Icons.money),
                    labelText: "Tarik",
                    hintText: "Tarik Uang Disini"),
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
            ),
            //========================================
            //tarik
            //========================================
            Container(
                height: 60,
                width: 300,
                child: TextButton(
                    child: Text(
                      "Tarik Sekarang",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Tunggu Persetujuan Admin ya..."),
                              content: Text(
                                "Admin setuju uang bakal masuk ke akun mu",
                                style: TextStyle(color: Colors.grey),
                              ),
                              actions: [
                                Container(
                                  height: 40,
                                  width: 250,
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.blue[700]),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Selanjutnya",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
                              ],
                            );
                          });
                    }))
          ],
        )));
  }
}
