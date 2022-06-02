//
// StartingPages class defines the widget for the starting sliding pages
// of the application. These starting pages to application show two
// important reminders and one motivation quote.
// Flutter package intro_views_flutter 3.2.0 was used and more
// information about the package and how to use it can be found
// here :https://pub.dev/packages/intro_views_flutter
// Animated text was also used to make the slide screen more interesting,
// more details on the animated text widget can be found here:
// https://pub.dev/packages/animated_text_kit

import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:project4/Calendar.dart';
import 'package:project4/Quotes.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class StartingPages extends StatelessWidget {
  // const StartingPages({Key? key}) : super(key: key);

  // 1st step: define the starting pages
  final pages = [
    // REMINDER PAGE
    PageViewModel(
      pageBackground: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated,
            colors: [
              Colors.indigo,
              Colors.purpleAccent,
            ],
          ),
        ),
      ),
      // pageColor: Color(0xFF03A9F4),
      bubble: Icon(Icons.add_alarm_rounded),
      body: Column(children: [
        AnimatedTextKit(animatedTexts: [
          TyperAnimatedText('do your homework',
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
            speed: Duration(milliseconds: 60),
          )
        ],
            repeatForever: true),
        // Text('take our trash'),
        SizedBox(height: 80,)
      ],),
      title: Text("REMINDER"),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
      // mainImage:
    ),
    PageViewModel(
      pageBackground: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated,
            colors: [
              Colors.teal,
              Colors.amberAccent,
            ],
          ),
        ),
      ),
      // pageColor: const Color(0xFF8BC34A),
      bubble: Icon(Icons.add_alarm_rounded),
      body: Column(children: [
        AnimatedTextKit(animatedTexts: [
          TyperAnimatedText('take out trash',
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
            speed: Duration(milliseconds: 60),
          )
        ],
            repeatForever: true),
        // Text('take our trash'),
        SizedBox(height: 80,)
      ],),
      title: const Text('REMINDER'),
      // mainImage: Image.asset(),
      titleTextStyle:
      const TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageBackground: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated,
            colors: [
              Colors.orange,
              Colors.pinkAccent,
            ],
          ),
        ),
      ),
      bubble: Icon(Icons.wb_sunny_sharp),
      body: Column(children: [
        AnimatedTextKit(
            animatedTexts: [
          RotateAnimatedText(getQuote(),
            // duration: Duration(milliseconds: 40),
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          RotateAnimatedText(getQuote(),
            // duration: Duration(milliseconds: 40),
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          RotateAnimatedText(getQuote(),
            // duration: Duration(milliseconds: 40),
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),


      ],
        repeatForever: true,),
  // SizedBox(
  //     height: 80,
  //     )
  ],

      ),
      // Container(
      //   width: 500,
      //   height: 500,
      //   // alignment: Alignment.topCenter,
      //   // transformAlignment: Alignment.topCenter,
      //   child: Text(getQuote()),
      //   decoration: BoxDecoration(
      //     border: Border.all(
      //       color: Colors.black,
      //       width: 2,
      //     ),
      //     borderRadius: BorderRadius.circular(5)
      //   ),
      // ),
      title: Text('Quote of the Day', style: TextStyle(fontSize: 30),),
      // mainImage: Image.asset(),
      titleTextStyle:
      const TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project 4: Calendar',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Builder(
        builder: (context) =>
            IntroViewsFlutter(
              pages,
              showNextButton: true,
              showBackButton: true,
              showSkipButton: true,
              skipText: Text('GO TO CALENDAR'),
              onTapSkipButton: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => Calendar()));
              },
              onTapDoneButton: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => Calendar()));
              },
              pageButtonTextStyles: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
      ),
    );
  }
}
