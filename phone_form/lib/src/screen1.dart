import 'package:flutter/material.dart';
import 'mixin/validator_mixin.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> with ValidatorMixin {
  final _globalKey = GlobalKey<FormState>();
  String inputName = ' ';
  String inputPassword = ' ';

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Login Here'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Form(
            key: _globalKey,
            child: Column(
              children: <Widget>[
                fullName(),
                Container(margin: const EdgeInsets.only(top: 10)),
                password(),
                Container(margin: const EdgeInsets.only(top: 10)),
                button(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget fullName() {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        hintText: 'Surname first',
        labelText: 'Full Name',
      ),
      validator: nameMixin,
      onSaved: (String? value) {
        inputName = value!;
      },
    );
  }

  Widget password() {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        labelText: 'Password',
      ),
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      validator: passwordMixin,
      onSaved: (String? value) {
        inputPassword = value!;
      },
    );
  }

  Widget button() {
    return ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 69, 141, 71),
        foregroundColor: const Color.fromARGB(255, 177, 9, 9),
      ),
      onPressed: () {
        if (_globalKey.currentState!.validate()) {
          _globalKey.currentState?.save();
          print('Your name is: $inputName, and password: $inputPassword');
        }
      },
      child: const Text('Submit'),
    );
  }
}
