import 'dart:async';

import 'package:rxdart/rxdart.dart';

class LoginBloc {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();
  final _rememberMe = BehaviorSubject<bool>();

  // Getters
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get rememberMe => _rememberMe.stream;

  // Setters
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
  Function(bool) get changeRememberMe => _rememberMe.sink.add;

  // Validators
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError('Enter a valid email');
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length >= 6) {
      sink.add(password);
    } else {
      sink.addError('Password must be at least 6 characters long');
    }
  });

  void dispose() {
    _email.close();
    _password.close();
    _rememberMe.close();
  }
}
