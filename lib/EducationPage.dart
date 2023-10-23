import 'package:flutter/material.dart';
import 'package:key2rights/states/gujarat.dart';


class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPage();
}

class _EducationPage extends State<EducationPage> {

   int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(''),
    Text(''),
    Text(''),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
   


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        title: new Row
          (
          mainAxisAlignment: MainAxisAlignment.start,
            children:
            [
              
             
            Container(padding: const EdgeInsets.all(8.0), 
            child: Text(
              '          Education',

              style: TextStyle( fontSize: 20, color: Colors.black)
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
                    colors: <Color>[Color.fromARGB(255, 158, 234, 206), Colors.white])
                    ),
          )),

          body: 
         SingleChildScrollView(
          scrollDirection: Axis.vertical,
          
         
         child: Column(children: [
           Center(
          child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>Gj()),
          );
        },
        child: Card(
              shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
           ),
           elevation: 10,
           color: Color.fromARGB(255, 255, 187, 209),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'National Overseas Scholarship For Scheduled Caste Etc. Candidates',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0,),
            ),
          ),),
        ),
      ),
    ),

       Center(
          child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Gj()),
          );
        },
        child: Card(
              shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
           ),
           elevation: 10,
           color: Color.fromARGB(255, 255, 187, 209),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Pre-Matric Disability Scholarship - Uttarakhand',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0,),
            ),
          ),),
        ),
      ),
    ),
       
          
       // child: _widgetOptions.elementAt(_selectedIndex),
       Center(
          child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Gj()),
          );
        },
        child: Card(
              shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
           ),
           elevation: 10,
           color: Color.fromARGB(255, 255, 187, 209),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Junior Merit (Class - 11 To 12)',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0,),
            ),
          ),),
        ),
      ),
          
       // child: _widgetOptions.elementAt(_selectedIndex),
      ),
        Center(
          child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Gj()),
          );
        },
        child: Card(
              shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
           ),
           elevation: 10,
           color: Color.fromARGB(255, 255, 187, 209),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Award Of Scholarships To Young Artists In Different Cultural Fields',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0,),
            ),
          ),),
        ),
      ),
          
       // child: _widgetOptions.elementAt(_selectedIndex),
      ),
       Center(
          child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Gj()),
          );
        },
        child: Card(
              shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
           ),
           elevation: 10,
           color: Color.fromARGB(255, 255, 187, 209),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Scheme For Grant Of Rewards To The Children Of Salt Labourers',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0,),
            ),
          ),),
        ),
      ),
          
       // child: _widgetOptions.elementAt(_selectedIndex),
      ),
       Center(
          child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Gj()),
          );
        },
        child: Card(
              shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
           ),
           elevation: 10,
           color: Color.fromARGB(255, 255, 187, 209),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Ministry Of Environment, Forest And Climate Change Internship Scheme',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0,),
            ),
          ),),
        ),
      ),
          
       // child: _widgetOptions.elementAt(_selectedIndex),
      ),
       Center(
          child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Gj()),
          );
        },
        child: Card(
              shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
           ),
           elevation: 10,
           color: Color.fromARGB(255, 255, 187, 209),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Dr. D.S. Kothari Research Grant For Newly Recruited Faculty Members',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0,),
            ),
          ),),
        ),
      ),
          
       // child: _widgetOptions.elementAt(_selectedIndex),
      ),

      Center(
          child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Gj()),
          );
        },
        child: Card(
              shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
           ),
           elevation: 10,
           color: Color.fromARGB(255, 255, 187, 209),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Scheme For Study In Abroad',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0,),
            ),
          ),),
        ),
      ),
          
       // child: _widgetOptions.elementAt(_selectedIndex),
      ),

       
      

      ],
         ),
         ),
         
      
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 171, 242, 232),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink[200],
        onTap: _onItemTapped,
      ),
      

    
      
);
}
}
