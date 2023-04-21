// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_16/sheet/scinUP.dart';


import '../const/color.dart';
import '../const/conss.dart';

// ignore: camel_case_types
class loggn extends StatelessWidget {
  const loggn({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: appbarGreen,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(children: [
          Text(
            "datتتتتتa",
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
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              " دخول",
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
                    MaterialPageRoute(builder: (context) => const scinUP()),
                  );
                },
                child: Text('تسجيل حساب ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 220, 36, 36), fontSize: 22)),
              ),
              Text(' ليس لديك حساب؟',
                  style: TextStyle(color: Colors.black, fontSize: 22)),
            ],
          )
        ]),
      ),
    );
  }
}
