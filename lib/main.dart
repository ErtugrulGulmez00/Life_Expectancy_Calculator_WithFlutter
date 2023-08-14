import 'package:flutter/material.dart';
import 'package:yasam_suresi_hesaplama/pages/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch:
          Colors.green,



          )
      ),
      home: InputPage(),
    );
  }
}
