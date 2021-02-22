import 'package:flutter/material.dart';

class AssetsExample extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Image.asset(
            'assets/f1.png',
            scale: 10,
          ),
          Image.asset('assets/f2.png'),
          Image.asset(
            'assets/f3.jpg',
            scale: 10,
          ),
        ],
      ),
    );
  }
}
