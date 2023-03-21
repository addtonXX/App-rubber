import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  final String imgCard;

  const MyCard({Key? key, 
  
  required this.imgCard}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        // padding: EdgeInsets.all(20),
        // decoration: BoxDecoration(
        //   color: Colors.green[300],
        //   borderRadius: BorderRadius.circular(15),
        // ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
         
          Image.network('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgNByP1EXH1dw5SOS2dmLI_5GFU9D_1ARLCYgVKkCUBvDrDo-DyZqpuj5S2W7vYRJu-M7pVy042ljn-Pr9dKTL3_bDuPjvE0PUK2UgDBwFaHuEg9xlKrz7wjv5PBYQWMTDEgjXjMvkUombu3uW3LnI8lG41SF3XERsA3D8kmgM5KYLj1DTlh-Rb0XoB/s16000/%E0%B8%9B%E0%B8%81.jpg'),
          Image.network('https://cms.dmpcdn.com/news/2020/11/03/593c8780-1d8f-11eb-9275-d9e61fe8653e_original.jpeg'),
          Image.network('https://www.khaosod.co.th/wpapp/uploads/2019/10/%E0%B8%A3%E0%B8%B2.jpg'),
          
          // Text(
          //   '****1365',
          //   // ignore: prefer_const_constructors
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 22,
          //   ),
          // ),
          // SizedBox(
          //   height: 30,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [Text('data'), Text('data')],
          // )
        ]),
      ),
    );
  }
}
