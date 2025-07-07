import 'package:bolum4/23_ovverriding/Hayvan.dart';
import 'package:bolum4/23_ovverriding/Kedi.dart';
import 'package:bolum4/23_ovverriding/Kopek.dart';
import 'package:bolum4/23_ovverriding/Memeli.dart';

void main(){
  var hayvan = Hayvan();
  hayvan.sesCikar();

  var memeli = Memeli();
  memeli.sesCikar();

  var kedi = Kedi();
  kedi.sesCikar();

  var kopek = Kopek();
  kopek.sesCikar();
}