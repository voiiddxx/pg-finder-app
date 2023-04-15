import 'package:chhatarnivaas/frontend/admin/admin_add_room.dart';
import 'package:chhatarnivaas/frontend/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AdminFeatureScreen extends StatefulWidget {
  const AdminFeatureScreen({super.key});

  @override
  State<AdminFeatureScreen> createState() => _AdminFeatureScreenState();
}

class _AdminFeatureScreenState extends State<AdminFeatureScreen> {
  @override
  Widget build(BuildContext context) {
    FirebaseAuth _auth = FirebaseAuth.instance;
    change() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AddRoomScreen();
      }));
    }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: change,
                  child: Image.asset("assets/images/addroom.jpg")),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: change,
                    child: Image.asset(
                      "assets/images/Untitled1.jpg",
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                  ),
                  Image.asset(
                    "assets/images/Untitled2.jpg",
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  Image.asset(
                    "assets/images/Untitled3.jpg",
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset("assets/images/prime.jpg"),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Not Only In Big Cities",
                    style: TextStyle(
                        color: Color.fromARGB(255, 3, 180, 86),
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "The Platform Where You Can Find all the Pg Nearby You and with best facility option in the minimal price , So why are you waiting let's explore and share with your friends",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.7,
                          height: 2),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
