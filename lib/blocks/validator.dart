import 'dart:async';


class Validators {
  final validateEmail = StreamTransformer.fromHandlers(
      handleData: (String email, EventSink<String> sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError('Enter a valid email');
    }
  });

  final validatePassword = StreamTransformer.fromHandlers(
      handleData: (String pass, EventSink<String> sink) {
    if (pass.length > 3 ) {
      sink.add(pass);
    } else {
      sink.addError("Enter a valid Password");
    }
  });
}
