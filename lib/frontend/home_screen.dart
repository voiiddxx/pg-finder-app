import 'package:chhatarnivaas/frontend/admin/admin_add_room.dart';
import 'package:chhatarnivaas/frontend/admin/admin_create_account.dart';
import 'package:chhatarnivaas/frontend/admin/admin_feature.dart';
import 'package:chhatarnivaas/frontend/rooms.dart';
import 'package:chhatarnivaas/frontend/utlis.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/main.jpg",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Find Your Perfect PG",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.038,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "The Platform Where user can Find Their Pg According To Their Destination And PG Owners can Rent Their PG online and many more option",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.018,
                      color: Color.fromARGB(255, 55, 55, 55),
                      letterSpacing: 0.2,
                      height: 1.5),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RoomScreen();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color.fromARGB(255, 29, 29, 29)),
                    child: Text(
                      "Search Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
