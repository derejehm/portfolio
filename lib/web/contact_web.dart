import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    var heightDevice = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: DrawerWeb(),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 540.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 25.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: Row(
                children: [
                  Spacer(flex: 3),
                  TabsWeb(title: "Home", route: "/"),
                  Spacer(),
                  TabsWeb(title: "Works", route: "/works"),
                  Spacer(),
                  TabsWeb(title: "Blog", route: "/blog"),
                  Spacer(),
                  TabsWeb(title: "About", route: "/about"),
                  Spacer(),
                  TabsWeb(title: "Contact", route: "/contact"),
                  Spacer(),
                ],
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(height: 30.0),
                SanBold("Contact Me", 40.0),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          heading: "First Name",
                          hintText: "Please enter your first name",
                          controller: _firstnameController,
                          validator: (text) {
                            if (text.toString().isEmpty) {
                              return "First name is required.";
                            }
                          },
                          width: 350,
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          heading: "Email",
                          hintText: "Please enter your E-mail",
                          controller: _emailController,
                          validator: (text) {
                            if (text.toString().isEmpty) {
                              return "Email is required.";
                            }
                          },
                          width: 350,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          heading: "Last Name",
                          hintText: "Please enter your last name",
                          controller: _lastnameController,

                          width: 350,
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          heading: "Phone number",
                          hintText: "Please enter your phone number",
                          controller: _phoneController,
                          validator: (text) {
                            if (text.toString().isEmpty) {
                              return "Phone number is required.";
                            }
                          },
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
                  controller: _messageController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "Message is required.";
                    }
                  },
                ),
                SizedBox(height: 20.0),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.greenAccent,
                  child: SanBold("Submit", 20.0),
                  onPressed: () async {
                    final addData = new AddDataFirestore();
                    if (formkey.currentState!.validate()) {
                      if (await addData.addResponse(
                        _firstnameController.text,
                        _lastnameController.text,
                        _emailController.text,
                        _phoneController.text,
                        _messageController.text,
                      )) {
                        formkey.currentState!.reset();
                        DialogError(context, "Message sent successfully");
                      } else {
                        formkey.currentState!.reset();
                        DialogError(context, "Message sent failed");
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
