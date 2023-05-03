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
  Itme(imgePath: "assets/bbb.jpg", bb: 12.50, nema: "موبايلي", oao: "1"),
  Itme(imgePath: "assets/zzz.jpg", bb: 13.50, nema: "زين", oao: ""),
  Itme(imgePath: "assets/ggg.jpg", bb: 14.50, nema: "مايكروسفت", oao: "1"),
  Itme(imgePath: "assets/mmm.jpg",bb: 15.50,nema: "بلاي استيشن بلاس",oao: "1"),
  Itme(imgePath: "assets/stc.jpg", bb: 16.50, nema: "قوقل بلاي", oao: "1")
];
