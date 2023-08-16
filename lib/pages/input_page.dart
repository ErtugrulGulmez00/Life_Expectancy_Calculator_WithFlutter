import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'myContainer.dart';


class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet = 'default';
  double sigarasayisi = 15.0;
  double sporgunu = 3.0;
  int boy = 170;
  int kilo=65;

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
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: MyContainer(
                  child: buildRowOutlinedButton(boy,),
                ),
              ),
              Expanded(
                child: MyContainer(
                  child: buildRowOutlinedButton(kilo,),

                ),
              ),
            ],
          ),

          Row(
            children: [
              Expanded(
                child: MyContainer(
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text(
                        'Haftada kaç gün spor yapıyorsunuz ?',
                        style: buildTextStyleForQuestion(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        sporgunu.round().toString(),
                        style: TextStyle(
                            color:
                            sporgunu == 0 ? Colors.red : Colors.lightBlue,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Slider(
                        min: 0,
                        max: 7,
                        divisions: 7,
                        value: sporgunu,
                        onChanged: (double newValue) {
                          setState(() {
                            sporgunu = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),


          Row(
            children: [

              Expanded(
                child: MyContainer(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text(
                        'Günde kaç adet sigara tüketiyorsunuz ?',
                        style: buildTextStyleForQuestion(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        sigarasayisi.round().toString(),
                        style: TextStyle(
                            color:
                                sigarasayisi >= 16 ? Colors.red : Colors.blue,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Slider(
                        min: 0,
                        max: 40,
                        value: sigarasayisi,
                        onChanged: (double newValue) {
                          setState(() {
                            sigarasayisi = newValue;
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
                  onTap: () {
                    setState(() {
                      seciliCinsiyet = 'KADIN';
                    });
                  },
                  child: MyContainer(
                    renk: seciliCinsiyet == 'KADIN'
                        ? Colors.purple
                        : Colors.white,
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
                  onTap: () {
                    setState(() {
                      seciliCinsiyet = 'ERKEK';
                    });
                  },
                  child: MyContainer(
                    renk:
                        seciliCinsiyet == 'ERKEK' ? Colors.blue : Colors.white,
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
                        Text(
                          'ERKEK',
                          style: TextStyle(color: Colors.black54, fontSize: 30),
                        )
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

  TextStyle buildTextStyleForQuestion() {
    return const TextStyle(

                          color: Colors.lightBlue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold);
  }

  Row buildRowOutlinedButton(label) {
    return Row(
                  children: [
                     Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            label==boy?'BOY':'KİLO',
                            style: const TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          label.toString(),
                          style: const TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    Column( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonTheme(

                          minWidth: 36,
                            child: OutlinedButton(

                              onPressed: () {
                                setState(() {
                                  label==boy? boy++:kilo++;
                                });
                              },
                              child: const Icon(FontAwesomeIcons.plus,size: 15,),

                            ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ButtonTheme(
                            minWidth: 36,
                            child: OutlinedButton(onPressed: () {
                              setState(() {
                                label==boy? boy--:kilo--;
                              });
                            }, child: const Icon(FontAwesomeIcons.minus,size: 15), )),
                      ],
                    ),
                  ],
                );
  }
}

