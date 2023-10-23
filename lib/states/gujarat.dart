import 'package:flutter/material.dart';
import 'package:key2rights/states/gujarat.dart';


class Gj extends StatefulWidget {
  const Gj({super.key});

  @override
  State<Gj> createState() => _Gj();
}

class _Gj extends State<Gj> {

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
              '             Gujarat',

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
              'Subsidy Scheme On Establishment Of - 25 Kadaknath/R.I.R. Birds Unit To Scheduled Tribes',
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
              'Mamta Taruni Abhiyan',
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
              'Stipend Scheme For Poultry Farming Training For Weaker Section',
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
              'Uniform Assistance To SC Students',
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
              'AGR 3 (Farm Mechanization) Scheme For ST Farmers',
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
              'Shri Vajpayee Bankable Yojana',
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
              'Bal Sakha Yojana Scheme',
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
              'Mukhya Mantri Mahila Kisan Sashaktikaran Yojana',
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
              'Stipend Scheme For Poultry Farming Training For Divyang People',
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
              'Krushi Mahotsav',
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
              'Bhagwan Budhdh Scholarship',
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
