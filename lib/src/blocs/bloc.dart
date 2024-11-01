import 'dart:async';
import 'transformer.dart';

class Bloc with Validator {
  final _email = StreamController<String>.broadcast();
  final _password = StreamController<String>.broadcast();

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
}

final bloc = Bloc();
