import 'dart:async';

import '../blocks/validator.dart';

class Bloc extends Object with Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  

  //Retrive data from Stream
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  //Add Data to Stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  dispose() {
    _email.close();
    _password.close();
  }
}

final bloc = Bloc();
