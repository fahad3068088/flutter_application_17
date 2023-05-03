// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_16/sheet/shetout.dart';

import 'package:provider/provider.dart';

import '../Providers/card.dart';
import '../sheet/DDarrt.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 24,
              child: Container(
                  child: Text(
                    "${classInstancee.stcle.length}",
                    style: const TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(211, 164, 255, 193),
                      shape: BoxShape.circle)),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => shetout(),
                  ),
                );
              },
              icon: const Icon(Icons.add_shopping_cart),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Text(
            "\$ ${classInstancee.price}",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
