import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    HomeScreen()
            )
        )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(

            child: Column(
              children: [
                Lottie.network(
                    "https://assets1.lottiefiles.com/packages/lf20_fgShtg.json",
                    height: size.height / 2),
                Container(
                    child: Lottie.asset("Assets/couple1.json",
                        height: size.height / 2.2)),
              ],
            ),
          ),
        ));
  }
}
