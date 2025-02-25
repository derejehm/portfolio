import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  urlLauncher(String imgPhath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        imgPhath,
        colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
        width: 35,
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

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

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
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
          //Intro , First Section
          CircleAvatar(
            radius: 117.0,
            backgroundColor: Colors.greenAccent,
            child: CircleAvatar(
              radius: 110.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/derejepic_circle.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25.0),
                Column(
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
                        horizontal: 20.0,
                      ),
                      child: SanBold("Hello I'm", 15.0),
                    ),
                    SanBold("Dereje Hailemariam", 35.0),
                    Sans("Flutter developer", 20.0),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(height: 40.0),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        Sans("hailemariam013@gmail.com", 15.0),
                        Sans("+251 912657147", 15.0),
                        Sans("Addis Ababa, Ethiopia", 15.0),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          //About me , Second Section
          SizedBox(height: 90.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                SanBold("About me", 35.0),
                Sans(
                  "Hello! I'm Dereje Hailemariam I specialized in flutter development.",
                  15.0,
                ),
                Sans(
                  "I strive to ensure astounding performance  with  state of ",
                  15.0,
                ),
                Sans(
                  "the art security for Android, Ios, Web, Mac, Linux and Windows",
                  15.0,
                ),
                SizedBox(height: 10.0),
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
              ],
            ),
          ),
          SizedBox(height: 60.0),
          //Third Section what i do
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SanBold("What i do?", 35.5),
              AnimatedCard(
                imagePath: "assets/webL.png",
                text: "Web development",
                width: 300.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCard(
                imagePath: "assets/app.png",
                text: "App development",
                fit: BoxFit.contain,
                width: 300.0,
                reverse: true,
              ),
              SizedBox(height: 35.0),
              AnimatedCard(
                imagePath: "assets/firebase.png",
                text: "Back-end development",
                width: 300.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCard(
                imagePath: "assets/data.jpg",
                text: "Data Analytics",
                fit: BoxFit.contain,
                width: 300.0,
              ),
              SizedBox(height: 60.0),

              //Contact section
              Wrap(
                runSpacing: 20.0,
                spacing: 20.0,
                alignment: WrapAlignment.center,
                children: [
                  SanBold("Contact me", 35.0),
                  TextForm(
                    heading: "First name",
                    width: widthDevice / 1.4,
                    hintText: "Please type first name",
                  ),
                  TextForm(
                    heading: "Last name",
                    width: widthDevice / 1.4,
                    hintText: "Please type last name",
                  ),
                  TextForm(
                    heading: "Email",
                    width: widthDevice / 1.4,
                    hintText: "Please type email address",
                  ),
                  TextForm(
                    heading: "phone number",
                    width: widthDevice / 1.4,
                    hintText: "Please type phone number",
                  ),
                  TextForm(
                    heading: "Message",
                    width: widthDevice / 1.4,
                    hintText: "Please type message",
                    maxLine: 10.0,
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
                  SizedBox(height: 20.0),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
