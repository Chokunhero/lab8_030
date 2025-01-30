import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lab8_030/pages/home.dart';
import 'package:lab8_030/pages/mainfoodpage.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("โปรไฟล์"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // จัดตำแหน่งในแนวตั้ง
          crossAxisAlignment: CrossAxisAlignment.center, // จัดตำแหน่งในแนวนอน
          children: [
            Image.network(FirebaseAuth.instance.currentUser!.photoURL!),
            Text(FirebaseAuth.instance.currentUser!.displayName!),
            Text(FirebaseAuth.instance.currentUser!.email!),
            Text(FirebaseAuth.instance.currentUser!.metadata.lastSignInTime!
                .toString()),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mainfoodpage(),
                      ));
                },
                child: Text("ไปหน้าเมณู"))
          ],
        ),
      ),
    );
  }
}
