import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'myContainer.dart';



class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
     String seciliCinsiyet='default';
     double sigarasayisi=15.0;
     late Color sigarasayirengi;


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
            Row(
            children: [
              Expanded(
                child: MyContainer(

                  child: Column(
                    children: [
                       Text('Günde kaç adet sigara tüketiyorsunuz ?',style: TextStyle(color: Colors.lightBlue, fontSize: 20),),

                      Text(sigarasayisi.round().toString(),style:  TextStyle(color: Colors.blue, fontSize: 20),),
                      Slider(
                        min: 0,
                        max: 30,
                        value: sigarasayisi,
                        onChanged: (double newValue){
                          setState(() {
                            sigarasayisi=newValue;
                          });
                        },
                      )

                    ],
                  ),
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





