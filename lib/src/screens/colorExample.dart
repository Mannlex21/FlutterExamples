import 'package:flutter/material.dart';

class ColorsExample extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          // color: Color(0xff1dd1fe),// 0xff + el color en hexadecimal
          color: Color.fromRGBO(29, 209, 254, 1), // r,g,b,opacity
          // color: Color.fromARGB(0xff, 0x1d, 0xd1, 0xfe),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
