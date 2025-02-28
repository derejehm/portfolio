import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
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
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: //Contact section
                Form(
              key: formkey,
              child: Wrap(
                runSpacing: 20.0,
                spacing: 20.0,
                alignment: WrapAlignment.center,
                children: [
                  SanBold("Contact me", 35.0),
                  TextForm(
                    heading: "First name",
                    width: widthDevice / 1.4,
                    hintText: "Please type first name",
                    controller: _firstnameController,
                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return "First name is required.";
                      }
                    },
                  ),
                  TextForm(
                    heading: "Last name",
                    width: widthDevice / 1.4,
                    hintText: "Please type last name",
                    controller: _lastnameController,
                  ),
                  TextForm(
                    heading: "Email",
                    width: widthDevice / 1.4,
                    hintText: "Please type email address",
                    controller: _emailController,
                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return "Email is required.";
                      }
                    },
                  ),
                  TextForm(
                    heading: "phone number",
                    width: widthDevice / 1.4,
                    hintText: "Please type phone number",
                    controller: _phoneController,
                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return "Phone number is required.";
                      }
                    },
                  ),
                  TextForm(
                    heading: "Message",
                    width: widthDevice / 1.4,
                    hintText: "Please type message",
                    controller: _messageController,
                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return "Message is required.";
                      }
                    },
                    maxLine: 10,
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
                    onPressed: () async {
                      final addData = new AddDataFirestore();
                      if (formkey.currentState!.validate()) {
                        await addData.addResponse(
                          _firstnameController.text,
                          _lastnameController.text,
                          _emailController.text,
                          _phoneController.text,
                          _messageController.text,
                        );
                        formkey.currentState!.reset();
                        DialogError(context);
                      }
                    },
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
