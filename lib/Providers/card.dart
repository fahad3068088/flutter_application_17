import 'package:flutter/material.dart';

import '../model/itme.dart';



class Cart with ChangeNotifier {
  List stcle = [];

  String dd = "1111111111";

    int price=0;


  agg(Itme protect) {

  stcle.add(protect);
   
   price+=protect.bb.round();
  notifyListeners();
  //  fyLis
  }
  delet(Itme protect){
stcle.remove(protect);
 price-=protect.bb.round();
notifyListeners();
  }
}
