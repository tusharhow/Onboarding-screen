import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Awesome App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(pages: [
      PageViewModel(
        title: "First",
        body: "This is my first home page",
        image: Image.asset("images/image.png"),
      ),
            PageViewModel(
        title: "Second",
        body: "This is my second home page",
        image: Image.asset("images/image2.png"),
      ),
            PageViewModel(
        title: "Third",
        body: "This is my third home page",
        image: Image.asset("images/image3.png"),
      ),
    ],
    onDone: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
          },
          showNextButton: true,
          next: Text("Next"),
          done: Text("Done"),
          showSkipButton: true,
          skip: Text("Previous"),
          );
        }
      }