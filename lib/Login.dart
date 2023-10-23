// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:key2rights/HomePage.dart';
import 'package:key2rights/SignUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoggedIn = false;

  Future<void> login() async {
    // Simulate a login process
    await Future.delayed(Duration(seconds: 2));
    isLoggedIn = true;
  }

  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  Future<void> resetPassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 172, 245, 211),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 172, 245, 211)),
              height: MediaQuery.sizeOf(context).height * 0.42,
              width: MediaQuery.sizeOf(context).width,
              child: Stack(
                children: [
                  Container(
                    
                    height: MediaQuery.sizeOf(context).height * 0.24,
                    width: MediaQuery.sizeOf(context).width,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 115),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage("assets/image/12.jpg"),

                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 270, left:135),
                                        child: Text('LOGIN',style:   TextStyle(color: Color.fromARGB(255, 60, 220, 148),fontWeight: FontWeight.bold, fontSize: 30),),)

                  // Padding(
                  //   padding: const EdgeInsets.only(left: 320, top: 290),
                  //   child: Container(
                  //       height: 40,
                  //       width: MediaQuery.sizeOf(context).width * 0.2,
                  //       decoration: BoxDecoration(
                  //           color: Color.fromARGB(255, 151, 210, 255),
                  //           borderRadius: BorderRadius.only(
                  //               bottomLeft: Radius.circular(50),
                  //               topLeft: Radius.circular(50))),
                  //       child: Row(
                  //         children: [
                  //           SizedBox(
                  //             width: 20,
                  //           ),
                  //           CircleAvatar(
                  //             radius: 15,
                  //             backgroundColor: Colors.white,
                  //             child: Icon(
                  //               CupertinoIcons.arrow_left,
                  //               size: 20,
                  //             ),
                  //           ),
                  //         ],
                  //       )),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 200, top: 290),
                  //   child: Container(
                  //       height: 40,
                  //       width: MediaQuery.sizeOf(context).width * 0.49,
                  //       decoration: BoxDecoration(
                  //           color: Color.fromARGB(255, 151, 210, 255),
                  //           borderRadius: BorderRadius.only(
                  //               bottomRight: Radius.circular(50),
                  //               topRight: Radius.circular(50))),
                  //       child: Row(
                  //         children: [
                  //           SizedBox(
                  //             width: 20,
                  //           ),
                  //           Text(
                  //             "LOGIN",
                  //             style: TextStyle(
                  //                 fontSize: 16, fontWeight: FontWeight.bold),
                  //           ),
                  //           SizedBox(
                  //             width: 20,
                  //           ),
                  //           CircleAvatar(
                  //             radius: 15,
                  //             backgroundColor: Colors.white,
                  //             child: Icon(
                  //               CupertinoIcons.arrow_left,
                  //               size: 20,
                  //             ),
                  //           ),
                  //         ],
                  //       )),
                  // )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: globalKey,
                child: Column(children: [
                  SizedBox(height:60,
                  child:
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field is required";
                      } else {
                        return null;
                      }
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(35))),
                        hintText: 'Email',
                        label: Text("UserEmail"),
                        prefixIcon: Icon(
                          Icons.person_outline_outlined,
                          color: Colors.black,
                        )),
                  ),),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(height:60,
                  child:
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field is required";
                      } else if (value.length <= 6) {
                        return "Too short password";
                      } else {
                        return null;
                      }
                    },
                    controller: passwordController,
                    obscureText: true,
                    obscuringCharacter: "X",
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        hintText: 'PASSWORD',
                        label: Text("Password"),
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.black,
                        )),
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color.fromARGB(255, 60, 220, 148)),
                      height: 40,
                      width: 150,
                      child: MaterialButton(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 10, 10, 10),
                              ),
                        ),
                        onPressed: () {
                          if (globalKey.currentState!.validate()) {
                            auth
                                .signInWithEmailAndPassword(
                              email: emailController.text.toString(),
                              password: passwordController.text.toString(),
                            )
                                .then(
                              (value) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePageScreen(),
                                    ));
                              },
                            ).onError(
                              (error, stackTrace) {
                                SnackBar(
                                  content: Text("Login Failed"),
                                );
                              },
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: GestureDetector(
                        onTap: () async {
                          String email =
                              emailController.text.toString(); // Replace with the user's email address
                          await resetPassword(email);
                        },
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 363.480712890625,
                    height: 0.5,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 109, 109, 109)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 363.480712890625,
                    height: 30,
                    child: Row(children: [
                      SizedBox(
                        width: 12,
                      ),
                      Text("Don't Have an Account ? "),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ]),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
