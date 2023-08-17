import 'package:flutter/material.dart';
import 'package:yasam_suresi_hesaplama/pages/user_data.dart';
import 'calculation.dart';

class ResultPage extends StatelessWidget {

  final UserData _userData;
  const ResultPage(this._userData, {super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text('SONUÇ SAYFASI')),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Expanded( flex: 8,
              child: Center(child: Text(Hesaplama(_userData).hesaplama().round().toString(),style: const TextStyle(
                fontSize: 170,
              ),))),
          Expanded( flex: 1,

            child: ElevatedButton(

            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
            onPressed: () {
              Navigator.pop(context);
            } , child: const Text('Tekrar Hesapla',style: TextStyle(
            color: Colors.black,
          ),
          ),
          ),
          ),
      ]),
    );
  }
}
