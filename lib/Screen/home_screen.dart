import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "Assets/bg3.jpg",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Love Calculator",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        drawer: Drawer(),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "Assets/bg3.jpg",
                  ),
                  fit: BoxFit.cover)),
          child: ListView(
            children: [
              Container(
                height: 250,
                child: Lottie.asset(
                  "Assets/heart.json",
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.female,
                      color: Colors.white,
                      size: 30,
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                    ),
                    // border: OutlineInputBorder()
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Partner Name",
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    prefixIcon: Icon(
                      Icons.male,
                      color: Colors.white,
                      size: 30,
                    ),

                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                    ),
                    // border: OutlineInputBorder()
                  ),
                ),
              ),
              Container(
                height: 55,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.red[1000],
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(width: 3, color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red[200],
                      size: 40,
                    ),
                    Text(
                      "Calculate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red[200],
                      size: 40,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
