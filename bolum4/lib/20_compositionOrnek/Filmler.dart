import 'package:bolum4/20_compositionOrnek/Kategoriler.dart';
import 'package:bolum4/20_compositionOrnek/Yonetmenler.dart';

class Filmler{
  int film_id;
  String film_ad;
  int film_yili;
  Kategoriler kategorim;
  Yonetmenler yonetmenim;

  Filmler(this.film_id, this.film_ad, this.film_yili, this.kategorim,this.yonetmenim);
}