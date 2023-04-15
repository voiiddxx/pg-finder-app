import 'package:chhatarnivaas/frontend/auth.dart';
import 'package:chhatarnivaas/frontend/details.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class RoomScreen extends StatefulWidget {
  RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  final ref = FirebaseDatabase.instance.ref('rooms');
  final TextEditingController _Citycontroller = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    _Citycontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Explore PG"),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 15,
        ),
        actions: [
          IconButton(
            onPressed: () {
              _auth.signOut();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return AuthScreen();
              }));
            },
            icon: Icon(
              Icons.logout,
              color: Color.fromARGB(255, 0, 0, 0),
              size: 20,
            ),
          ),
          Icon(
            Icons.logout,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 20,
          ),
        ],
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Check Out The PG According to your destination",
                style: TextStyle(
                    color: Color.fromARGB(255, 73, 73, 73),
                    fontSize: 10,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 35,
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: StadiumBorder(),
                        backgroundColor: Color.fromARGB(255, 253, 253, 253),
                        side: BorderSide(width: 0.5, color: Colors.grey)),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.bar_chart_sharp,
                          size: 20,
                          color: Color.fromARGB(255, 93, 93, 93),
                        ),
                        Text(
                          "Filters",
                          style: TextStyle(
                              color: Color.fromARGB(255, 87, 85, 85),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _Citycontroller,
                style: TextStyle(
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.location_on_outlined,
                    color: Color.fromARGB(255, 97, 97, 97),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 217, 217, 217),
                  hintText: "Search With Location",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 130, 130, 130),
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                onChanged: (String value) {
                  setState(() {});
                },
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: FirebaseAnimatedList(
                  query: ref,
                  itemBuilder: (context, snapshot, animation, index) {
                    final cityname =
                        snapshot.child('location').value.toString();
                    if (_Citycontroller.text.isEmpty) {
                      return Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 0.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  width: double.infinity,
                                  child: Image.network(
                                    snapshot.child('Image').value.toString(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.4,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        snapshot
                                                            .child('Pgname')
                                                            .value
                                                            .toString(),
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    200,
                                                                    123),
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        snapshot
                                                            .child('location')
                                                            .value
                                                            .toString(),
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    73,
                                                                    73,
                                                                    73),
                                                            fontSize: 8,
                                                            height: 1.5,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "Rent Now",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 38, 38, 38),
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 10),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    snapshot
                                                        .child('roomcount')
                                                        .value
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 38, 38, 38),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Features: ",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 1, 129, 63),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10),
                                            ),
                                            Text(
                                              snapshot
                                                      .child('roomcount')
                                                      .value
                                                      .toString() +
                                                  " |",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 38, 38, 38),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8),
                                            ),
                                            Text(
                                              snapshot
                                                      .child('acornot')
                                                      .value
                                                      .toString() +
                                                  " |",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 38, 38, 38),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8),
                                            ),
                                            Text(
                                              snapshot
                                                  .child('otherdetail')
                                                  .value
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 38, 38, 38),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: 40,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.37,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return DetailScreen(snapshot
                                                        .child('Pgname')
                                                        .value
                                                        .toString());
                                                  }));
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    elevation: 0,
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 11, 170, 120)),
                                                child: Text(
                                                  "Veiw Details",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 40,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.37,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    elevation: 0,
                                                    side: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 11, 170, 120),
                                                        width: 0.7),
                                                    backgroundColor:
                                                        Color.fromARGB(255, 254,
                                                            255, 255)),
                                                child: Text(
                                                  "Contact Now",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 11, 170, 120),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    } else if (cityname.toLowerCase().contains(
                        _Citycontroller.text.toLowerCase().toLowerCase())) {
                      return Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 0.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  width: double.infinity,
                                  child: Image.network(
                                    snapshot.child('Image').value.toString(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.4,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        snapshot
                                                            .child('Pgname')
                                                            .value
                                                            .toString(),
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    200,
                                                                    123),
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        snapshot
                                                            .child('location')
                                                            .value
                                                            .toString(),
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    73,
                                                                    73,
                                                                    73),
                                                            fontSize: 8,
                                                            height: 1.5,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "Rent Now",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 38, 38, 38),
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 10),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    snapshot
                                                        .child(
                                                            'duration' + "/mo")
                                                        .value
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 38, 38, 38),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Features: ",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 1, 129, 63),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10),
                                            ),
                                            Text(
                                              snapshot
                                                      .child('roomcount')
                                                      .value
                                                      .toString() +
                                                  " |",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 38, 38, 38),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8),
                                            ),
                                            Text(
                                              snapshot
                                                      .child('acornot')
                                                      .value
                                                      .toString() +
                                                  " |",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 38, 38, 38),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8),
                                            ),
                                            Text(
                                              snapshot
                                                  .child('otherdetail')
                                                  .value
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 38, 38, 38),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 8),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: 40,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.37,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return DetailScreen(snapshot
                                                        .child('Pgname')
                                                        .value
                                                        .toString());
                                                  }));
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    elevation: 0,
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 11, 170, 120)),
                                                child: Text(
                                                  "Veiw Details",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 40,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.37,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    elevation: 0,
                                                    side: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 11, 170, 120),
                                                        width: 0.7),
                                                    backgroundColor:
                                                        Color.fromARGB(255, 254,
                                                            255, 255)),
                                                child: Text(
                                                  "Contact Now",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 11, 170, 120),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    }
                    return SizedBox(
                      height: 1,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
