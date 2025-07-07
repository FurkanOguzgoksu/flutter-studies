void main(){
  int sayi1 = 60;
  int sayi2 = 50;

  int sayi3 = 70;
  int sayi4 = 80;
  
  print(sayi1 == sayi2);
  print(sayi1 != sayi2);
  print(sayi1 > sayi2);
  print(sayi1 < sayi2);
  print(sayi1 >= sayi2);
  print(sayi1 <= sayi2);
  
  print(sayi1 > sayi2 && sayi3 > sayi4);
  print(!(sayi1 > sayi2 && sayi3 > sayi4));
  print(sayi1 > sayi2 || sayi3 > sayi4);

}