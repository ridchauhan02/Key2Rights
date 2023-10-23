

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:global_bottom_navigation_bar/widgets/bottom_navigation_item.dart';
import 'package:global_bottom_navigation_bar/widgets/scaffold_bottom_navigation.dart';
import 'package:key2rights/DocumentPage.dart';
import 'package:key2rights/EducationPage.dart';
import 'package:key2rights/HealthPage.dart';
import 'package:key2rights/OthersPage.dart';
import 'package:key2rights/SignUpPage.dart';
import 'package:key2rights/StatePage.dart';
import 'package:key2rights/states/gujarat.dart';


class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(''),
    Text(''),
Text(''),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Row
          (
          mainAxisAlignment: MainAxisAlignment.start,
            children:
            [
              ClipRRect(
            borderRadius: BorderRadius.circular(280.0),
              child: Image.asset('assets/image/12.jpg',fit: BoxFit.contain,height: 70,), 

              ),
            Container(padding: const EdgeInsets.all(8.0), 
            child: Text(
              'Your Gateway to Government Benefits',
              style: TextStyle(fontFamily: 'Open Sans', fontSize: 12)
              ))

            ],
          ),
        toolbarHeight: 120,
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Color.fromARGB(255, 158, 234, 206), Colors.white])),
          )),




          
          body:
          Column( 
             children: [
    Expanded(
      child:
          ListView(
        children: [
          CarouselSlider(
              items: [
                  
                //1st Image of Slider
                Container(

                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color:Color.fromARGB(255, 255, 187, 209),
                    borderRadius: BorderRadius.circular(8.0),
                  
                  ),
                  child: Center(child: Text("Latest Scheme 1",
                  style: TextStyle(fontSize: 20),)),
                ),
                  
                //2nd Image of Slider
               Container(

                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 187, 209),
                    borderRadius: BorderRadius.circular(8.0),
                  
                  ),
                  child: Center(child: Text("Latest Scheme 2",
                  style: TextStyle(fontSize: 20),)),
                ),
              
                  
                
                  
                //5th Image of Slider
                Container(

                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 187, 209),
                    borderRadius: BorderRadius.circular(8.0),
                  
                  ),
                  child: Center(child: Text("Latest Scheme 3",
                  style: TextStyle(fontSize: 20),)),
                ),
  
          ],
              
            //Slider Container properties
              options: CarouselOptions(
                height: 150.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
          ),
        SizedBox(height: 30,),
       Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
  children:<Widget>[  
            Container(  
              margin: EdgeInsets. symmetric(horizontal: 10 *0.1, vertical: 10 *0.05),   
              height: 125,width: 130,
              child: ElevatedButton(  
                child: Text('      All \nSchemes', style: TextStyle(fontSize: 15, color: Colors.black),), 
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 158, 234, 206),
                    shape:
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    )
                   ),
                   
           
                onPressed: () {
                   Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StatePages()),
          );
                },  
              ),  
            ),
             
            Container(  
              margin: EdgeInsets. symmetric(horizontal: 10 *0.1, vertical: 10 *0.05), 
              height: 125,width: 130, 
              child: ElevatedButton(  
                child: Text('Elegibility\n  Criteria', style: TextStyle(color: Colors.black),),  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 158, 234, 206),
                    shape:
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    )
          ),
                onPressed: () {},  
              ),  
            ),  
          ]  
),

          Column(
          children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HealthPage()),
            );
          },
          child: Card(
                shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
             ),
             elevation: 10,
             color: Color.fromARGB(255, 255, 187, 209),
            margin: EdgeInsets.all(18.0),
            child:
            SizedBox(
              width: 320,
              height: 50,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
             
              child: Text(
                'Health',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0,),
              ),
            ),),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EducationPage()),
            );
          },
          child: Card(
                shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
             ),
             elevation: 10,
             color:Color.fromARGB(255, 255, 187, 209),
            margin: EdgeInsets.all(2.0),
            child:
            SizedBox(
              width: 320,
              height: 50,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
             
              child: Text(
                'Education',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0,),
              ),
            ),),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OthersPages()),
            );
          },
          child: Card(
                shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
             ),
             elevation: 10,
             color:Color.fromARGB(255, 255, 187, 209),
            margin: EdgeInsets.all(10.0),
            child:
            SizedBox(
              width: 320,
              height: 50,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
             
              child: Text(
                'Others',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0,),
              ),
            ),),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DocumentPage()),
            );
          },
          child: Card(
                shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
             ),
             elevation: 10,
             color: Color.fromARGB(255, 255, 187, 209),
            margin: EdgeInsets.all(2.0),
            child:
            SizedBox(
              width: 320,
              height: 50,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
             
              child: Text(
                'Documents',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0,),
              ),
            ),),
          ),
        ),
        
      ],
          
       // child: _widgetOptions.elementAt(_selectedIndex),
      ),
          
       
        ],
        
        
      ),),
      


      ],
      
      ),












      //bottom navigation bar
       
    );
  }
}
