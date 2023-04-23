import 'package:flutter/material.dart';

import '../model/itme.dart';

class Cart with ChangeNotifier {
  List stcle = [];

  String dd = "1111111111";

    double price=0;


  agg(Itme protect) {

  stcle.add(protect);
   
   price+=protect.bb;
  notifyListeners();
  //  fyLis
  }
}
