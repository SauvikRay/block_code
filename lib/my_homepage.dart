import 'package:flutter/material.dart';

import 'login_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Bloc Practice'),),
      body:const LoginScreen(),
    );
  }
}
