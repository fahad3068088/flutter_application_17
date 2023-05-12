// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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




 bool ispassord8 =false;
changPassord(String passord){
  setState(() {
    if (passord.contains(RegExp(r'.{6,}'))){
      ispassord8 =true;
    }
  });


}



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
      backgroundColor: Colors.white,
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
                  return value!.contains(RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
                      ? null
                      : "الايميل غير صحيح";
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: myController,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: aaa.copyWith(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your username',
                    suffixIcon: Icon(Icons.email, color: Colors.black),
                    hintText: "Enter Your emil : "),
              ),
              const SizedBox(
                height: 33,
              ),
              TextFormField(
                onChanged: (passord) {
                  changPassord( passord);
                },
                validator: (value) {
                  return value!.contains(RegExp(r'(\w+)')) ? null : "hhhhhhhh";
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: byController,
                keyboardType: TextInputType.emailAddress,
                obscureText: vbn ? true : false,
                decoration: aaa.copyWith(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        vbn = !vbn;
                      });
                    },
                    icon: vbn
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  ),
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
                    suffixIcon: Icon(Icons.add_call, color: Colors.black),
                    hintText: "Enter Your mobail : "),
              ),
              const SizedBox(
                height: 33,
              ),
              Row(children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      shape: BoxShape.circle,
                      color:ispassord8?Colors.green:  Colors.white,),
                  child: Icon(
                    Icons.check,
                    size: 15,
                    color:  Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text("عدد الخانات :8"),
              ]),
              SizedBox(
                height: 15,
              ),
              Row(children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      shape: BoxShape.circle,
                      color: Colors.white),
                  child: Icon(
                    Icons.check,
                    size: 15,
                    color:  Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text("عدد الخانات :6"),
              ]),
              SizedBox(
                height: 15,
              ),
              Row(children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      shape: BoxShape.circle,
                      color: Colors.white),
                  child: Icon(
                    Icons.check,
                    size: 15,
                    color:  Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text("عدد الخانات :6"),
              ]),
              SizedBox(
                height: 15,
              ),
              Row(children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      shape: BoxShape.circle,
                      color: Colors.white),
                  child: Icon(
                    Icons.check,
                    size: 15,
                    color:  Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text("عدد الخانات :6"),
              ]),
              SizedBox(
                height: 15,
              ),
              Row(children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 10, 9, 9)),
                      shape: BoxShape.circle,
                      color: Colors.white),
                  child: Icon(
                    Icons.check,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text("عدد الخانات :6"),
              ]),
              SizedBox(
                height: 15,
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
