import 'package:flutter/material.dart';

class Price_pa extends StatefulWidget {
  const Price_pa({required Key key}) : super(key: key);

  @override
  State<Price_pa> createState() => _Price_paState();
}

class _Price_paState extends State<Price_pa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ราคายางวันนี้   "),
      ),
      body: Container(
        color: Color.fromARGB(255, 112, 219, 243),
        
        child: Center(
          child: Container(
            
            height: 200,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              child: 
               Text("ยางดิบราคา 250 บาท ต่อ กิโลกรัม ",
                  style: TextStyle(fontSize: 30)),
          ),
        ),
      ),
      );
      

  }
}