import 'package:flutter/material.dart';
import 'package:pokemon_app/charizard.dart';
import 'package:pokemon_app/pokelist.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 18.0),
            padding: EdgeInsets.only(top: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset('images/Logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xffEDEDED),
                    ),
                    width: 335,
                    height: 40,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        backgroundColor: Color(0xffEDEDED),
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7C7C7C),
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search pokemon',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 15, 15),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                    itemCount: newPokemon.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CharizardPage()));
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 157,
                              height: 160,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 34,
                                  ),
                                  Container(
                                    width: 157,
                                    height: 126,
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
                                          colors: [
                                            Colors.white,
                                            Color(0xffF94848)
                                          ]),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 143,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              color: Color(0xff333333),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  newPokemon[index].num,
                                                  style: num,
                                                ),
                                                Text(
                                                  newPokemon[index].pokemonname,
                                                  style: pokename,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              child: Image.asset(newPokemon[index].imagename),
                              left: 31,
                              top: 10,
                            )
                          ],
                        ),
                      );
                    },
                    // child: Stack(
                    //   children: [
                    //     Container(
                    //         width: 157,
                    //         height: 160,
                    //         child: Column(
                    //           children: [
                    //             SizedBox(
                    //               height: 34,
                    //             ),
                    //             Container(
                    //               width: 157,
                    //               height: 126,
                    //               decoration: BoxDecoration(
                    //                 boxShadow: [
                    //                   BoxShadow(
                    //                     color: Colors.grey,
                    //                     offset: Offset(0.0, 0.02), //(x,y)
                    //                     blurRadius: 0.2,
                    //                   ),
                    //                 ],
                    //                 gradient: LinearGradient(
                    //                     begin: Alignment.centerLeft,
                    //                     end: Alignment.centerRight,
                    //                     colors: [
                    //                       Color(0xffFFFFFF),
                    //                       Color(0xffF94848)
                    //                     ]),
                    //                 borderRadius: BorderRadius.circular(20.0),
                    //               ),
                    //               child: Column(
                    //                 mainAxisAlignment: MainAxisAlignment.end,
                    //                 children: [
                    //                   Padding(
                    //                     padding: const EdgeInsets.all(8.0),
                    //                     child: Container(
                    //                       width: 143,
                    //                       height: 28,
                    //                       decoration: BoxDecoration(
                    //                         color: Color(0xff333333),
                    //                         borderRadius:
                    //                             BorderRadius.circular(10),
                    //                       ),
                    //                       child: Row(
                    //                         mainAxisAlignment:
                    //                             MainAxisAlignment.spaceAround,
                    //                         children: [
                    //                           Text(
                    //                             '#001',
                    //                             style: num,
                    //                           ),
                    //                           Text(
                    //                             'Bulbasaur',
                    //                             style: pokename,
                    //                           )
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //           ],
                    //         )),
                    //     Positioned(child: Image.asset('images/bulbasaur.png'),left: 31,top: 10,)
                    //   ],
                    // ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
