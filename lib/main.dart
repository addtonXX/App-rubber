import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/pages/splashs_screen.dart';
import 'package:flutter_application_1/detail/Price_01.dart';
import 'package:flutter_application_1/detail/price_02.dart';
import 'package:flutter_application_1/detail/search.dart';
import 'package:flutter_application_1/detail/user_page.dart';
import 'package:flutter_application_1/auth/main_page.dart';
import 'package:flutter_application_1/auth/pages/Nav_home.dart';
import 'package:flutter_application_1/screen/homecam_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/auth/pages/login_Page.dart';
import 'package:flutter_application_1/ui.dart';
import 'package:flutter_application_1/detail/search.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp( MaterialApp(
      home:SplashScreen(),
      // home:  Home_price(),
      // home:UI(),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      debugShowCheckedModeBanner: false,
    ));
  }

