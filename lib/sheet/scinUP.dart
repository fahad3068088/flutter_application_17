// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:email_validator/email_validator.dart';
import '../const/color.dart';
import '../const/conss.dart';
import 'logn.dart';

// ignore: camel_case_types
class scinUP extends StatefulWidget {
  const scinUP({super.key});

  @override
  State<scinUP> createState() => _scinUPState();
}

class _scinUPState extends State<scinUP> {
  final fff = GlobalKey<FormState>();
  final myController = TextEditingController();
  final byController = TextEditingController();
  bool clk = false;
  bool vbn = true;

  red() async {
    setState(() {
      clk = true;
    });
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: myController.text,
        password: byController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    setState(() {
      clk = false;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    byController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbarGreen,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // ignore: prefer_const_literals_to_create_immutables
        child: SingleChildScrollView(
          child: Form(
            key: fff,
            child: Column(children: [
              Text(
                "datنننننننa",
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 64,
              ),
              TextFormField(
                validator: (value) {
                  return value != null && !EmailValidator.validate(value)
                      ? "الايميل خطاء"
                      : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: myController,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: aaa.copyWith(
                   suffixIcon :Icon(Icons.email,color: Colors.black),
                  hintText: "Enter Your emil : "),
              ),
              const SizedBox(
                height: 33,
              ),
              TextFormField(
                validator: (value) {
                  return value!.length < 6
                      ? "كلمة السر لاتستوفسي الشروط"
                      : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: byController,
                keyboardType: TextInputType.emailAddress,
                obscureText: vbn?true:false,
                decoration: aaa.copyWith(
                  suffixIcon :IconButton(
                    onPressed: () {
                      setState(() {
                        vbn=!vbn;
                      });
                    },
                    icon:vbn? Icon(Icons. visibility_off):Icon(Icons. visibility),),
                  hintText: "Enter Your paSsbord : ",
                
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: aaa.copyWith(
                  suffixIcon :Icon(Icons.add_call,color: Colors.black),
                  hintText: "Enter Your mobail : "),
              ),
              const SizedBox(
                height: 33,
              ),
              ElevatedButton(
                onPressed: () {
                  if (fff.currentState!.validate()) {
                    red();
                  } else {
                    print("خطاء ما");
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
                child: clk
                    ? CircularProgressIndicator(
                        color: Color.fromARGB(255, 236, 236, 236),
                      )
                    : Text(
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
      ),
    );
  }
}
