// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_16/model/itme.dart';

class DDart extends StatefulWidget {
  Itme pro;
  DDart({super.key, required this.pro});

  @override
  State<DDart> createState() => _DDartState();
}

class _DDartState extends State<DDart> {
  bool fahad = true;
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
                        child: Text(
                          "8",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "\$ 13",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.amber,
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.pro.imgePath),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                    color: Colors.amber,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "NEW",
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    )),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.amber,
                      ),
                    ]),
                SizedBox(
                  width: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.edit_location,
                      size: 25,
                      color: Color.fromARGB(255, 78, 78, 180),
                    ),
                    Text("fahad",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 188, 148, 118)))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text("\$ ${widget.pro.bb}", style: TextStyle(fontSize: 44)),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: double.infinity,
                child: Text(
                  ":" "لمحة عن المنتج",
                  textAlign: TextAlign.right,
                )),
            Text(
              "يمكنك شحن بطاقة سوا من خلال عدة طُرق : 1- اضغط * 155*← متبوعا برقم بطاقة الشحن الخاصة بك← ثم اضغط # ثم اتصال. 2- الاتصال على 1500 اختر إعادة الشحن من القائمة، ثم أدخل رقم رمز بطاقة الشحن.",
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 20),
              overflow: TextOverflow.fade,
              maxLines: fahad ? 2 : null,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    fahad = !fahad;
                  });
                },
                child: Text(
                  fahad ? "للمزيد" : "اقل",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
