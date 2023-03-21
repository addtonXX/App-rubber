import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/auth/pages/Nav_home.dart';


import 'auth_page.dart';

class MainPage extends StatelessWidget {
   const MainPage({ required key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder:(context, snapshot) {
          if (snapshot.hasData){
            return homepage1();
          }else{
            return AuthPage();
          }
        }
    ),);
  }
}