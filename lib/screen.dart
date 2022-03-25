import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash/wardpage.dart';

//import 'package:flutter_icons/flutter_icons.dart';
//import 'package:google_fonts/google_fonts.dart';

class HomeApp extends StatefulWidget {
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 20),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WardPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: new BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xBF00485f),
              Color(0xA60073ac),
            ],
          ),
        ),
        padding: EdgeInsets.only(top: 140),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              height: 270,
              width: 270,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 20,blurRadius: 90.0)],
                image: new DecorationImage(
                  alignment: Alignment.topCenter,
                  image: new AssetImage(
                    'assets/images/j.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // AnimatedTextKit(
            //   animatedTexts: [
            //     FadeAnimatedText("Let Us Thank God For His Priceless Gift!",
            //         textStyle: GoogleFonts.lobster(
            //             textStyle:
            //                 TextStyle(fontSize: 20, color: Colors.white))),
            //   ],
            // ),
            SizedBox(
               height: 7,),
            Text('Let Us Thank God For His Priceless Gift!\nThe Lord Will Stand With You,And Give You Streangth',textAlign: TextAlign.center,
              style: GoogleFonts.lobster( textStyle: TextStyle(fontSize: 19, color: Colors.white,))),
            SizedBox(
              height: 7,),
            Text("(Corinthians 9.15,2 Tim 4:17)",style: GoogleFonts.lobster( textStyle: TextStyle(fontSize: 15, color: Colors.white,))),

            // TextLiquidFill(
            // text: 'Let Us Thank God For His Priceless Gift!\nThe Lord Will Stand With You,And Give You Streangth',
            //   waveDuration: Duration(seconds: 5),
            //   waveColor:Colors.red,                                 //Color(0x1A00485f),                             // Colors.pink.shade900,
            //   boxBackgroundColor:Colors.white38,
            //  // boxBackgroundColor:Colors.transparent,
            //   boxHeight: 90,
            //   //boxWidth: 550,
            // textAlign:TextAlign.center,
            //
            //   textStyle: GoogleFonts.lobster(
            //       textStyle: TextStyle(
            //           fontSize: 19, color: Colors.pink.shade900,)), //   TextStyle(
            //
            // ),

            // AnimatedTextKit(
            //    animatedTexts: [
            //      FadeAnimatedText("(Corinthians 9.15,2 Tim 4:17)",
            //          textStyle: GoogleFonts.lobster(
            //              textStyle:
            //              TextStyle(fontSize: 11, color: Colors.white))
            //
            //      ),
            //    ],
            // ),
            // SizedBox(
            //   height: 1,
           // ),
            // Container(
            //   height: 20,
            //   width: 20,
            //   child: Image.asset(
            //     'assets/images/c.png',
            //     height: 40,
            //     width: 40,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
