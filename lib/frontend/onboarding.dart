import 'package:chhatarnivaas/frontend/auth.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              Image.asset(
                "assets/images/pg.jpg",
                height: MediaQuery.of(context).size.height * 0.6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Find Your PG With Chhatar Nivaas",
                  style: TextStyle(
                      color: Color.fromARGB(255, 32, 32, 32),
                      fontSize: MediaQuery.of(context).size.height * 0.07,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Start->",
                      style: TextStyle(
                          color: Color.fromARGB(255, 74, 74, 74), fontSize: 12),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.17,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(150)),
                        color: Color.fromARGB(255, 39, 39, 39),
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AuthScreen();
                            }));
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
