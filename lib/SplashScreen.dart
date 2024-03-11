import 'package:finalfinalfinalfinal/main.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:finalfinalfinalfinal/screen/product_list.dart';
import 'package:finalfinalfinalfinal/face_filters_screen.dart';
class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      durationInSeconds:5,
      title: Text(
        "AR Accessories",
        style: TextStyle(
          fontSize: 55,
          color: Colors.deepPurpleAccent,
          fontFamily: "Signatra",
        ),

      ),
      showLoader: true,
      logo:Image.asset("images/icon.png"),
      backgroundColor:Colors.white,
      logoWidth: 50,
      loaderColor:Colors.deepPurple,
      loadingText:Text(
        "Mini Project",
        style: TextStyle(
          color:Colors.deepPurpleAccent,
          fontSize: 16.0,
          fontFamily: "Brand Bold"
        )
      ),
      navigator:FaceFiltersScreen(),

    );
  }
}
