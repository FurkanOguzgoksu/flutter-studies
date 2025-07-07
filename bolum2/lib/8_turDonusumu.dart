void main(){

  // Sayısaldan -> Sayısala
  int i = 4;
  double d = 4.56;
  int sonuc1 = d.toInt();
  double sonuc2 = i.toDouble();
  print(sonuc1);
  print(sonuc2);

  // Sayısaldan -> Metine
  String str1 = i.toString();
  String str2 = d.toString();
  print(str1);
  print(str2);

  // Metinden -> Sayısala
  String yazi1 = "34";
  String yazi2 = "34.5";
  int s1 = int.parse(yazi1);
  double s2 = double.parse(yazi2);
  print(s1);
  print(s2);
}