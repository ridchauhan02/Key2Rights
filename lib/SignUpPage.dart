// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:key2rights/Login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
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
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 115),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage("assets/image/12.jpg"),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 270, left:120),
                                        child: Text('SIGNUP',style:   TextStyle(color: Color.fromARGB(255, 60, 220, 148),fontWeight: FontWeight.bold, fontSize: 30),),)

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
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        hintText: 'USERNAME',
                        label: Text("UserName"),
                        prefixIcon: Icon(
                          Icons.person_outline_outlined,
                          color: Colors.black,
                        )),
                  ),),
                  SizedBox(
                    height: 20,
                  ),
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
                                BorderRadius.all(Radius.circular(30))),
                        hintText: 'E-MAIL',
                        label: Text("Email"),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                        )),
                  ),),
                  SizedBox(
                    height: 20,
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
                                BorderRadius.all(Radius.circular(30))),
                        hintText: 'PASSWORD',
                        label: Text("Password"),
                        prefixIcon: Icon(
                          Icons.key_outlined,
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
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 17, 16, 16),
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (globalKey.currentState!.validate()) {
                            auth
                                .createUserWithEmailAndPassword(
                                    email: emailController.text.toString(),
                                    password:
                                        passwordController.text.toString())
                                .then(
                              (value) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
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
                    height: 20,
                  ),
                  Container(
                    width: 363.480712890625,
                    height: 0.5,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 109, 109, 109)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 363.480712890625,
                    height: 30,
                    child: Row(children: [
                      SizedBox(
                        width: 12,
                      ),
                      Text("Already Have an Account ? "),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ));
                          },
                          child: Text(
                            "Login",
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
