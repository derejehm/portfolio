import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;
  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -8))],
                  fontSize: 25.0,
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.greenAccent,
                )
                : GoogleFonts.oswald(color: Colors.black, fontSize: 23.0),
        child: Text(widget.title),
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
  const TextForm({
    super.key,
    @required this.heading,
    @required this.width,
    @required this.hintText,
    this.maxLine,
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
            maxLines: maxLine == null ? null : maxLine,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
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

class AnimatedCardWeb extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;

  const AnimatedCardWeb({
    super.key,
    @required this.imagePath,
    @required this.text,
    this.fit,
    this.reverse,
  });

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
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
                height: 200.0,
                width: 200.0,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(height: 10.0),
              SanBold(widget.text, 15.0),
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
