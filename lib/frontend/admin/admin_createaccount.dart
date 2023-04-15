import 'package:chhatarnivaas/frontend/admin/admin_feature.dart';
import 'package:flutter/material.dart';

import '../../backend/authmethod.dart';

class AdminSignScreen extends StatefulWidget {
  const AdminSignScreen({super.key});

  @override
  State<AdminSignScreen> createState() => _AdminSignScreenState();
}

class _AdminSignScreenState extends State<AdminSignScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller =
      TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    emailcontroller.dispose();
    passwordcontroller.dispose();
    confirmpasswordcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/pg.jpg"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create Account",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 25, 25, 25),
                        fontWeight: FontWeight.w800,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Create Account as Admin to get all the features",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 25, 25, 25),
                        fontWeight: FontWeight.w500,
                        fontSize: 10),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Color.fromARGB(255, 60, 60, 60),
                        ),
                        labelText: "Email Address",
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12),
                        filled: true,
                        fillColor: Color.fromARGB(255, 218, 218, 218),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password_outlined,
                          color: Color.fromARGB(255, 60, 60, 60),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12),
                        filled: true,
                        fillColor: Color.fromARGB(255, 218, 218, 218),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: confirmpasswordcontroller,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password_outlined,
                          color: Color.fromARGB(255, 60, 60, 60),
                        ),
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12),
                        filled: true,
                        fillColor: Color.fromARGB(255, 218, 218, 218),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color.fromARGB(255, 0, 125, 71)),
                        onPressed: () async {
                          String res = await AuthMethod().Register(
                              email: emailcontroller.text,
                              password: passwordcontroller.text,
                              confirmpassword: confirmpasswordcontroller.text);
                          if (res == "success") {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AdminFeatureScreen();
                            }));
                          }
                        },
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have Account?  ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 4, 142, 94),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      InkWell(
                        child: Text(
                          "Login Now",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
