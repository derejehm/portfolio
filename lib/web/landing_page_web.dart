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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/web.jpg", height: heightDevice / 1.7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SanBold("About Me", 40.0),
                    SizedBox(height: 15.0),
                    Sans(
                      "Hello! I'm Dereje Hailemariam I specialized in flutter development.",
                      15.0,
                    ),
                    Sans(
                      "I strive to ensure astounding performance  with  state of  ",
                      15.0,
                    ),
                    Sans(
                      "the art security for Android, Ios, Web, Mac, Linux and Windows",
                      15.0,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Flutter", 15.0),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Firebase", 15.0),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Android", 15.0),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Ios", 15.0),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.greenAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Windows", 15.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Third Page
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SanBold("What I do?", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      shadowColor: Colors.greenAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/webL.png",
                              height: 200.0,
                              width: 200.0,
                            ),
                            SizedBox(height: 10.0),
                            SanBold("Web development", 15.0),
                            Sans(
                              "I specialize in crafting high-performance,",
                              12.0,
                            ),
                            Sans(
                              "user-friendly, and scalable web solutions",
                              12.0,
                            ),
                            Sans("tailored to your business needs.", 12.0),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      shadowColor: Colors.greenAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/app.png",
                              height: 200.0,
                              width: 200.0,
                            ),
                            SizedBox(height: 10.0),
                            SanBold("App development", 15.0),
                            Sans("Transform your ideas into powerful ", 12.0),
                            Sans(
                              "mobile applications ,I build custom iOS  ",
                              12.0,
                            ),
                            Sans("and Android apps .", 12.0),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      shadowColor: Colors.greenAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/firebase.png",
                              height: 200.0,
                              width: 200.0,
                            ),
                            SizedBox(height: 10.0),
                            SanBold("Back-end development", 15.0),
                            Sans(
                              "Power your applications with a robust ",
                              12.0,
                            ),
                            Sans("and scalable back-end ,I design and  ", 12.0),
                            Sans("develop secure APIs", 12.0),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      shadowColor: Colors.greenAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/data.jpg",
                              height: 200.0,
                              width: 200.0,
                            ),
                            SizedBox(height: 10.0),
                            SanBold("Data Analytics", 15.0),
                            Sans("Unlock valuable insights with ", 12.0),
                            Sans("our advanced data analytics ", 12.0),
                            Sans("solutions.", 12.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
