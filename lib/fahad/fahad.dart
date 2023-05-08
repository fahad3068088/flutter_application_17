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
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              ElevatedButton(
  onPressed: () {
    // Validate returns true if the form is valid, or false otherwise.
    if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('الله')),
      );
    }else{
   ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('يوجد خطاء')), );   
    }

  },
  child: const Text('Submit'),
),


TextFormField(
  decoration: const InputDecoration(
    border: UnderlineInputBorder(),
    labelText: 'Enter your username',
  ),
),
            ],
          ),
        ));
  }
}
