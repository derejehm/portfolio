import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Spacer(flex: 3),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Works"),
            Spacer(),
            TabsWeb("Blogs"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer(),
          ],
        ),
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
      ),
      body: ListView(
        children: [
          //First Page
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      child: SanBold("Hello I'm", 15.0),
                    ),
                    SizedBox(height: 15.0),
                    SanBold("Dereje Hailemariam", 55.0),
                    Sans("Flutter developer", 30.0),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20.0),
                        Sans("hailemariam013@gmail.com", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 20.0),
                        Sans("+251 912657147", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20.0),
                        Sans("Addis Ababa, Ethiopia", 15.0),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.greenAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundImage: AssetImage(
                        "assets/derejepic_circle.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Second Page
          Container(
            height: heightDevice / 1.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SanBold("About Me", 40.0)],
            ),
          ),
        ],
      ),
    );
  }
}
