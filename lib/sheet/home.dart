// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:flutter_application_16/Providers/card.dart' ;

import '../model/itme.dart';
import 'DDarrt.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child: Container(
                        child: const Text(
                          "8",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  "\$ 13",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.amber,





        title: Consumer<Cart>(builder: ((context, classInstancee, child) {
          return Text("${classInstancee.dd}");
        })),



        
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 30),
          itemCount: itme.length,
          itemBuilder: (BuildContext context, int index) {
            return GridTile(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DDart(
                                pro: itme[index],
                              )),
                    );
                  },
                  child: Image.asset(itme[index].imgePath)),
              footer: GridTileBar(
                subtitle: Text(itme[index].nema,
                    style: const TextStyle(
                        fontSize: 22, color: Color.fromARGB(255, 214, 22, 22))),
                trailing: IconButton(
                    color: const Color.fromARGB(255, 62, 94, 70),
                    onPressed: () {
                      print("vc");
                    },
                    icon: const Icon(Icons.add)),

                leading: Text("\$ ${itme[index].bb}"),
//
                title: const Text(
                  "تتتتتتتتتت",
                ),
              ),
            );
          }),
    );
  }
}