import 'dart:js';

import 'package:block_code/blocks/block.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          EmailField(),
          PasswordField(),
          const SizedBox(
            height: 10,
          ),
          SubmitButton(),
        ],
      ),
    );
  }
}

Widget EmailField() {
  return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'my@example.com',
              labelText: 'Email Address',
          //    errorText: snapshot.error,
            ),
            onChanged: (value) {
              bloc.changeEmail(value);
            });
      });
}

Widget PasswordField() {
  return TextField(
    obscureText: true,
    decoration: InputDecoration(
      hintText: 'Password',
      labelText: 'Password',
    ),
  );
}

Widget SubmitButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.deepPurpleAccent,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    onPressed: () {},
    child: Text('Login'),
  );
}
