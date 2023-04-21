// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


import '../const/color.dart';
import '../const/conss.dart';
import 'logn.dart';

// ignore: camel_case_types
class scinUP extends StatelessWidget {
  const scinUP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbarGreen,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // ignore: prefer_const_literals_to_create_immutables
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              "datنننننننa",
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 64,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: aaa.copyWith(hintText: "Enter Your emil : "),
            ),
            const SizedBox(
              height: 33,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: aaa.copyWith(hintText: "Enter Your paSsbord : "),
            ),
            const SizedBox(
              height: 33,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: aaa.copyWith(hintText: "Enter Your mobail : "),
            ),
            const SizedBox(
              height: 33,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: Text(
                "انضمام",
                style: TextStyle(fontSize: 19),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const loggn()),
                    );
                  },
                  child: Text('تسجيل الدخول ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 220, 36, 36),
                          fontSize: 22)),
                ),
                Text('  لديك حساب؟',
                    style: TextStyle(color: Colors.black, fontSize: 22)),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
