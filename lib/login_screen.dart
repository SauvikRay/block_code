import 'package:block_code/blocks/block.dart';
import 'package:block_code/blocks/provider.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(bloc),
          passwordField(bloc),
          const SizedBox(
            height: 10,
          ),
          submitButton(),
        ],
      ),
    );
  }
}

Widget emailField(Bloc bloc) {
  return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        var error = snapshot.error;
        return TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'my@example.com',
              labelText: 'Email Address',
              errorText: error?.toString(),
            ),
            onChanged: (value) {
              bloc.changeEmail(value);
            });
      });
}

Widget passwordField(Bloc bloc) {
  return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        var error = snapshot.error;

        return TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            errorText: error?.toString(),
          ),
          onChanged: (newPass) {
            bloc.changePassword(newPass);
          },
        );
      });
}

Widget submitButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.deepPurpleAccent,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      textStyle:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    onPressed: () {},
    child:const Text('Login'),
  );
}
