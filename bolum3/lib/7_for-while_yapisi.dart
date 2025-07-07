void main(){

  for(var i=3 ; i<6 ; i++){
    print("a: $i");
  }

  for(int x=10 ; x<=20 ; x+=5){
    print("b:  $x");
  }

  for(var y=20 ; y > 3 ; y-=2){
    print("c: $y");
  }

  int sayac = 1;
  while(sayac < 4){
    print("while --> $sayac");
    sayac++; //sayac +=1 veya sayac = sayac + 1
  }
}