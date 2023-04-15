import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  var namehome;
  DetailScreen(this.namehome);
  final ref = FirebaseDatabase.instance.ref('rooms');

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
          Icon(
            Icons.logout,
            color: Color.fromARGB(255, 0, 0, 0),
            size: 20,
          ),
          Icon(
            Icons.logout,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 20,
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: FirebaseAnimatedList(
                query: ref,
                itemBuilder: (context, snapshot, animation, index) {
                  if ('$namehome' ==
                      snapshot.child('Pgname').value.toString()) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: double.infinity,
                          child: Image.network(
                            snapshot.child('Image').value.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 30),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.child('Pgname').value.toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Note: Contact With PG Owner To Get The Other Important Detail For Respective PG and It is Advice to take a tour of pg before taking on rent",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.7,
                                      height: 1.8),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "INR:3000/mo*",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "ALL FACILITY",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 2, 117, 82),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 201, 203, 200),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Center(
                                        child: Text(
                                          snapshot
                                              .child('roomcount')
                                              .value
                                              .toString(),
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 38, 38, 38),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 201, 203, 200),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Center(
                                        child: Text(
                                          snapshot
                                              .child('acornot')
                                              .value
                                              .toString(),
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 38, 38, 38),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 201, 203, 200),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Center(
                                        child: Text(
                                          "Geyser",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 38, 38, 38),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 201, 203, 200),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Center(
                                        child: Text(
                                          "Atatched bathroom",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 38, 38, 38),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 201, 203, 200),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Center(
                                        child: Text(
                                          "Lunch Provided",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 38, 38, 38),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 201, 203, 200),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Center(
                                        child: Text(
                                          "No Kitchen",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 38, 38, 38),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  snapshot.child('location').value.toString(),
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.7,
                                      height: 1.8),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  snapshot
                                      .child('otherdetail')
                                      .value
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.7,
                                      height: 1.8),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 40,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            width: 0.7),
                                        backgroundColor:
                                            Color.fromARGB(255, 35, 35, 35)),
                                    child: Text(
                                      "Contact Now",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 246, 255, 252),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  } else {
                    return SizedBox(
                      height: 0.1,
                    );
                  }
                  ;
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
