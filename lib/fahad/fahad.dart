import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureProvider(
    
  create: (context) => Future.value(42),
  initialData: null,
  child: MyWidget(),
);


  }
}

Widget build(BuildContext context) {
  final value = context.watch<int>();
  return Text('$value');
}