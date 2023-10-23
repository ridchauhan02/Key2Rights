// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:key2rights/Login.dart';
class OptionPage extends StatefulWidget {
  OptionPage({super.key});

  @override

  State<OptionPage> createState() => _OptionPage();
}

class _OptionPage extends State<OptionPage> {
  TextEditingController uname = TextEditingController();

  TextEditingController password = TextEditingController();
//dropdown
 
final List<String> _language = ["English", "Hindi", "Gujarati", "Marathi"];

  // the selected value
  String? _selectedLanguage;

//dropdown2

final List<String> _state = ["Gujarat", "Madhya Pradesh", "Rajasthan", "Maharashtra"];

  // the selected value
  String? _selectedState;


//dropdown3
final List<String> _city = ["Ahmedabad", "Surat", "Vadodara", "Jamnagar"];

  // the selected value
  String? _selectedCity;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body: Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/01.jpg"),
            fit: BoxFit.cover
          ),
        ),
        
        padding: EdgeInsets.all(40),
        //color: Color.fromARGB(255, 225, 249, 240),
        
        
        child:Column(
          
          
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
            borderRadius: BorderRadius.circular(280.0),
            
            child: Image.asset('assets/image/12.jpg',width: 170,),
            ),
            
            SizedBox(height: 70,),
          
//dropdown

// DropdownButton(
//     value: "New York",
//     items: [ //add items in the dropdown 
//       DropdownMenuItem(
//         child: Text("New York"),
//         value: "New York"
//       ),

//       DropdownMenuItem(
//         child: Text("Tokyo"),
//         value: "Tokyo",
//       ),

//       DropdownMenuItem(
//         child: Text("Moscow"),
//         value: "Moscow",
//       )
//     ],
//     onChanged: (value){ //get value when changed
//         print("You selected $value");
//     },
// ),
SizedBox(

child:
 DropdownButtonFormField<String>(
  decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide:
          BorderSide(width: 0, color: Color.fromARGB(190, 199, 245, 228)), //<-- SEE HERE
      borderRadius: BorderRadius.circular(50.0),
    ),
    focusedBorder: OutlineInputBorder(
       //<-- SEE HERE
      borderRadius: BorderRadius.circular(50.0),
      borderSide: BorderSide(color:Color.fromRGBO(199, 245, 228,1) ,width: 0), //<-- SEE HERE
    ),
    
    filled: true,
    fillColor: Color.fromARGB(220, 212, 250, 236),
  ),
  
            value: _selectedLanguage,
            onChanged: (value) {
              setState(() {
                _selectedLanguage = value;
              });
              debugPrint("You selected $_selectedLanguage");
            },
            
            hint: const Center(
                child: Text(
              'Language',
              style: TextStyle(color: Colors.black),
            )),
            // // Hide the default underline
            // underline: Container(),

            // set the color of the dropdown menu
            dropdownColor: Colors.white,
            icon: const Icon(
              Icons.expand_more,
              color: Color.fromARGB(255, 93, 218, 173),
            ),
            isExpanded: true,

            // The list of options
            items: _language
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          e,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ))
                .toList(),

            // Customize the selected item
            selectedItemBuilder: (BuildContext context) => _language
                .map((e) => Center(
                      child: Text(
                        e,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            ),
                      ),
                    ))
                .toList(),
                
          ),),
           // SizedBox(
              
          // height: 50,
          // child:Material(
          //   elevation: 5,
          //   borderRadius: BorderRadius.circular(20),
          // child:
          //   TextField(
          //      style: TextStyle(),
              
          //     controller: uname,
              
          //     decoration: InputDecoration(
                
          //       filled: true,
          //       fillColor: Color.fromARGB(155, 194, 254, 232),
          //       enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide(width: 2, color: Color.fromARGB(155, 194, 254, 232))),
          //       label: Text('Email/Phone no'),
                
          //     ),
              
              
          //   ),),
            //),
            SizedBox(
          height: 10,
          
          ),
         //dropdown2
          
          SizedBox(

child:
 DropdownButtonFormField<String>(
  decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide:
          BorderSide(width: 0, color: Color.fromARGB(190, 199, 245, 228)), //<-- SEE HERE
      borderRadius: BorderRadius.circular(50.0),
    ),
    focusedBorder: OutlineInputBorder(
       //<-- SEE HERE
      borderRadius: BorderRadius.circular(50.0),
      borderSide: BorderSide(color:Color.fromRGBO(199, 245, 228,1) ,width: 0), //<-- SEE HERE
    ),
    
    filled: true,
    fillColor: Color.fromARGB(220, 212, 250, 236),
  ),
  
            value: _selectedState,
            onChanged: (value) {
              setState(() {
                _selectedState = value;
              });
              debugPrint("You selected $_selectedState");
            },
            
            hint: const Center(
                child: Text(
              'State',
              style: TextStyle(color: Colors.black),
            )),
            
            // set the color of the dropdown menu
            dropdownColor: Colors.white,
            icon: const Icon(
              Icons.expand_more,
              color: Color.fromARGB(255, 93, 218, 173),
            ),
            isExpanded: true,

            // The list of options
            items: _state
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          e,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ))
                .toList(),

            // Customize the selected item
            selectedItemBuilder: (BuildContext context) => _state
                .map((e) => Center(
                      child: Text(
                        e,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            ),
                      ),
                    ))
                .toList(),
                
          ),),
SizedBox(
          height: 10,
          
          ),
          //dropdown 3
          SizedBox(

child:
 DropdownButtonFormField<String>(
  decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide:
          BorderSide(width: 0, color: Color.fromARGB(204, 177, 246, 220)), //<-- SEE HERE
      borderRadius: BorderRadius.circular(50.0),
    ),
    focusedBorder: OutlineInputBorder(
       //<-- SEE HERE
      borderRadius: BorderRadius.circular(50.0),
      borderSide: BorderSide(color:Color.fromRGBO(199, 245, 228,1) ,width: 0), //<-- SEE HERE
    ),
    
    filled: true,
    fillColor: Color.fromARGB(220, 212, 250, 236),
  ),
  
            value: _selectedCity,
            onChanged: (value) {
              setState(() {
                _selectedCity = value;
              });
              debugPrint("You selected $_selectedCity");
            },
            
            hint: const Center(
                child: Text(
              'City',
              style: TextStyle(color: Colors.black),
            )),
            
            // set the color of the dropdown menu
            dropdownColor: Colors.white,
            icon: const Icon(
              Icons.expand_more,
              color: Color.fromARGB(255, 93, 218, 173),
            ),
            isExpanded: true,

            // The list of options
            items: _city
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          e,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ))
                .toList(),

            // Customize the selected item
            selectedItemBuilder: (BuildContext context) => _city
                .map((e) => Center(
                      child: Text(
                        e,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            ),
                      ),
                    ))
                .toList(),
                
          ),),
            
             SizedBox(
          height: 20,
          
          ),
            
            SizedBox(
          height: 40,
          
          ),
      //     SizedBox(width:100,
      //     child:
            
      //       ElevatedButton(onPressed:(){
      //         log(uname.text);
      //         log(password.text);
              

      //       }, 
            
      //      style: ElevatedButton.styleFrom(
      //       elevation: 5,
            
      //       shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(20.0)
      //   ),
      //       backgroundColor: Color.fromARGB(255, 93, 218, 173),   
      //      ),
      // child: Text('Login',style: TextStyle(color: Colors.black),),),),
           SizedBox(width: 120,
             child:ElevatedButton(
              
          child: Text('Continue',style: TextStyle(color: Colors.black),),
          style: ElevatedButton.styleFrom(
            
            elevation: 5,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Color.fromARGB(255, 93, 218, 173)
          ),
          
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) =>LoginPage())),
        ),
           ),


            
         
          ],
          
        )
        
      ),


);}
}
