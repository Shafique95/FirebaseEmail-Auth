import 'package:femailauth/views/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helper/auth_helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emalil = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller: emalil,
              decoration: InputDecoration(),
            ),
            TextField(
              controller: pass,
              decoration: InputDecoration(),
            ),
            ElevatedButton(
              onPressed: () {
                final userEmail = emalil.text;
                final password = pass.text;
                var obj = AuthHelper();
                obj.signIn(userEmail, password, context);
              },
              child: Text(
                "Login",
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SignUp(),
                    ),
                  );
                },
                child: Text("Do not have  an account ? SignUp"))
          ],
        ),
      ),
    );
  }
}
