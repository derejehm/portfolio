import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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

final TextEditingController _firstnameController = TextEditingController();
final TextEditingController _lastnameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _phoneController = TextEditingController();
final TextEditingController _messageController = TextEditingController();

class TabsWeb extends StatefulWidget {
  final title;
  final route;
  const TabsWeb({super.key, this.title, this.route});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
        },
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          curve: Curves.elasticIn,
          style:
              isSelected
                  ? GoogleFonts.oswald(
                    shadows: [
                      Shadow(color: Colors.black, offset: Offset(0, -8)),
                    ],
                    fontSize: 25.0,
                    color: Colors.transparent,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationColor: Colors.greenAccent,
                  )
                  : GoogleFonts.oswald(color: Colors.black, fontSize: 20.0),
          child: Text(widget.title),
        ),
      ),
    );
  }
}

class TabListWeb extends StatefulWidget {
  const TabListWeb({super.key});

  @override
  State<TabListWeb> createState() => _TabListWebState();
}

class _TabListWebState extends State<TabListWeb> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class TabsMobile extends StatefulWidget {
  final text;
  final route;

  const TabsMobile({super.key, @required this.text, @required this.route});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(fontSize: 20.0, color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
    );
  }
}

class AbelCustom extends StatelessWidget {
  final text;
  final size;
  final color;
  final fontWeight;

  const AbelCustom({
    super.key,
    @required this.text,
    @required this.size,
    this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        fontSize: size,
        color: color ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}

class SanBold extends StatelessWidget {
  final text;
  final size;
  const SanBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.openSans(fontSize: size));
  }
}

class TextForm extends StatelessWidget {
  final heading;
  final width;
  final hintText;
  final maxLine;
  final controller;
  final validator;

  const TextForm({
    super.key,
    @required this.heading,
    @required this.width,
    @required this.hintText,
    this.maxLine,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16.0),
        SizedBox(height: 5.0),

        SizedBox(
          width: width,
          child: TextFormField(
            controller: controller,
            validator: validator,
            maxLines: maxLine,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14.0),
            ),
          ),
        ),
      ],
    );
  }
}

class AnimatedCard extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;

  const AnimatedCard({
    super.key,
    @required this.imagePath,
    this.text,
    this.fit,
    this.reverse,
    this.height,
    this.width,
  });

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(vsync: this);
  // }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.greenAccent),
        ),
        shadowColor: Colors.greenAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height ?? 200.0,
                width: widget.width ?? 200.0,
                fit: widget.fit,
                filterQuality: FilterQuality.high,
              ),
              SizedBox(height: 10.0),
              widget.text == null ? SizedBox() : SanBold(widget.text, 15.0),
              // Sans("Unlock valuable insights with ", 12.0),
              // Sans("our advanced data analytics ", 12.0),
              // Sans("solutions.", 12.0),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerWeb extends StatelessWidget {
  const DrawerWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 72,
            backgroundColor: Colors.greenAccent,
            child: CircleAvatar(
              radius: 70.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/derejepic_circle.png"),
            ),
          ),
          SizedBox(height: 15.0),
          SanBold("Dereje Hailemariam", 25.0),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              urlLauncher(
                "assets/instagram.svg",
                "https://www.instagram.com/dereje013/",
              ),
              urlLauncher(
                "assets/linkedin.svg",
                "https://www.linkedin.com/in/dereje-hailemariam-3876a112a/",
              ),
              urlLauncher("assets/github.svg", "https://github.com/derejehm/"),
            ],
          ),
        ],
      ),
    );
  }
}

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2.0, color: Colors.black),
              ),
              child: Image.asset("assets/derejepic_circle.png"),
            ),
          ),
          TabsMobile(text: "Home", route: "/"),
          SizedBox(height: 20.0),
          TabsMobile(text: "Works", route: "/works"),
          SizedBox(height: 20.0),
          TabsMobile(text: "Blog", route: "/blog"),
          SizedBox(height: 20.0),
          TabsMobile(text: "About", route: "/about"),
          SizedBox(height: 20.0),
          TabsMobile(text: "Contact", route: "/contact"),
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              urlLauncher(
                "assets/instagram.svg",
                "https://www.instagram.com/dereje013/",
              ),
              urlLauncher(
                "assets/linkedin.svg",
                "https://www.linkedin.com/in/dereje-hailemariam-3876a112a/",
              ),
              urlLauncher("assets/github.svg", "https://github.com/derejehm/"),
            ],
          ),
        ],
      ),
    );
  }
}

class AddDataFirestore {
  CollectionReference response = FirebaseFirestore.instance.collection(
    "message",
  );
  Future<bool> addResponse(
    final firstname,
    final lastname,
    final email,
    final phone,
    final message,
  ) {
    return response
        .add({
          'frist_name': firstname,
          'last_name': lastname,
          'email': email,
          'phone_number': phone,
          'message': message,
        })
        .then((onValue) => true)
        .catchError((error) => false);
  }
}

Future DialogError(BuildContext context, String title) {
  return showDialog(
    context: context,
    builder:
        (BuildContext context) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          title: SanBold(title, 20.0),
        ),
  );
}

class ContactFormMobile extends StatefulWidget {
  const ContactFormMobile({super.key});

  @override
  State<ContactFormMobile> createState() => _ContactFormMobileState();
}

class _ContactFormMobileState extends State<ContactFormMobile> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Form(
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
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

class ContactFromWeb extends StatefulWidget {
  const ContactFromWeb({super.key});

  @override
  State<ContactFromWeb> createState() => _ContactFromWebState();
}

class _ContactFromWebState extends State<ContactFromWeb> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Form(
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
    );
  }
}
