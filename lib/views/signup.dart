import 'package:femailauth/helper/auth_helper.dart';
import 'package:femailauth/views/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                obj.signUp(userEmail, password, context);
              },
              child: Text(
                "SignUp",
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginPage(),
                    ),
                  );
                },
                child: Text("Already created an account ? Login"))
          ],
        ),
      ),
    );
  }
}
