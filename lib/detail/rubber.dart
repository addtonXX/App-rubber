import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail/rubber_list.dart';

class RubberPage extends StatelessWidget {
  final Rubber rubber;

  const RubberPage({Key? key, required this.rubber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        rubber.title,
        textAlign: TextAlign.center,
      )),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          rubber.urlImage,
                          height: 400,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 15),
                        Text(rubber.title,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(height: 10),
                        Text(rubber.namerubber),
                        // Text(user.boxname),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

    //-------------------------------
    // return Scaffold(
    //   appBar: AppBar(title: Text(rubber.title)),
    //   body: Center(
    //     child: Image.asset(
    //       rubber.urlImage,
    //       width: 300,
    //       height: 300,
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    // );
  }
}
