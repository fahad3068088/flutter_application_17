import 'package:flutter/material.dart';
import 'package:flutter_application_16/sheet/home.dart';

class fahad extends StatefulWidget {
  const fahad({super.key});

  @override
  State<fahad> createState() => _fahadState();
}

class _fahadState extends State<fahad> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:TextFormField(
  decoration: const InputDecoration(
    border: UnderlineInputBorder(),
    labelText: 'Enter your username',
  ),
) ,);
  }
}
