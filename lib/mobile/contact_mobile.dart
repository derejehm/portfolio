import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: //Contact section
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
        ),
      ),
    );
  }
}
