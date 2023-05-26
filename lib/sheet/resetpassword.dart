import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_16/sheet/error.dart';
import 'package:flutter_application_16/sheet/logn.dart';

import '../const/conss.dart';

class resetpassword extends StatefulWidget {
  const resetpassword({super.key});

  @override
  State<resetpassword> createState() => _resetpasswordState();
}

class _resetpasswordState extends State<resetpassword> {
  final myController = TextEditingController();
  final fff = GlobalKey<FormState>();
  bool clk = false;
  asdf() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.red),
          );
        });
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: myController.text);
      if (!mounted) return;
      Navigator.pop(context);
      showSnackBar(context,
          "تم ارسال رسالة الى الايميل ارجو الدخول على البريد وتغيير كلمة المرور");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loggn()),
      );
    } catch (e) {
      showSnackBar(context, "${e}");
    }
  }

  void dispose() {
    // TODO: implement dispose
    myController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[600],
        title: const Center(
            child: Text(
          " تغيير كلمة المرور",
          style: TextStyle(fontSize: 26, color: Colors.black),
        )),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: fff,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "ادخل كلمة المرور الجديدة",
                  style: TextStyle(fontSize: 26, color: Colors.black),
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
                      labelText: 'Enter your emil',
                      suffixIcon: Icon(Icons.email, color: Colors.black),
                      hintText: "Enter Your emil : "),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (fff.currentState!.validate()) {
                      asdf();
                    } else {
                      showSnackBar(context, "خطاء في الايميل");
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                  child: clk
                      ? const CircularProgressIndicator(
                          color: Color.fromARGB(255, 236, 236, 236),
                        )
                      : const Text(
                          "تغيير",
                          style: TextStyle(fontSize: 19),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
