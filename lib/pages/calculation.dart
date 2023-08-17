  import 'package:yasam_suresi_hesaplama/pages/user_data.dart';

class Hesaplama{
  UserData _userData;
  Hesaplama(this._userData);

  double hesaplama(){

    double sonuc;
    sonuc=70 + _userData.sporgunu - _userData.sigarasayisi;
    sonuc=sonuc + (_userData.boy/_userData.kilo);

   if(_userData.seciliCinsiyet=='KADIN') {
      return sonuc+3;

   }
   else
     {
       return sonuc;
     }
  }
  }