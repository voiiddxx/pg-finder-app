import 'package:chhatarnivaas/backend/authmethod.dart';
import 'package:chhatarnivaas/frontend/admin/admin_createaccount.dart';
import 'package:chhatarnivaas/frontend/home_screen.dart';
import 'package:chhatarnivaas/frontend/onboarding.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller =
      TextEditingController();
  void dispose() {
    // TODO: implement dispose
    emailcontroller.dispose();
    passwordcontroller.dispose();
    confirmpasswordcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    chnagetoadmin() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AdminSignScreen();
      }));
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              InkWell(
                  onTap: chnagetoadmin,
                  child: Image.asset("assets/images/auth.jpg")),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
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
                                confirmpassword:
                                    confirmpasswordcontroller.text);
                            if (res == "success") {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomeScreen();
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
      ),
    );
  }
}
