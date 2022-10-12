
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
      appBar: AppBar(
        leading: const BackButton(
         color: Colors.white
          ),
          backgroundColor: Colors.transparent,
          title: Text("profile"),
        // centerTitle: true,
        ),
      backgroundColor: const Color(0XFF072768),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [

                /////////////////////////////
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Color(0XFF072768),
                  ),
                ),
                /////////////////////////////
                
                Padding(padding: const EdgeInsetsDirectional.fromSTEB(0, 230, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 450,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x5B000000),
                        offset: Offset(0, -2),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  // tulisan dlm box1
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /////////////////////////////
                      Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  
                  children: const [
                    Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                child: Text('Bambang Susatyo',
                                style: TextStyle( color: Colors.black),),
                  
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                child: Text('Bambang Susatyo',
                                style: TextStyle( color: Colors.black),),
                  
              ),
                  ],
                ),
              ), 
                    ],),
                  ),
                ),

              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child:Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 150, 0, 0),
                  child:
                  Container(
                          width: 300,
                          height: 140,
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
                            ),                    
                    ),
                  ),
              ), 
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 95, 0, 0),
                    child:
                    Column(
                      children: const[
                        CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/image/pic-kuis.png'),
                        ),
                      ],
                    ),
                  ),
              ),              

            ],),
          ],),
        ),
      );
  }
}
