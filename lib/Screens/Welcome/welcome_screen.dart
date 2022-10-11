import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/Screens/Welcome/components/background.dart';
import 'package:hmif_care_mobile/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundLanding(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              PageView(
                controller: _controller,
                children: [
                  Container(
                    height: size.height,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                          top: 70,
                          left: 20,
                          child: Image.asset(
                            "assets/images/logoHmif.png",
                            width: size.width *0.30,
                        )),
                        Column(
                          children: <Widget>[
                            SizedBox(height: size.height *0.20,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: Image.asset("assets/images/landing_saly2.png"),
                            ),
                            Container(
                              child: Text("When You Open This App")
                            ),
                            Container(
                              child: Text("You Will Able To")
                            ),
                            SizedBox(height: 20,),
                            Container(
                              margin: EdgeInsets.all(2),
                              width: size.width * 0.85,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10),),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0, 2.0),
                                  )
                                ],
                              ),
                              child: Center(child: Text("Checking Your Condition Mental Health")),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              margin: EdgeInsets.all(2),
                              width: size.width * 0.85,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10),),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0, 2.0),
                                  )
                                ],
                              ),
                              child: Center(child: Text("Consultation With Profesional",)),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              margin: EdgeInsets.all(2),
                              width: size.width * 0.85,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10),),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0, 2.0),
                                  )
                                ],
                              ),
                              child: Center(child: Text("Free Asking To Explore Yourself")),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                          top: 70,
                          left: 20,
                          child: Image.asset(
                            "assets/images/logoHmif.png",
                            width: size.width *0.30,
                        )),
                        Positioned(
                          top: 150,
                          left: 35,
                          child: Text(
                            "Roadmap of HMIF CARE",
                            style: TextStyle(
                              color: darkBrown,
                              fontSize: 16,
                            ),)
                          ),
                        Positioned(
                          top: size.height*0.28,
                          left: size.width*0.08,
                          child: Container(
                              margin: EdgeInsets.all(2),
                              width: size.width * 0.55,
                              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10),),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0, 2.0),
                                  )
                                ],
                              ),
                              child: Text("Fill the quiestionaire"),
                            ),
                        ),
                        Positioned(
                          top: size.height*0.38,
                          right: size.width*0.08,
                          child: Container(
                              margin: EdgeInsets.all(2),
                              width: size.width * 0.65,
                              padding: EdgeInsets.fromLTRB(40, 10, 10, 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10),),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0, 2.0),
                                  )
                                ],
                              ),
                              child: Text("Register Yourself in the form to have a consultation", textAlign: TextAlign.end,),
                            ),
                        ),
                        Positioned(
                          top: size.height*0.50,
                          left: size.width*0.08,
                          child: Container(
                              margin: EdgeInsets.all(2),
                              width: size.width * 0.65,
                              padding: EdgeInsets.fromLTRB(10, 10, 30, 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10),),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0, 2.0),
                                  )
                                ],
                              ),
                              child: Text("Choose Your preferable schedule to meet our profesional mentor",),
                            ),
                        ),
                        Positioned(
                          top: size.height*0.62,
                          left: size.width*0.08,
                          child: Container(
                              margin: EdgeInsets.all(2),
                              width: size.width * 0.35,
                              padding: EdgeInsets.fromLTRB(10, 10, 30, 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10),),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0, 2.0),
                                  )
                                ],
                              ),
                              child: Text("Do Your Consultation",),
                            ),
                        ),
                        Positioned(
                          bottom: size.height*0.16,
                          right: size.width*0.10,
                          child: Image.asset(
                            "assets/images/landing_women.png",
                        )),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                          top: size.height * 0.15,
                          child: Image.asset(
                            "assets/images/landing_saly.png",
                            width: size.width *0.45,
                            ),
                        ),
                        Positioned(
                          child: Image.asset(
                            "assets/images/logoHmif.png",
                            width: size.width *0.60,
                            ),
                        ),
                        Positioned(
                          top: size.height * 0.60,
                          child: Column(
                            children: <Widget>[
                              Text("Are You Ready To Know Yourself"),
                              Text("More Deeper")
                            ]
                            ),
                        ),
                        Positioned(
                          top: 580,
                          child: Container(
                            width: size.width * 0.9,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Get Started"),
                              style: ElevatedButton.styleFrom(
                                primary: darkBlue,
                                onPrimary: Colors.white,
                                padding: EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 40
                                ),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
              alignment: Alignment(0, 0.75),
              child: SmoothPageIndicator(
                controller: _controller, 
                count: 3,
                effect: SlideEffect(
                  dotWidth: 7,
                  dotHeight: 7,
                  dotColor: Colors.grey,
                  activeDotColor: darkBrown,
                  spacing: 20,
                  ),
                ),
            ),
            ],)
        )
      )
    );
  }

}