import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("หน้าที่2")
      )
,
      body: ElevatedButton(child: Text("กลับ"),onPressed: (){
        Navigator.pop(context);
      },),
      
    );
  }
}


