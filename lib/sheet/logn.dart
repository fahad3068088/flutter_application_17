// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_16/sheet/home.dart';
import 'package:flutter_application_16/sheet/scinUP.dart';

import '../const/conss.dart';
import 'error.dart';
import 'resetpassword.dart';

// ignore: camel_case_types
class loggn extends StatefulWidget {
  const loggn({super.key});

  @override
  State<loggn> createState() => _loggnState();
}

class _loggnState extends State<loggn> {
  final myController = TextEditingController();

  final byController = TextEditingController();
  bool vbn = true;
  rre() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
              child: CircularProgressIndicator(
            color: Colors.black,
          ));
        });

    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: myController.text, password: byController.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showSnackBar(context, "اسم المستخدم غير مسجل");
        // print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        showSnackBar(context, "كلمة المرور خاطئة");
      } else {
        showSnackBar(context, "يبدو انه لايوجد نت ارجو المحاولة في وقت اخر");
      }
    }
    if (!context.mounted) return;
    Navigator.pop(context);
  }

  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    byController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[600],
        title: Center(child: Text("تسجيل الدخول",
        style: TextStyle(fontSize: 26,color: Colors.black),)),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // ignore: prefer_const_literals_to_create_immutables
        child: SingleChildScrollView(
          child: Column(
            
            children: [
            Text(
              "صفحة تسجيل الدخول",
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 64,
            ),
            TextField(
              controller: myController,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: aaa.copyWith(
                hintText: "Enter Your emil : ",
                suffixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            TextField(
              controller: byController,
              keyboardType: TextInputType.emailAddress,
              obscureText: vbn ? true : false,
              decoration: aaa.copyWith(
                hintText: "Enter Your paSsbord : ",
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      vbn = !vbn;
                    });
                  },
                  icon: vbn ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                ),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            ElevatedButton(
              onPressed: () async {
                await rre();
                if (!mounted) return;
              },
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
            TextButton(
              onPressed:(){
                 Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  resetpassword()),
                        );
              } , 
              child: Text("نسيت كلمة المرور" ,style: 
              TextStyle(fontSize: 20,decoration: TextDecoration.underline))),
        
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
                      MaterialPageRoute(builder: (context) => scinUP()),
                    );
                  },
                  child: Text('تسجيل حساب ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 220, 36, 36), fontSize: 22,decoration: TextDecoration.underline)),
                ),
                Text(' ليس لديك حساب؟',
                    style: TextStyle(color: Colors.black, fontSize: 22)),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
