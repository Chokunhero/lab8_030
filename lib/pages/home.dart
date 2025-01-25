import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:lab8_030/services/auth_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("lab8_030"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: GoogleAuthButton(
            onPressed: () {
              authService.signInWithGoogle().then(
                //ctrl+space for value {}
                (value) {
                  print(value);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
