import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/pages/News/Components/background.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NewsBackground(
          child: CustomScrollView(
            reverse: true,
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 287),
                      width: 400,
                      height: 480,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column()
                            ),
                          Expanded(
                            flex: 8,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 50),
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. A suspendisse fringilla egestas lorem nec purus. Ut nulla augue vel blandit.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 22),
                                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 16,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 21),
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Container(
                                    child: Image.asset("assets/images/home_btn.png"),
                                    width: 9,
                                  ),
                                )
                              ]
                            )
                          ),
                          Expanded(
                            flex: 1,
                            child: Column()
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}