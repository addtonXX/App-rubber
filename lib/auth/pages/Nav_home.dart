import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail/Price_01.dart';
import 'package:flutter_application_1/detail/Price_01.dart';
import 'package:flutter_application_1/detail/list_test.dart';
import 'package:flutter_application_1/detail/price_02.dart';
import 'package:flutter_application_1/detail/search.dart';
import 'package:flutter_application_1/screen/page1_price.dart';
import 'package:flutter_application_1/screen/homecam_screen.dart';
import 'package:flutter_application_1/ui.dart';

class homepage1 extends StatefulWidget {
  const homepage1({ Key? key }) : super(key: key);

  @override
  State<homepage1> createState() => _homepage1State();
}

class _homepage1State extends State<homepage1> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
   Home_price(),UI(),const MyWidget(rubber: null),
     ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'หน้าแรก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'วินิจฉัย',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'ค้นหาโรค',),
            
            
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.greenAccent[800],
        onTap: _onItemTapped,
      ),
      
    );
  }
}