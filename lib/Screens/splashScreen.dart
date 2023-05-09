

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:managment/Screens/home.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:managment/widgets/bottomnavigationbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 10), () {
      Navigator.push(context, MaterialPageRoute(builder:(context) => Bottom(),)
      );
    }
    );
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.network(
                "https://assets1.lottiefiles.com/packages/lf20_xx9zron9.json"),
            const SizedBox(height: 10),
            Text(
              'Money Management App',
              style: GoogleFonts.chivo(
                color: Colors.grey,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),

    );
  }
}