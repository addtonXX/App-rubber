import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail/Price_01.dart';
import 'package:flutter_application_1/detail/list_test.dart';
import 'package:flutter_application_1/detail/my_button.dart';
import 'package:flutter_application_1/detail/my_card.dart';
import 'package:flutter_application_1/detail/rubber.dart';
import 'package:flutter_application_1/detail/rubber_list.dart';
import 'package:flutter_application_1/detail/search.dart';
import 'package:flutter_application_1/screen/page1_price.dart';
import 'package:flutter_application_1/ui.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home_price extends StatefulWidget {
  const Home_price({
    Key? key,
  }) : super(key: key);

  @override
  State<Home_price> createState() => _Home_priceState();
}

class _Home_priceState extends State<Home_price> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 176, 244, 193),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Rubber AI',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      //
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: IconButton(
                          onPressed: () {

                            FirebaseAuth.instance.signOut();
                          }, icon: Icon(Icons.logout)))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  Image.network(
                      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgNByP1EXH1dw5SOS2dmLI_5GFU9D_1ARLCYgVKkCUBvDrDo-DyZqpuj5S2W7vYRJu-M7pVy042ljn-Pr9dKTL3_bDuPjvE0PUK2UgDBwFaHuEg9xlKrz7wjv5PBYQWMTDEgjXjMvkUombu3uW3LnI8lG41SF3XERsA3D8kmgM5KYLj1DTlh-Rb0XoB/s16000/%E0%B8%9B%E0%B8%81.jpg'),
                  Image.network(
                      'https://cms.dmpcdn.com/news/2020/11/03/593c8780-1d8f-11eb-9275-d9e61fe8653e_original.jpeg'),
                  Image.network(
                      'https://www.khaosod.co.th/wpapp/uploads/2019/10/%E0%B8%A3%E0%B8%B2.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(controller: _controller, count: 3),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // send but1

                  Column(
                    children: [
                      Container(
                          height: 90,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade600,
                                    blurRadius: 10),
                              ]),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => MyWidget(
                                          rubber: null,
                                        )));
                              },
                              child: Image.asset(
                                'assets/camera.png',
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'ค้นหาโรค',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: 90,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade600,
                                    blurRadius: 10),
                              ]),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => UI(key: null)));
                              },
                              child: Image.asset(
                                'assets/camera.png',
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'วินิจฉัย',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: 90,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade600,
                                    blurRadius: 10),
                              ]),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => MyHomePage()));
                              },
                              child: Image.asset(
                                'assets/document.png',
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'ราคายาง',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
