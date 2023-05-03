import 'package:flutter/material.dart';
import 'package:flutter_application_16/sheet/DDarrt.dart';
import 'package:flutter_application_16/sheet/home.dart';
import 'package:flutter_application_16/sheet/shetout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Providers/card.dart';
import 'fahad/fahad.dart';
import 'sheet/scinUP.dart';


 Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(const MyApp());
 }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: const MaterialApp(
        home: scinUP(),
      ),
    );
  }
}
