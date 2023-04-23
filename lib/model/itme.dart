class Itme {
  String nema;
  String oao;
  String imgePath;
  double bb;
  Itme(
      {required this.imgePath,
      required this.bb,
      required this.nema,
      required this.oao});
}

List itme = [
  Itme(imgePath: "assets/aaa.jpg", bb: 11.99, nema: "سوى", oao: "1"),
  Itme(imgePath: "assets/bbb.jpg", bb: 12.99, nema: "موبايلي", oao: "1"),
  Itme(imgePath: "assets/zzz.jpg", bb: 13.99, nema: "زين", oao: ""),
  Itme(imgePath: "assets/ggg.jpg", bb: 14.99, nema: "مايكروسفت", oao: "1"),
  Itme(imgePath: "assets/mmm.jpg",bb: 15.99,nema: "بلاي استيشن بلاس",oao: "1"),
  Itme(imgePath: "assets/stc.jpg", bb: 16.99, nema: "قوقل بلاي", oao: "1")
];
