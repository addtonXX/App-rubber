import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/auth/pages/Nav_home.dart';

import 'package:flutter_application_1/ui.dart';

class Screen_home extends StatefulWidget {
  const Screen_home({Key? key}) : super(key: key);

  @override
  State<Screen_home> createState() => _Screen_homeState();
}

class _Screen_homeState extends State<Screen_home> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            '' + user.email!,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            Text('\n ออกจากระบบ'),
            IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                })
          ]),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Container(
                        child: ElevatedButton.icon(
                            onPressed: null,
                            icon: Icon(Icons.feed),
                            label: Text(
                              'ราคายางพารา',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )))),
                SizedBox(
                  height: 80,
                ),
                Text('วิเคราะห์โรคต้นยางพาราด้วย Ai',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: CircleAvatar(
                  radius: 100,
                  child: Image.asset('assets/ic-rubber.png'),
                )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(children: [
                    IconButton(
                      icon: Icon(Icons.camera_alt),
                      iconSize: 60,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UI(
                            key: null,
                          ),
                        ));
                      },
                    ),
                    Text(
                      'วินิจฉัย',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),

                      // ),SizedBox(height: 20,),Image.network('https://cms.dmpcdn.com/news/2020/11/03/593c8780-1d8f-11eb-9275-d9e61fe8653e_original.jpeg',width: double.infinity,)
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
