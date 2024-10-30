import 'dart:async';

class Bloc {
  final _email = StreamController<String>();
  final _password = StreamController<String>();
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (String value, sink) {
    if (value.contains('@') || value.contains('.com')) {
      sink.add(value);
    }
    sink.addError('Input a valid email');
  });
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (String value, sink) {
    if (value.length > 4) {
      sink.add(value);
    }
    sink.addError(value);
  });
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
