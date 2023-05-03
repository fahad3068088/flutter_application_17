import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_16/Providers/card.dart';
import 'package:flutter_application_16/model/App.dart';
import 'package:provider/provider.dart';

import '../const/color.dart';
import '../model/itme.dart';

class shetout extends StatefulWidget {
  const shetout({super.key});

  @override
  State<shetout> createState() => _shetoutState();
}

class _shetoutState extends State<shetout> {
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BTNgreen,
        title: const Text("shetout"),
        actions: [App()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 300,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: classInstancee.stcle.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        subtitle: Text("${classInstancee.stcle[index].bb}"),
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(classInstancee.stcle[index].imgePath),
                        ),
                        title: Text(classInstancee.stcle[index].nema),
                        trailing: IconButton(
                            onPressed: () {
                              classInstancee.delet(classInstancee.stcle[index]);
                            }, icon: Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "شراء:\$ ${classInstancee.price}",
              style: TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
