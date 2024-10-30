import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/blocs/bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final bloc = Bloc();
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        // key: formKey,
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(10)),
            email(),
            Container(margin: const EdgeInsets.all(8)),
            password(),
            Container(margin: const EdgeInsets.all(20)),
            button(),
          ],
        ),
      ),
    );
  }

  Widget email() {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
              // validator: (value) {
              //   if (!value!.contains('@') || !value.contains('.com')) {
              //     return ('Input a valid email');
              //   }
              //   return null;
              // },
              // onSaved: (value) {
              //   saveEmail = value!;
              // },
              onChanged: bloc.changeEmail,
              decoration: InputDecoration(
                hintText: 'user@email.com',
                labelText: 'EMail Address',
                errorText: snapshot.error?.toString(),
                // errorText: 'input a valid EMail address',
                border: const OutlineInputBorder(),
                icon: const Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress);
        });
  }

  Widget password() {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              errorText: snapshot.error?.toString(),
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.lock),
            ),
            onChanged: bloc.changePassword,
            // validator: (value) {
            //   if (value!.length < 4) {
            //     return ('Password must be at least 4 characters!');
            //   }
            //   return null;
            // },
            // onSaved: (value) => savePassword = value!,
            obscureText: true,
          );
        });
  }

  Widget button() {
    return ElevatedButton(
      onPressed: () {
        // if (formKey.currentState!.validate()) {
        //   formKey.currentState!.save();
        // print('$saveEmail and $savePassword');
      },
      style: const ButtonStyle(
        iconColor: WidgetStatePropertyAll(
          Color.fromARGB(255, 6, 54, 94),
        ),
      ),
      child: const Text('Submit Here!'),
    );
  }
}
