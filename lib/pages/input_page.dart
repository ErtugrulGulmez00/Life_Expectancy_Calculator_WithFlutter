import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'myContainer.dart';



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
     String seciliCinsiyet='default';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: MyContainer(

                  child: Column(),
                ),
              ),
              Expanded(
                child: MyContainer(

                  child: Column(),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: MyContainer(

                  child: Column(),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: MyContainer(

                  child: Column(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){

                    setState(() {
                      seciliCinsiyet='KADIN';
                    });
                    print(seciliCinsiyet);


                  },
                  child:  MyContainer(
                    renk: seciliCinsiyet=='KADIN'?Colors.purple:Colors.white ,

                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 50,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'KADIN',
                          style: TextStyle(color: Colors.black54, fontSize: 30),
                        )
                      ],
                    ),
                  ),

                ),
              ),
               Expanded(
                child: GestureDetector(
                  onTap: (){

                    setState(() {
                      seciliCinsiyet='ERKEK';
                    });
                    print(seciliCinsiyet);
                  }
                  ,
                  child:  MyContainer(
                    renk: seciliCinsiyet=='ERKEK'?Colors.blue:Colors.white ,

                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 50,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('ERKEK',style: TextStyle(color: Colors.black54,fontSize: 30),)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


