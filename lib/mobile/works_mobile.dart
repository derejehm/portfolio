import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        endDrawer: DrawerMobile(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.black, size: 35.0),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/contact_image.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(height: 20.0),
                  SanBold("Works", 35.0),
                  SizedBox(height: 20.0),
                  AnimatedCard(
                    imagePath: "assets/dereje_portifo.png",
                    height: 150.0,
                    width: 300.0,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 30.0),
                  SanBold("Portfolio", 20.0),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                      "Deployed in Android, IOS, Web, the portfolio project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for the back-end.",
                      15.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
