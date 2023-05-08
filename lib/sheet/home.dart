// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_16/model/App.dart';
import 'package:flutter_application_16/sheet/shetout.dart';

import 'package:provider/provider.dart';

import '../Providers/card.dart';
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
    final classInstancee = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [App()],
        backgroundColor: Colors.amber,
        title: Text(classInstancee.dd),
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
                      classInstancee.agg(itme[index]);
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
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bc.jpg"), fit: BoxFit.cover),
                  ),
                  currentAccountPicture: CircleAvatar(
                      radius: 55, backgroundImage: AssetImage("assets/bc.jpg")),
                  accountEmail: Text("ali@yahoo.com"),
                  accountName: Text("ali Hassan",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                ),
                ListTile(
                    title: Text("الرئيسية"),
                    leading: Icon(Icons.home),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => shetout(),
                        ),
                      );
                    }),
                ListTile(
                    title: Text("سلة المشتريات"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    }),
                ListTile(
                    title: Text("عن المتجر"),
                    leading: Icon(Icons.help_center),
                    onTap: () {}),
                ListTile(
                    title: Text("تسجيل الخروج"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () async {
                      await FirebaseAuth.instance.signOut();
                    }),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Text("Developed by Ali Hassan © 2022",
                  style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}
