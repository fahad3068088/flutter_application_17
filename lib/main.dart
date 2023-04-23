import 'package:flutter/material.dart';
import 'package:flutter_application_16/sheet/home.dart';

import 'package:provider/provider.dart';

import 'Providers/card.dart';

void main() {
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
        home: Home(),
      ),
    );
  }
}
