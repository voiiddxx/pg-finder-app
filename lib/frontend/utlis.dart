// import 'package:flutter/material.dart';

// class utilScreen extends StatefulWidget {
//   const utilScreen({super.key});

//   @override
//   State<utilScreen> createState() => _utilScreenState();
// }

// class _utilScreenState extends State<utilScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text("Explore PG"),
//         titleTextStyle: TextStyle(
//           color: Colors.black,
//           fontSize: 12,
//           fontWeight: FontWeight.w600,
//         ),
//         centerTitle: true,
//         elevation: 0,
//         leading: Icon(
//           Icons.arrow_back_ios,
//           color: Colors.black,
//           size: 15,
//         ),
//         actions: [
//           Icon(
//             Icons.logout,
//             color: Color.fromARGB(255, 0, 0, 0),
//             size: 20,
//           ),
//           Icon(
//             Icons.logout,
//             color: Color.fromARGB(255, 255, 255, 255),
//             size: 20,
//           ),
//         ],
//       ),
//       body: Container(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Check Out The PG According to your destination",
//                 style: TextStyle(
//                     color: Color.fromARGB(255, 73, 73, 73),
//                     fontSize: 10,
//                     fontWeight: FontWeight.w600),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                 height: 35,
//                 width: 100,
//                 child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         elevation: 0,
//                         shape: StadiumBorder(),
//                         backgroundColor: Color.fromARGB(255, 253, 253, 253),
//                         side: BorderSide(width: 0.5, color: Colors.grey)),
//                     onPressed: () {},
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Icon(
//                           Icons.bar_chart_sharp,
//                           size: 20,
//                           color: Color.fromARGB(255, 93, 93, 93),
//                         ),
//                         Text(
//                           "Filters",
//                           style: TextStyle(
//                               color: Color.fromARGB(255, 87, 85, 85),
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500),
//                         )
//                       ],
//                     )),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.5,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 0.5),
//                     borderRadius: BorderRadius.all(Radius.circular(10))),
//                 child: Column(
//                   children: [
//                     Container(
//                       height: MediaQuery.of(context).size.height * 0.25,
//                       width: double.infinity,
//                       child: Image.asset(
//                         "assets/images/pg.jpg",
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 10, vertical: 10),
//                       child: Container(
//                         child: Column(
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.4,
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             "Aggarwaal House",
//                                             style: TextStyle(
//                                                 color: Color.fromARGB(
//                                                     255, 0, 200, 123),
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.w600),
//                                           ),
//                                           SizedBox(
//                                             height: 5,
//                                           ),
//                                           Text(
//                                             "Near baba farid College of engineering and technology, deon, bathinda ,",
//                                             style: TextStyle(
//                                                 color: Color.fromARGB(
//                                                     255, 73, 73, 73),
//                                                 fontSize: 8,
//                                                 height: 1.5,
//                                                 fontWeight: FontWeight.w500),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Container(
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                     children: [
//                                       Text(
//                                         "Rent Now",
//                                         style: TextStyle(
//                                             color:
//                                                 Color.fromARGB(255, 38, 38, 38),
//                                             fontWeight: FontWeight.w300,
//                                             fontSize: 10),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Text(
//                                         "INR:3500/mo*",
//                                         style: TextStyle(
//                                             color:
//                                                 Color.fromARGB(255, 38, 38, 38),
//                                             fontWeight: FontWeight.w700,
//                                             fontSize: 12),
//                                       ),
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               height: 30,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "Features: ",
//                                   style: TextStyle(
//                                       color: Color.fromARGB(255, 1, 129, 63),
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: 10),
//                                 ),
//                                 Text(
//                                   "Single Sharing Bed  |",
//                                   style: TextStyle(
//                                       color: Color.fromARGB(255, 38, 38, 38),
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 8),
//                                 ),
//                                 Text(
//                                   "Ac Rooms  |",
//                                   style: TextStyle(
//                                       color: Color.fromARGB(255, 38, 38, 38),
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 8),
//                                 ),
//                                 Text(
//                                   "Students Only",
//                                   style: TextStyle(
//                                       color: Color.fromARGB(255, 38, 38, 38),
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 8),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 15,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 SizedBox(
//                                   height: 40,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.37,
//                                   child: ElevatedButton(
//                                     onPressed: () {},
//                                     style: ElevatedButton.styleFrom(
//                                         elevation: 0,
//                                         backgroundColor:
//                                             Color.fromARGB(255, 11, 170, 120)),
//                                     child: Text(
//                                       "Veiw Details",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.w400,
//                                           fontSize: 13),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 40,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.37,
//                                   child: ElevatedButton(
//                                     onPressed: () {},
//                                     style: ElevatedButton.styleFrom(
//                                         elevation: 0,
//                                         side: BorderSide(
//                                             color: Color.fromARGB(
//                                                 255, 11, 170, 120),
//                                             width: 0.7),
//                                         backgroundColor:
//                                             Color.fromARGB(255, 254, 255, 255)),
//                                     child: Text(
//                                       "Veiw Details",
//                                       style: TextStyle(
//                                           color:
//                                               Color.fromARGB(255, 11, 170, 120),
//                                           fontWeight: FontWeight.w400,
//                                           fontSize: 13),
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }























// //  backgroundColor: Colors.white,
// //         appBar: AppBar(
// //           backgroundColor: Colors.white,
// //           elevation: 0,
// //           title: Text(
// //             "PG",
// //             style: TextStyle(
// //                 color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
// //           ),
// //           titleSpacing: 1,
// //           leading: Icon(
// //             Icons.home,
// //             color: Colors.black,
// //           ),
// //         ),
// //         body: Column(
// //           children: [
// //             SizedBox(
// //               height: 10,
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.all(10),
// //               child: TextFormField(
// //                 decoration: InputDecoration(
// //                   filled: true,
// //                   fillColor: Color.fromARGB(255, 222, 221, 221),
// //                   enabledBorder: OutlineInputBorder(
// //                       borderSide: BorderSide(color: Colors.white)),
// //                   hintText: "Location",
// //                   prefixIcon: Icon(
// //                     Icons.search_sharp,
// //                     color: Color.fromARGB(255, 107, 107, 107),
// //                   ),
// //                   hintStyle: TextStyle(
// //                       color: Colors.grey,
// //                       fontSize: 17,
// //                       fontWeight: FontWeight.w400),
// //                 ),
// //               ),
// //             ),
// //             SizedBox(
// //               height: 14,
// //             ),
// //             Expanded(
// //               child: FirebaseAnimatedList(
// //                 query: ref,
// //                 itemBuilder: (context, snapshot, animation, index) {
// //                   return Container(
// //                     height: MediaQuery.of(context).size.height * 0.35,
// //                     width: double.infinity,
// //                     decoration: BoxDecoration(
// //                       gradient: LinearGradient(
// //                         begin: Alignment.topRight,
// //                         end: Alignment.bottomLeft,
// //                         colors: [
// //                           Color.fromARGB(255, 52, 82, 255),
// //                           Color.fromARGB(255, 104, 80, 221),
// //                         ],
// //                       ),
// //                     ),
// //                     child: Row(
// //                       children: [
// //                         Container(
// //                           height: MediaQuery.of(context).size.height * 0.4,
// //                           width: MediaQuery.of(context).size.width * 0.4,
// //                           child: Image.network(
// //                             snapshot.child('Image').value.toString(),
// //                             fit: BoxFit.cover,
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding:
// //                               EdgeInsets.only(left: 10, top: 10, bottom: 10),
// //                           child: Container(
// //                             width: MediaQuery.of(context).size.width * 0.55,
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                               children: [
// //                                 Text(
// //                                   snapshot.child('Pgname').value.toString(),
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 20,
// //                                       letterSpacing: 0.7,
// //                                       fontWeight: FontWeight.bold,
// //                                       fontStyle: FontStyle.italic),
// //                                 ),
// //                                 SizedBox(
// //                                   height: 8,
// //                                 ),
// //                                 Text(
// //                                   snapshot.child('location').value.toString(),
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 14,
// //                                       letterSpacing: 0.4,
// //                                       height: 1.3,
// //                                       fontWeight: FontWeight.w400,
// //                                       fontStyle: FontStyle.normal),
// //                                 ),
// //                                 SizedBox(
// //                                   height: 8,
// //                                 ),
// //                                 Text(
// //                                   snapshot.child('roomcount').value.toString(),
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 13,
// //                                       letterSpacing: 0.4,
// //                                       height: 1.3,
// //                                       fontWeight: FontWeight.w600,
// //                                       fontStyle: FontStyle.normal),
// //                                 ),
// //                                 SizedBox(
// //                                   height: 8,
// //                                 ),
// //                                 Text(
// //                                   snapshot.child('duration').value.toString(),
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 13,
// //                                       letterSpacing: 0.4,
// //                                       height: 1.3,
// //                                       fontWeight: FontWeight.w600,
// //                                       fontStyle: FontStyle.normal),
// //                                 ),
// //                                 SizedBox(
// //                                   height: 8,
// //                                 ),
// //                                 Text(
// //                                   snapshot.child('acornot').value.toString(),
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 13,
// //                                       letterSpacing: 0.4,
// //                                       height: 1.3,
// //                                       fontWeight: FontWeight.w600,
// //                                       fontStyle: FontStyle.normal),
// //                                 ),
// //                                 SizedBox(
// //                                   height: 8,
// //                                 ),
// //                                 Text(
// //                                   snapshot
// //                                       .child('otherdetail')
// //                                       .value
// //                                       .toString(),
// //                                   style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: 13,
// //                                       letterSpacing: 0.4,
// //                                       height: 1.3,
// //                                       fontWeight: FontWeight.w400,
// //                                       fontStyle: FontStyle.normal),
// //                                 ),
// //                                 SizedBox(
// //                                   height: 8,
// //                                 ),
// //                                 SizedBox(
// //                                     height: 30,
// //                                     width: double.infinity,
// //                                     child: ElevatedButton(
// //                                         style: ElevatedButton.styleFrom(
// //                                             backgroundColor: Colors.white,
// //                                             elevation: 0),
// //                                         onPressed: () {},
// //                                         child: Text(
// //                                           "Contact Now",
// //                                           style: TextStyle(
// //                                               color: Colors.black,
// //                                               fontSize: 12,
// //                                               fontWeight: FontWeight.w400),
// //                                         )))
// //                               ],
// //                             ),
// //                           ),
// //                         )
// //                       ],
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ),
// //           ],
// //         ))















// Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.4,
//                 width: double.infinity,
//                 child: Image.asset(
//                   "assets/images/pg.jpg",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 15, left: 15, right: 30),
//                 child: Container(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "AggarWaal house",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 15,
//                             fontWeight: FontWeight.w700),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "Note: Contact With PG Owner To Get The Other Important Detail For Respective PG and It is Advice to take a tour of pg before taking on rent",
//                         style: TextStyle(
//                             fontSize: 10,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w400,
//                             letterSpacing: 0.7,
//                             height: 1.8),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "INR:3000/mo* ",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 11,
//                             fontWeight: FontWeight.w700),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "ALL FACILITY",
//                         style: TextStyle(
//                             color: Color.fromARGB(255, 2, 117, 82),
//                             fontSize: 11,
//                             fontWeight: FontWeight.w700),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             height: 30,
//                             width: 100,
//                             decoration: BoxDecoration(
//                                 color: Color.fromARGB(255, 201, 203, 200),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             child: Center(
//                               child: Text(
//                                 "Double Bed",
//                                 style: TextStyle(
//                                     color: Color.fromARGB(255, 38, 38, 38),
//                                     fontSize: 10,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             height: 30,
//                             width: 100,
//                             decoration: BoxDecoration(
//                                 color: Color.fromARGB(255, 201, 203, 200),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             child: Center(
//                               child: Text(
//                                 "Ac rooms",
//                                 style: TextStyle(
//                                     color: Color.fromARGB(255, 38, 38, 38),
//                                     fontSize: 10,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             height: 30,
//                             width: 100,
//                             decoration: BoxDecoration(
//                                 color: Color.fromARGB(255, 201, 203, 200),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             child: Center(
//                               child: Text(
//                                 "Geyser",
//                                 style: TextStyle(
//                                     color: Color.fromARGB(255, 38, 38, 38),
//                                     fontSize: 10,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             height: 30,
//                             width: 100,
//                             decoration: BoxDecoration(
//                                 color: Color.fromARGB(255, 201, 203, 200),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             child: Center(
//                               child: Text(
//                                 "Atatched bathroom",
//                                 style: TextStyle(
//                                     color: Color.fromARGB(255, 38, 38, 38),
//                                     fontSize: 10,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             height: 30,
//                             width: 100,
//                             decoration: BoxDecoration(
//                                 color: Color.fromARGB(255, 201, 203, 200),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             child: Center(
//                               child: Text(
//                                 "Lunch Provided",
//                                 style: TextStyle(
//                                     color: Color.fromARGB(255, 38, 38, 38),
//                                     fontSize: 10,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             height: 30,
//                             width: 100,
//                             decoration: BoxDecoration(
//                                 color: Color.fromARGB(255, 201, 203, 200),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             child: Center(
//                               child: Text(
//                                 "No Kitchen",
//                                 style: TextStyle(
//                                     color: Color.fromARGB(255, 38, 38, 38),
//                                     fontSize: 10,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "Near Baba farid College Of Engineering and Technology , deon , bathinda , Punjab",
//                         style: TextStyle(
//                             fontSize: 10,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w400,
//                             letterSpacing: 0.7,
//                             height: 1.8),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "",
//                         style: TextStyle(
//                             fontSize: 10,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w400,
//                             letterSpacing: 0.7,
//                             height: 1.8),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       SizedBox(
//                         height: 40,
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                               elevation: 0,
//                               side: BorderSide(
//                                   color: Color.fromARGB(255, 255, 255, 255),
//                                   width: 0.7),
//                               backgroundColor: Color.fromARGB(255, 35, 35, 35)),
//                           child: Text(
//                             "Contact Now",
//                             style: TextStyle(
//                                 color: Color.fromARGB(255, 246, 255, 252),
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 13),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),