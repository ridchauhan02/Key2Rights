import 'package:flutter/material.dart';

class ElegibilityPage extends StatefulWidget {
  const ElegibilityPage({super.key});

  @override
  State<ElegibilityPage> createState() => _StatePagesState();
}

class _StatePagesState extends State<ElegibilityPage> {

   int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(''),
    Text(''),
    Text(''),
  ];

  void
   _onTap(int index) async {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        setState(() => Text('Home'));
        break;
      
      case 1:
        setState(() =>Text('Search'));
        break;
      case 2:
        setState(() => Text('Menu'));
        await showMenu(
          context: context,
          position: RelativeRect.fromLTRB(1000.0, 1000.0, 0.0, 0.0),
          
          items: [
            PopupMenuItem(
              child: Text("Settings"),
            ),
            PopupMenuItem(
              child: Text("Profile"),
            ),
            PopupMenuItem(
              child: Text("Query"),
            ),
            PopupMenuItem(
              child: Text("Help"),
            ),
            PopupMenuItem(
              child: Text("Logout"),
            ),
          ],
          elevation: 8.0,
        );
        break;
      default:
        setState(() => Text('Home'));
    }}
   
final List<String> _language = ["English", "Hindi", "Gujarati", "Marathi"];

  // the selected value
  String? _selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
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
              '     Elegibility Criteria',

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
        
        child: Card(
              shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
           ),
           elevation: 10,
           color: Color.fromARGB(255, 234, 165, 188),
          margin: EdgeInsets.all(16.0),
          child:
          SizedBox(
            height: 700,
            width: 350,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
           
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
                
          ),

          
          ),),
        ),
      ),
    ),

     ] ),
          
       // child: _widgetOptions.elementAt(_selectedIndex),
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
            label: 'menu',
            
          ),
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 248, 175, 238),
        // onTap: _onItemTapped,
        onTap:_onTap,
      )

      
         );
         
         
      
      
     
      

    
      
    
  }
  
}