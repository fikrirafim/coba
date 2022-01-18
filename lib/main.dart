import 'package:flutter/material.dart';
import 'package:m_manage/login.dart';
import 'package:m_manage/swiper.dart';

void main() {
  runApp(Mmanage());
}

class Mmanage extends StatelessWidget {
  const Mmanage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
