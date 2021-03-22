import 'package:flutter/material.dart';
import 'package:food_app_ui/home_page.dart';
// import 'package:image_text_converter/welcome_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new MyHomePage(),
      title: new Text(
        'Please Enter The World \n\t\t\t\t\t\t\t\t\t\t\t\t Of Food',
        textScaleFactor: 2,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      image: new Image.asset(
        'assets/splesh.jpeg',
        fit: BoxFit.cover,
        // color: Colors.amber,
      ),
      loadingText: Text("Loading..."),
      photoSize: MediaQuery.of(context).size.width * 0.4,
      loaderColor: Colors.blue,
    );
  }
}



// splashscreen: ^1.3.5