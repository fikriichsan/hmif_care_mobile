// import 'package:flutter/material.dart';

// import '../../components/background.dart';
// import '../../responsive.dart';
// import 'components/login_signup_btn.dart';
// import 'welcome1/welcome_kuisioner1.dart';

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Background(
//       child: SingleChildScrollView(
//         child: SafeArea(
//           child: Responsive(
//             desktop: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 const Expanded(
//                   child: WelcomeImage(),
//                 ),
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: const [
//                       SizedBox(
//                         width: 450,
//                         child: LoginAndSignupBtn(),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             mobile: const MobileWelcomeScreen(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MobileWelcomeScreen extends StatelessWidget {
//   const MobileWelcomeScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         const WelcomeImage(),
//         Row(
//           children: const [
//             Spacer(),
//             Expanded(
//               flex: 8,
//               child: LoginAndSignupBtn(),
//             ),
//             Spacer(),
//           ],
//         ),
//       ],
//     );
//   }
// }
// // import 'package:flutter/material.dart';

// // void main() => runApp(const Kuisioner());

// // class Kuisioner extends StatefulWidget {
// //   const Kuisioner({Key? key}) : super(key: key);

// //   @override
// //   State<Kuisioner> createState() => _KuisionerState();
// // }

// // class _KuisionerState extends State<Kuisioner> {
// //   var email = "";
// //   var password = "";

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Calibri'),
// //       title: "HMIF CARE",
// //       home: Scaffold(
// //         body: Center(
// //           child: SingleChildScrollView(
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Container(
// //                   alignment: Alignment.bottomLeft,
// //                   margin: const EdgeInsets.only(left:30, bottom: 10, top: 10),
// //                   child: Image.asset(
// //                     'assets/images/logo_hmifcare.png',
// //                     width: 100,
// //                     height: 100,
// //                   ),
// //                 ),
// //                 Container(
// //                   margin: const EdgeInsets.only(bottom: 10, top: 10),
// //                   child: Image.asset(
// //                     'assets/images/pic-kuis.png',
// //                     width: 170,
// //                     height: 170,
// //                   ),
// //                   padding: EdgeInsets.all(20),
// //                 ),
// //                 Container(
// //                   width: double.infinity,
// //                   margin: const EdgeInsets.symmetric(
// //                     vertical: 12,
// //                     horizontal: 20,
// //                   ),
// //                   child: const Text(
// //                     "Welcome HMIF CARE",
// //                     textAlign: TextAlign.center,
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.bold,
// //                       fontSize: 30,
// //                       fontFamily: 'Headline',
// //                       color: Color(0XFF9D785D)
// //                     ),
// //                   ),
// //                 ),
// //                 Container(
// //                   margin: const EdgeInsets.only(top: 30),
// //                   constraints: BoxConstraints(
// //                     maxHeight: 300,
// //                   ),
// //                   decoration: BoxDecoration(
// //                     color: Colors.white,
// //                     boxShadow: [
// //                       BoxShadow(
// //                         blurRadius: 4,
// //                         color: Color(0x3600000F),
// //                         offset: Offset(0, -1),
// //                       )
// //                     ],
// //                     borderRadius: BorderRadius.only(
// //                       bottomLeft: Radius.circular(0),
// //                       bottomRight: Radius.circular(0),
// //                       topLeft: Radius.circular(30),
// //                       topRight: Radius.circular(30),
// //                     ),
// //                   ),
// //                   padding: EdgeInsets.all(40),
// //                   child:
// //                   Column(
// //                   mainAxisSize: MainAxisSize.max,
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                       Padding(
// //                         padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
// //                         child: Row(
// //                         mainAxisSize: MainAxisSize.max,
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                             Expanded(
// //                             child: Text(
// //                         'Sebelum kalian explore lebih jauh untuk mengenal diri\n'
// //                             'Bantu kami untuk mengisi kuisioner ini, diakhir dari pengisian kuisioner, akan ada hasil diagnosis berdasarkan jawaban yang Anda berikan\n'
// //                             'Setelah mengisi kuisioner ini,\nAnda dapat mengakses fitur-fitur yang ada pada HMIF Care',
// //                         textAlign: TextAlign.center,
// //                         style: TextStyle(
// //                             fontWeight: FontWeight.w500,
// //                             fontSize: 14,
// //                             fontFamily: 'Headline',
// //                             letterSpacing: 1.0
// //                         ),
// //                       ),
// //                             ),
// //                       ],
// //                         ),
// //                       ),
// //                       Padding(
// //                       padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 32),
// //                       child: Row(
// //                       mainAxisSize: MainAxisSize.max,
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                       ElevatedButton(
// //                           style: ElevatedButton.styleFrom(
// //                             backgroundColor: Color(0xFF072768),
// //                             padding:
// //                             const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
// //                           ),
// //                           onPressed: () async {},
// //                           child: const Text(
// //                             'Isi Kuisioner',
// //                           ))
// //                     ],
// //                       ),
// //                       ),
                  
// //                 //   Column(
// //                 //     mainAxisSize: MainAxisSize.min,
// //                 //     children: <Widget>[
// //                 //       ElevatedButton(
// //                 //         // style: style,
// //                 //         onPressed: null,
// //                 //         child: const Text('Disabled'),
// //                 //       ),
// //                 //       const SizedBox(height: 30),
// //                 //       ElevatedButton(
// //                 //
// //                 //         onPressed: () {},
// //                 //         child: const Text('Enabled'),
// //                 //       ),
// //                 //     ],
// //                 //   ),
// //                 // ),
// //                 // Container(
// //                 //   // height: 55,
// //                 //   // width: double.infinity,
// //                 //   // margin: const EdgeInsets.symmetric(
// //                 //   //   horizontal: 14,
// //                 //   //   vertical: 28,
// //                 //   //     ),
// //                 //     // padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 32),
// //                 //     child:
// //                 //    
// //                 // ),

// //                 // Container(
// //                 //     height: 55,
// //                 //     width: double.infinity,
// //                 //     margin: const EdgeInsets.symmetric(
// //                 //       horizontal: 14,
// //                 //       vertical: 28,
// //                 //     ),
// //                 //     child: Builder(
// //                 //       builder: (context) => ElevatedButton(
// //                 //         style: ElevatedButton.styleFrom(
// //                 //           shape: RoundedRectangleBorder(
// //                 //               borderRadius: BorderRadius.circular(14)),
// //                 //         ),
// //                 //         onPressed: () {
// //                 //           FocusScope.of(context).unfocus();
// //                 //           if (email.isEmpty || password.isEmpty) {
// //                 //             const message = 'Input Data Please';
// //                 //             const snackBar = SnackBar(
// //                 //               content: Text(
// //                 //                 message,
// //                 //                 style: TextStyle(fontSize: 20),
// //                 //               ),
// //                 //               backgroundColor: Colors.red,
// //                 //             );
// //                 //             ScaffoldMessenger.of(context)
// //                 //                 .showSnackBar(snackBar);
// //                 //           } else {
// //                 //             final message =
// //                 //                 'Email: $email\nPassword: $password';
// //                 //             final snackBar = SnackBar(
// //                 //               content: Text(
// //                 //                 message,
// //                 //                 style: const TextStyle(fontSize: 20),
// //                 //               ),
// //                 //               backgroundColor: Colors.green,
// //                 //             );
// //                 //             ScaffoldMessenger.of(context)
// //                 //                 .showSnackBar(snackBar);
// //                 //           }
// //                 //         },
// //                 //         child: const Text(
// //                 //           "Masuk",
// //                 //           style: TextStyle(fontSize: 18),
// //                 //         ),
// //                 //       ),

// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     ))));
// //   }
// // }

// // // import 'package:flutter/material.dart';

// // // import 'package:get/get.dart';

// // // import '../controllers/home_controller.dart';

// // // class HomeView extends GetView<HomeController> {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         centerTitle: false,
// // //         title: RichText(
// // //           text: TextSpan(
// // //             text: "Hai, ",
// // //             style: TextStyle(
// // //               fontSize: 18,
// // //             ),
// // //             children: [
// // //               TextSpan(
// // //                 text: "Muhammad",
// // //                 style: TextStyle(
// // //                   fontSize: 18,
// // //                   fontWeight: FontWeight.bold,
// // //                 ),
// // //               )
// // //             ],
// // //           ),
// // //         ),
// // //         actions: [
// // //           GestureDetector(
// // //             onTap: () {},
// // //             child: Container(
// // //               margin: EdgeInsets.only(right: 20),
// // //               width: 30,
// // //               height: 30,
// // //               child: Image.asset(
// // //                 "assets/icons/qr.png",
// // //                 fit: BoxFit.contain,
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //         backgroundColor: Color(0xFFEC2028),
// // //         elevation: 0,
// // //       ),
// // //       body: Stack(
// // //         children: [
// // //           ClipPath(
// // //             clipper: ClipPathClass(),
// // //             child: Container(
// // //               height: 250,
// // //               width: Get.width,
// // //               color: Color(0xFFEC2028),
// // //             ),
// // //           ),
// // //           Container(
// // //             margin: EdgeInsets.only(top: 20),
// // //             child: Column(
// // //               children: [
// // //                 Column(
// // //                   children: [
// // //                     ClipPath(
// // //                       clipper: ClipInfoClass(),
// // //                       child: Container(
// // //                         padding: EdgeInsets.all(15),
// // //                         margin: EdgeInsets.symmetric(horizontal: 25),
// // //                         decoration: BoxDecoration(
// // //                           gradient: LinearGradient(
// // //                             colors: [
// // //                               Color(0xFFE52D27),
// // //                               Color(0xFFB31217),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                         child: Column(
// // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // //                           children: [
// // //                             Row(
// // //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                               children: [
// // //                                 Text(
// // //                                   "081290112333",
// // //                                   style: TextStyle(
// // //                                     color: Colors.white,
// // //                                     fontSize: 20,
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                                 Image.asset("assets/logo/simpati.png"),
// // //                               ],
// // //                             ),
// // //                             SizedBox(height: 20),
// // //                             Text(
// // //                               "Sisa Pulsa Anda",
// // //                               style: TextStyle(
// // //                                 color: Colors.white,
// // //                                 fontSize: 18,
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                             SizedBox(height: 10),
// // //                             Row(
// // //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                               children: [
// // //                                 Text(
// // //                                   "Rp34.000",
// // //                                   style: TextStyle(
// // //                                     color: Colors.white,
// // //                                     fontSize: 26,
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                                 ElevatedButton(
// // //                                   onPressed: () {},
// // //                                   child: Text(
// // //                                     "Isi Pulsa",
// // //                                     style: TextStyle(
// // //                                       color: Colors.black,
// // //                                       fontSize: 20,
// // //                                     ),
// // //                                   ),
// // //                                   style: ElevatedButton.styleFrom(
// // //                                     primary: Color(0xFFF7B731),
// // //                                   ),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                             SizedBox(height: 10),
// // //                             Divider(
// // //                               color: Colors.black,
// // //                             ),
// // //                             SizedBox(height: 10),
// // //                             RichText(
// // //                               text: TextSpan(
// // //                                 text: "Berlaku sampai ",
// // //                                 style: TextStyle(
// // //                                   color: Colors.white,
// // //                                   fontSize: 16,
// // //                                 ),
// // //                                 children: [
// // //                                   TextSpan(
// // //                                     text: "19 April 2020",
// // //                                     style: TextStyle(
// // //                                       color: Colors.white,
// // //                                       fontSize: 16,
// // //                                       fontWeight: FontWeight.bold,
// // //                                     ),
// // //                                   )
// // //                                 ],
// // //                               ),
// // //                             ),
// // //                             SizedBox(height: 10),
// // //                             Row(
// // //                               mainAxisAlignment: MainAxisAlignment.start,
// // //                               children: [
// // //                                 Text(
// // //                                   "Telkomsel POIN",
// // //                                   style: TextStyle(
// // //                                     color: Colors.white,
// // //                                     fontSize: 16,
// // //                                   ),
// // //                                 ),
// // //                                 SizedBox(width: 10),
// // //                                 Container(
// // //                                   padding: EdgeInsets.symmetric(
// // //                                     horizontal: 10,
// // //                                     vertical: 8,
// // //                                   ),
// // //                                   decoration: BoxDecoration(
// // //                                     color: Color(0xFFF7B731),
// // //                                     borderRadius: BorderRadius.circular(10),
// // //                                   ),
// // //                                   child: Text(
// // //                                     "172",
// // //                                     style: TextStyle(
// // //                                       color: Colors.black,
// // //                                       fontSize: 16,
// // //                                       fontWeight: FontWeight.bold,
// // //                                     ),
// // //                                   ),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                             SizedBox(width: 10),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     ),
// // //                     SizedBox(height: 15),
// // //                     Padding(
// // //                       padding: const EdgeInsets.symmetric(horizontal: 25),
// // //                       child: Row(
// // //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                         children: [
// // //                           StatusCard(
// // //                             title: "Internet",
// // //                             data: "12.19",
// // //                             satuan: "GB",
// // //                           ),
// // //                           StatusCard(
// // //                             title: "Telepon",
// // //                             data: "0",
// // //                             satuan: "Min",
// // //                           ),
// // //                           StatusCard(
// // //                             title: "SMS",
// // //                             data: "23",
// // //                             satuan: "SMS",
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                     SizedBox(height: 15),
// // //                   ],
// // //                 ),
// // //                 Container(
// // //                   height: 7,
// // //                   color: Colors.grey[300],
// // //                 ),
// // //                 Expanded(
// // //                   child: Container(
// // //                     // color: Colors.purple,
// // //                     child: Column(
// // //                       children: [
// // //                         // body
// // //                         Expanded(
// // //                           child: ListView(
// // //                             padding: EdgeInsets.symmetric(horizontal: 25),
// // //                             children: [
// // //                               SizedBox(height: 20),
// // //                               Text(
// // //                                 "Kategori Paket",
// // //                                 style: TextStyle(
// // //                                   fontSize: 20,
// // //                                   fontWeight: FontWeight.bold,
// // //                                 ),
// // //                               ),
// // //                               SizedBox(height: 20),
// // //                               Row(
// // //                                 mainAxisAlignment:
// // //                                     MainAxisAlignment.spaceBetween,
// // //                                 children: [
// // //                                   ItemKategori(
// // //                                     title: "Internet",
// // //                                     icon: "assets/icons/internet.png",
// // //                                   ),
// // //                                   ItemKategori(
// // //                                     title: "Telpon",
// // //                                     icon: "assets/icons/telpon.png",
// // //                                   ),
// // //                                   ItemKategori(
// // //                                     title: "SMS",
// // //                                     icon: "assets/icons/sms.png",
// // //                                   ),
// // //                                   ItemKategori(
// // //                                     title: "Roaming",
// // //                                     icon: "assets/icons/roaming.png",
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                               SizedBox(height: 30),
// // //                               Row(
// // //                                 mainAxisAlignment:
// // //                                     MainAxisAlignment.spaceBetween,
// // //                                 children: [
// // //                                   ItemKategori(
// // //                                     title: "Hiburan",
// // //                                     icon: "assets/icons/hiburan.png",
// // //                                   ),
// // //                                   ItemKategori(
// // //                                     title: "Unggulan",
// // //                                     icon: "assets/icons/unggulan.png",
// // //                                   ),
// // //                                   ItemKategori(
// // //                                     title: "Tersimpan",
// // //                                     icon: "assets/icons/tersimpan.png",
// // //                                   ),
// // //                                   ItemKategori(
// // //                                     title: "Riwayat",
// // //                                     icon: "assets/icons/riwayat-icon.png",
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                               SizedBox(height: 30),
// // //                               Row(
// // //                                 crossAxisAlignment: CrossAxisAlignment.end,
// // //                                 mainAxisAlignment:
// // //                                     MainAxisAlignment.spaceBetween,
// // //                                 children: [
// // //                                   Text(
// // //                                     "Terbaru dari Telkomsel",
// // //                                     style: TextStyle(
// // //                                       fontSize: 20,
// // //                                       fontWeight: FontWeight.bold,
// // //                                     ),
// // //                                   ),
// // //                                   Text(
// // //                                     "Lihat Semua",
// // //                                     style: TextStyle(
// // //                                       fontSize: 16,
// // //                                       color: Colors.red,
// // //                                       fontWeight: FontWeight.bold,
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                               SizedBox(height: 20),
// // //                               SingleChildScrollView(
// // //                                 scrollDirection: Axis.horizontal,
// // //                                 child: Row(
// // //                                   children: [
// // //                                     ItemTerbaru(
// // //                                       image: "assets/images/images-1.png",
// // //                                     ),
// // //                                     ItemTerbaru(
// // //                                       image: "assets/images/images-2.png",
// // //                                     ),
// // //                                     ItemTerbaru(
// // //                                       image: "assets/images/images-1.png",
// // //                                     ),
// // //                                     ItemTerbaru(
// // //                                       image: "assets/images/images-2.png",
// // //                                     ),
// // //                                     ItemTerbaru(
// // //                                       image: "assets/images/images-1.png",
// // //                                     ),
// // //                                     ItemTerbaru(
// // //                                       image: "assets/images/images-2.png",
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ),
// // //                               SizedBox(height: 30),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                         // Navigation
// // //                         Container(
// // //                           margin: EdgeInsets.only(bottom: 20),
// // //                           height: 100,
// // //                           decoration: BoxDecoration(
// // //                             border: Border(
// // //                               top: BorderSide(
// // //                                 color: Colors.grey,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                           // color: Colors.amber,
// // //                           child: Row(
// // //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // //                             children: [
// // //                               ItemNav(
// // //                                 icon: "beranda",
// // //                                 status: true,
// // //                                 title: "Beranda",
// // //                               ),
// // //                               ItemNav(
// // //                                 icon: "riwayat",
// // //                                 status: false,
// // //                                 title: "Riwayat",
// // //                               ),
// // //                               ItemNav(
// // //                                 icon: "bantuan",
// // //                                 status: false,
// // //                                 title: "Bantuan",
// // //                               ),
// // //                               ItemNav(
// // //                                 icon: "inbox",
// // //                                 status: false,
// // //                                 title: "Inbox",
// // //                               ),
// // //                               ItemNav(
// // //                                 icon: "profile",
// // //                                 status: false,
// // //                                 title: "Akun Saya",
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // // class ItemTerbaru extends StatelessWidget {
// // //   ItemTerbaru({
// // //     Key? key,
// // //     required this.image,
// // //   }) : super(key: key);

// // //   final String image;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Container(
// // //       margin: EdgeInsets.only(right: 20),
// // //       width: Get.width * 0.7,
// // //       height: 100,
// // //       decoration: BoxDecoration(
// // //         color: Colors.amber,
// // //         borderRadius: BorderRadius.circular(20),
// // //         image: DecorationImage(
// // //           image: AssetImage(image),
// // //           fit: BoxFit.cover,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class ItemKategori extends StatelessWidget {
// // //   ItemKategori({
// // //     Key? key,
// // //     required this.title,
// // //     required this.icon,
// // //   }) : super(key: key);

// // //   final String title;
// // //   final String icon;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.center,
// // //       mainAxisAlignment: MainAxisAlignment.center,
// // //       children: [
// // //         Container(
// // //           width: 50,
// // //           height: 50,
// // //           child: Image.asset(
// // //             icon,
// // //             fit: BoxFit.cover,
// // //           ),
// // //         ),
// // //         SizedBox(height: 5),
// // //         Text(
// // //           title,
// // //           style: TextStyle(
// // //             fontSize: 16,
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

// // // class ItemNav extends StatelessWidget {
// // //   ItemNav({
// // //     Key? key,
// // //     required this.status,
// // //     required this.icon,
// // //     required this.title,
// // //   }) : super(key: key);

// // //   final bool status;
// // //   final String title;
// // //   final String icon;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Column(
// // //       mainAxisAlignment: MainAxisAlignment.center,
// // //       children: [
// // //         Container(
// // //           height: 30,
// // //           child: Image.asset(
// // //             (status == true)
// // //                 ? "assets/icons/$icon-active.png"
// // //                 : "assets/icons/$icon.png",
// // //             fit: BoxFit.contain,
// // //           ),
// // //         ),
// // //         SizedBox(height: 5),
// // //         Text(
// // //           "Beranda",
// // //           style: TextStyle(
// // //             color: (status == true) ? Color(0xFFEC2028) : Color(0xFF747D8C),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

// // // class StatusCard extends StatelessWidget {
// // //   StatusCard({
// // //     Key? key,
// // //     required this.title,
// // //     required this.data,
// // //     required this.satuan,
// // //   }) : super(key: key);

// // //   final String title;
// // //   final String data;
// // //   final String satuan;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Card(
// // //       child: Container(
// // //         padding: EdgeInsets.all(10),
// // //         width: Get.width * 0.25,
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             Text(
// // //               title,
// // //               style: TextStyle(
// // //                 fontSize: 16,
// // //               ),
// // //             ),
// // //             RichText(
// // //               text: TextSpan(
// // //                 text: data,
// // //                 style: TextStyle(
// // //                   fontSize: 22,
// // //                   color: Color(0xFFEC2028),
// // //                   fontWeight: FontWeight.bold,
// // //                 ),
// // //                 children: [
// // //                   TextSpan(
// // //                     text: " $satuan",
// // //                     style: TextStyle(
// // //                       fontSize: 16,
// // //                       color: Color(0xFF747D8C),
// // //                     ),
// // //                   )
// // //                 ],
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class ClipInfoClass extends CustomClipper<Path> {
// // //   @override
// // //   Path getClip(Size size) {
// // //     Path path = Path();
// // //     path.lineTo(0, size.height);
// // //     path.lineTo(size.width - 80, size.height);
// // //     path.lineTo(size.width, size.height - 80);
// // //     path.lineTo(size.width, 0);
// // //     path.close();

// // //     return path;
// // //   }

// // //   @override
// // //   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// // // }

// // // class ClipPathClass extends CustomClipper<Path> {
// // //   @override
// // //   Path getClip(Size size) {
// // //     Path path = Path();
// // //     path.lineTo(0, size.height - 60);
// // //     path.quadraticBezierTo(
// // //       size.width / 2,
// // //       size.height,
// // //       size.width,
// // //       size.height - 60,
// // //     );
// // //     path.lineTo(size.width, 0);
// // //     path.close();

// // //     return path;
// // //   }

// // //   @override
// // //   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// // // }