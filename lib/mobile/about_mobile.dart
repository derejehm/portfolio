import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    tealContainer(String text) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.greenAccent,
            style: BorderStyle.solid,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: EdgeInsets.all(7.0),
        child: Sans(text, 15.0),
      );
    }

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 35.0, color: Colors.black),
        ),
        endDrawer: DrawerMobile(),
        body: ListView(
          children: [
            //Introduction , first section
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Colors.greenAccent,
              child: CircleAvatar(
                radius: 113.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/derejepic_circle.png",
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  SanBold("About me", 35.0),
                  SizedBox(height: 10.0),
                  Sans(
                    "Hello! I'm Dereje Hailemariam I specialized in flutter development. I strive to ensure astounding performance  with  state of the art security for Android, Ios, Web, Mac, Linux and Windows",
                    15.0,
                  ),
                  SizedBox(height: 20.0),
                  Wrap(
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                      tealContainer("Flutter"),
                      tealContainer("Firebase"),
                      tealContainer("Android"),
                      tealContainer("Ios"),
                      tealContainer("Windows"),
                    ],
                  ),

                  SizedBox(height: 40.0),
                  //Web Development second page
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedCard(imagePath: "assets/webL.png", width: 200.0),
                      SizedBox(height: 30.0),
                      SanBold("Web development", 20.0),
                      SizedBox(height: 10.0),
                    ],
                  ),
                  Sans(
                    "I'm here to build your presence online with state of art web apps.",
                    15.0,
                  ),

                  //App development third page
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedCard(
                        imagePath: "assets/app.png",
                        width: 200.0,
                        reverse: true,
                      ),
                      SizedBox(height: 30.0),
                      SanBold("App development", 20.0),
                      SizedBox(height: 10.0),
                    ],
                  ),
                  Sans(
                    "Do you need a high-performance, responsive and beautiful app? Don't worry, I've  got you covered .",
                    15.0,
                  ),

                  //Back-end development
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedCard(
                        imagePath: "assets/firebase.png",
                        width: 200.0,
                        reverse: true,
                      ),
                      SizedBox(height: 30.0),
                      SanBold("Back-end development", 20.0),
                      SizedBox(height: 10.0),
                    ],
                  ),
                  Sans(
                    "Do you want your back-end to be highly  scalable and secure? Let's have a conversation on how I can help you with that.",
                    15.0,
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
