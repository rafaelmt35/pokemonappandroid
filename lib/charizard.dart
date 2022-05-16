import 'package:flutter/material.dart';
import 'package:pokemon_app/constants.dart';

class CharizardPage extends StatefulWidget {
  const CharizardPage({Key? key}) : super(key: key);

  @override
  State<CharizardPage> createState() => _CharizardPageState();
}

class _CharizardPageState extends State<CharizardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(top: 18.0),
          padding: EdgeInsets.only(top: 18.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('images/Logo.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.0),
                height: 40,
                width: 380,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new)),
                    Container(
                      padding: EdgeInsets.only(bottom: 5.0),
                      width: 171,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffEDEDED),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          backgroundColor: Color(0xffEDEDED),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7C7C7C),
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search pokemon',
                        ),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: 330,
                    height: 237,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 55.0,
                        ),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '#006',
                                  style: num,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  'Charizard',
                                  style: pokenameblack,
                                )
                              ]),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: 330,
                          height: 156,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 0.02), //(x,y)
                                  blurRadius: 0.2,
                                ),
                              ],
                              gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [Colors.white, Color(0xffF94848)]),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Container(
                      child: Image.asset(
                        'images/bigcharizard.png',
                        height: 177,
                        width: 193,
                        fit: BoxFit.fill,
                      ),
                    ),
                    left:70,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 40),
                height: 35,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 147,
                      height: 36,
                      decoration: BoxDecoration(
                          color: Color(0xffF2994A),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Fire',
                        style: type,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 147,
                      height: 36,
                      decoration: BoxDecoration(
                          color: Color(0xff2F80ED),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Flying',
                        style: type,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  decoration: BoxDecoration(
                      color: Color(0xffF8605F),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Height',
                                style: type,
                              ),
                              Text(
                                '1,7m',
                                style: desc,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Ability',
                                style: type,
                              ),
                              Text(
                                'Sea of Flames',
                                style: desc,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Sex',
                                style: type,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.female,
                                    color: Color(0xffFFE3E3),
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.male,
                                    color: Color(0xffFFE3E3),
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Category',
                                style: type,
                              ),
                              Text(
                                'Flame Pokémon',
                                style: desc,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Weight',
                                style: type,
                              ),
                              Text(
                                '90,5 kg',
                                style: desc,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '',
                              ),
                              Text(
                                '',
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

// Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Height',
//                               style: type,
//                             ),
//                             Text(
//                               '1,7m',
//                               style: desc,
//                             )
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Text(
//                               'Category',
//                               style: type,
//                             ),
//                             Text(
//                               'Flame Pokémon',
//                               style: desc,
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Column(
//                           children: [
//                             Text(
//                               'Ability',
//                               style: type,
//                             ),
//                             Text(
//                               'Sea of Flames',
//                               style: desc,
//                             )
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Text(
//                               'Weight',
//                               style: type,
//                             ),
//                             Text(
//                               '90,5 kg',
//                               style: desc,
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Column(
//                           children: [
//                             Text(
//                               'Sex',
//                               style: type,
//                             ),
//                             Row(
//                               children: [
//                                 Icon(Icons.female),
//                                 Icon(Icons.male)
//                               ],
//                             )
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Text(
//                               '',
//                             ),
//                             Text(
//                               '',
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ],
//                 ),