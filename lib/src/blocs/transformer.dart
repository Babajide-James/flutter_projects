import 'dart:async';

mixin Validator {
  final validateFullName =
      StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.contains(' ')) {
      sink.add(value);
    } else {
      sink.addError('Input your correct details!');
    }
  });

  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.contains('@') && value.contains('.com')) {
      sink.add(value);
    } else {
      sink.addError('Input a valid email');
    }
  });
  final validatePassword =
      StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.length > 4) {
      sink.add(value);
    } else {
      sink.addError('password must be more than 4 characters');
    }
  });
}
