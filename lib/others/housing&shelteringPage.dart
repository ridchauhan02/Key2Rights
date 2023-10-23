import 'package:flutter/material.dart';
import 'package:key2rights/states/gujarat.dart';


class HandS extends StatefulWidget {
  const HandS({super.key});

  @override
  State<HandS> createState() => _HandS();
}

class _HandS extends State<HandS> {

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
              '           Housing & Shelter',

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
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Babu Jagjivan Ram Chhatrawas Yojna',
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
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Pradhan Mantri Awas Yojana - Urban',
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
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Homes For Intellectually Impaired Persons',
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
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Mukhyamantri Aawasiye Bhu-Adhikaar Yojana',
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
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'NIRMAN SHRAMIK PUCCA GHAR YOJANA',
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
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Sardar Patel Awas Yojana',
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
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Grant In Aid To Old Age Home',
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
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Boarding House Stipend Scheme (Tripura Govt.)',
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
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Bal Ashrams',
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
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Nari Niketans',
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
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Pedalandariki Illu',
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
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
            child: Text(
              'Residential School For Blinds',
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
        selectedItemColor: Color.fromARGB(255, 248, 175, 238),
        onTap: _onItemTapped,
      ),
      

    
      
);
}
}
