// ignore_for_file: avoid_print

import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'transformer.dart';

class Bloc with Validator {
  final _fullName = BehaviorSubject<String>();
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<String> get fullName => _fullName.stream.transform(validateFullName);
  Stream<bool> get validSubmit =>
      Rx.combineLatest3(_fullName, _email, _password, (x, y, z) => true);

  Function(String) get changeFullName => _fullName.sink.add;
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  submit() {
    final submitName = _fullName.value;
    final submitEmail = _email.value;
    final submitPassword = _password.value;

    print('full name is $submitName');
    print('email is $submitEmail');
    print('password is $submitPassword');
  }

  dispose() {
    _fullName.close();
    _email.close();
    _password.close();
  }
}

final bloc = Bloc();
