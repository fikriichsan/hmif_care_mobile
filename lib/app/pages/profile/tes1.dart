import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF072768),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
        // child: SingleChildScrollView(
        //   child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                // margin: const EdgeInsets.only(top: 500)
                // height: MediaQuery.of(context).padding.bottom,
                child: Stack(
                  children: [
                   Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsetsDirectional.only(top: 15),
                              child: 
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 470,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x3600000F),
                                      offset: Offset(0, -1),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                            ),
                        ],
                      ),
                      Align(
                          alignment: const AlignmentDirectional(0.0, -0.3),
                            child:Stack(
                              children: [
                                Container(
                                width: 300,
                                height: 150,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x3600000F),
                                      offset: Offset(0, -1),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      child: const Text('Bambang Susatyo',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ) 
                                ),
                              ],
                            ) 
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                            radius: 70,
                            backgroundImage:
                                AssetImage('assets/image/pic-kuis.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                        
                 ),
                ],
              ),
            ),
           ),
         );
      
                  //       constraints: const BoxConstraints.expand(
                  //         height: 500,
                  //       ),
                  //       decoration: const BoxDecoration(
                  //         color: Colors.white,
                  //         boxShadow: [
                  //           BoxShadow(
                  //             blurRadius: 4,
                  //             color: Color(0x3600000F),
                  //             offset: Offset(0, -1),
                  //           )
                  //         ],
                  //         borderRadius: BorderRadius.only(
                  //           bottomLeft: Radius.circular(0),
                  //           bottomRight: Radius.circular(0),
                  //           topLeft: Radius.circular(30),
                  //           topRight: Radius.circular(30),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  //   Padding(
                  //     padding: const EdgeInsets.only(top: 50),
                  //     child: 
                  //     Container(
                  //       constraints: const BoxConstraints.expand(
                  //         height: 50,
                  //       ),
                  //       decoration: const BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.only(
                  //           bottomLeft: Radius.circular(20),
                  //           bottomRight: Radius.circular(20),
                  //           topLeft: Radius.circular(20),
                  //           topRight: Radius.circular(20)
                  //         ),
                  //       ) ,
                  //     ),
                  //   ),
                  //   Align(
                  //     alignment: Alignment.center,
                  //     child: Column(
                  //       children: const [
                  //         CircleAvatar(
                  //           radius: 70,
                  //           backgroundImage:
                  //               AssetImage('assets/image/pic-kuis.png'),
                  //         ),
                  //         Text(
                  //           'Bambang Susatyo',
                  //           style: TextStyle(
                  //               fontSize: 18.0,
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.bold),
                  //         ),
                  //       ],
                  //     ),
                  //   )
                  // ],
               
      //       ],
      //     ),
      //   ],
      //   ),
      // )
      // );

  }
}
