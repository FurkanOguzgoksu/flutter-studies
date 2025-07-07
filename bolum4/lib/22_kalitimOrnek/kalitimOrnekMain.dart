import 'package:bolum4/22_kalitimOrnek/Saray.dart';
import 'package:bolum4/22_kalitimOrnek/Villa.dart';

void main(){
  var topkapiSarayi = Saray(10, 20);
  var bogazVilla = Villa(true, 20);

  print(topkapiSarayi.kuleSayisi);
  print(topkapiSarayi.pencereSayisi);

  print(bogazVilla.garajVarMI);
  print(bogazVilla.pencereSayisi);
}