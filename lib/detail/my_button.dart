import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 90,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade600, blurRadius: 10),
                ]),
            child: Center(
              child: Image.asset(
                '',
              ),
            )),
        SizedBox(
          height: 12,
        ),
        Text(
         'ถ่ายรูป',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}
