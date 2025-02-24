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
    var widthDevice = MediaQuery.of(context).size.width;
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
                Image.asset("assets/web.jpg", height: heightDevice / 1.9),
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
                    AnimatedCardWeb(
                      imagePath: "assets/webL.png",
                      text: "Web development",
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/app.png",
                      text: "App development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/firebase.png",
                      text: "Back-end development",
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/data.jpg",
                      text: "Data Analytics",
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Forth Page
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SanBold("Contact Me", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          heading: "First Name",
                          hintText: "Please enter your first name",
                          width: 350,
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          heading: "Email",
                          hintText: "Please enter your E-mail",
                          width: 350,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          heading: "Last Name",
                          hintText: "Please enter your last name",
                          width: 350,
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          heading: "Phone number",
                          hintText: "Please enter your phone number",
                          width: 350,
                        ),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  heading: "Message",
                  width: widthDevice / 1.5,
                  maxLine: 10.0,
                  hintText: "Please enter your message",
                ),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.greenAccent,
                  child: SanBold("Submit", 20.0),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
