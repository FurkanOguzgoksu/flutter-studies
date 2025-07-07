void main(){
  // Daire alanı
  final double pi = 3.14;
  var yaricap = 2;
  var alan = pi * yaricap * yaricap;
  print("Dairenin alanı: $alan");

  // F = m * a
  double m = 12.5;
  var a = 10.0;
  var f = m * a;
  print("F = $f");
  print("F = ${m*a}");

  // DeltaX
  double v = 12.7;
  double v0 = 23.56;
  double t = 3.5;
  double a1 = 3.2;

  double deltaX1 =  ( (v + v0) / 2) * t;
  print("DeltaX1 : $deltaX1");

  double deltaX2 = (v0 * t) + (a1 * t * t) / 2;
  print("DeltaX2 : $deltaX2");

  // Kısaltmalar
  int y = 10;
  print(y);

  y = y + 2;
  print(y);

  y += 2;
  print(y);

  y -= 3;
  print(y);

  y--;
  print(y);

  y *= 4;
  print(y);

  y++;
  print(y);

}