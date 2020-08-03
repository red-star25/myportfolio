import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      primary: true,
      body: SingleChildScrollView(
        primary: true,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: MediaQuery.of(context).size.width >= 800
                    ? MediaQuery.of(context).size.height * 1.26
                    : (MediaQuery.of(context).size.width > 520 &&
                            MediaQuery.of(context).size.width < 800)
                        ? MediaQuery.of(context).size.height * 1
                        : MediaQuery.of(context).size.height * 0.78,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background.jpg"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Header(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    InfoPart(),
                  ],
                ),
              ),
            ]),
            Container(
              height: MediaQuery.of(context).size.width >= 800
                  ? MediaQuery.of(context).size.height * 4.1
                  : (MediaQuery.of(context).size.width > 520 &&
                          MediaQuery.of(context).size.width < 800)
                      ? MediaQuery.of(context).size.height * 3.1
                      : MediaQuery.of(context).size.height * 3.1,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width > 800
                        ? MediaQuery.of(context).size.height * 0.2
                        : MediaQuery.of(context).size.height * 0.1,
                  ),
                  AboutMe(),
                  SizedBox(
                    height: MediaQuery.of(context).size.width > 800
                        ? MediaQuery.of(context).size.height * 0.2
                        : MediaQuery.of(context).size.height * 0.1,
                  ),
                  Skill(),
                  SizedBox(
                    height: MediaQuery.of(context).size.width > 800
                        ? MediaQuery.of(context).size.height * 0.2
                        : MediaQuery.of(context).size.height * 0.1,
                  ),
                  WebProject(),
                  SizedBox(
                    height: MediaQuery.of(context).size.width > 800
                        ? MediaQuery.of(context).size.height * 0.2
                        : MediaQuery.of(context).size.height * 0.1,
                  ),
                  AppProject(),
                  SizedBox(
                    height: MediaQuery.of(context).size.width > 800
                        ? MediaQuery.of(context).size.height * 0.2
                        : MediaQuery.of(context).size.height * 0.1,
                  ),
                  Contact(),
                  SizedBox(
                    height: MediaQuery.of(context).size.width > 800
                        ? MediaQuery.of(context).size.height * 0.2
                        : MediaQuery.of(context).size.height * 0.1,
                  ),
                  Center(
                    child: Text(
                      "© All right reserved 2020",
                      style: GoogleFonts.righteous(
                          color: Colors.white38, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Built by Dhruv Nakum",
                      style: GoogleFonts.audiowide(
                          color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            "Dhruv Nakum",
            style: GoogleFonts.righteous(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width < 800
                    ? MediaQuery.of(context).size.width * 0.05
                    : 30),
          ),
        ),
      ],
    );
  }
}

class InfoPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "MY LIFE BEGINS BEING A",
            style: GoogleFonts.quantico(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width > 800
                    ? 28
                    : MediaQuery.of(context).size.width * 0.04),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "DEVELOPER",
            style: GoogleFonts.audiowide(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width > 800
                    ? 88
                    : MediaQuery.of(context).size.width * 0.11),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 200,
            height: 50,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              color: Color(0xFF3C9DF0),
              child: Text(
                "Let's Go 🚀",
                style: GoogleFonts.righteous(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "LATEST WORK",
            style: GoogleFonts.righteous(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/mix.png",
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.width >= 800
                ? MediaQuery.of(context).size.height * 0.63
                : (MediaQuery.of(context).size.width > 520 &&
                        MediaQuery.of(context).size.width < 800)
                    ? MediaQuery.of(context).size.height * 0.35
                    : MediaQuery.of(context).size.height * 0.22,
          )
        ],
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "About Me",
          style: GoogleFonts.audiowide(color: Colors.white, fontSize: 48),
        ),
        SizedBox(
          height: 40,
        ),
        MediaQuery.of(context).size.width > 800
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 450,
                    child: Text(
                      "Hello 👋, I'm Dhruv Nakum,\nMobile and Web Developer from India.\nI build mobile and web applications using Flutter, React.js.\nI have an experience in launching and managing Production mobile apps.\nI am also proficient in programming skills including Object-Oriented Programming, Data Structures etc.,",
                      style: GoogleFonts.righteous(
                          color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Image.asset(
                    "assets/me.png",
                    height: 300,
                    fit: BoxFit.cover,
                  )
                ],
              )
            : Column(
                children: [
                  Image.asset(
                    "assets/me.png",
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 450,
                    child: Text(
                      "Hello 👋, I'm Dhruv Nakum,\nMobile and Web Developer from India.\nI build mobile and web applications using Flutter, React.js.\nI have experience in launching and managing Production mobile apps.\nI am also proficient in programming skills including Object-Oriented Programming, Data Structures etc.,",
                      style: GoogleFonts.righteous(
                          color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )
      ],
    );
  }
}

class Skill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Skills",
            style: GoogleFonts.audiowide(color: Colors.white, fontSize: 48),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(right: 50),
            child: Image.asset(
              "assets/skills.png",
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

class WebProject extends StatelessWidget {
  final List<Widget> url = [
    Image(image: AssetImage("assets/netflix.jpg")),
    Image(image: AssetImage("assets/todo.jpg")),
    Image(image: AssetImage("assets/forkify.png")),
    Image(image: AssetImage("assets/tindog.png")),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Web Project",
          style: GoogleFonts.audiowide(color: Colors.white, fontSize: 48),
        ),
        SizedBox(
          height: 50,
        ),
        CarouselSlider(
          items: url,
          options: CarouselOptions(
              enlargeCenterPage: true,
              height: MediaQuery.of(context).size.width > 800
                  ? MediaQuery.of(context).size.height * 0.7
                  : MediaQuery.of(context).size.height * 0.3,
              autoPlay: true),
        )
      ],
    );
  }
}

class AppProject extends StatelessWidget {
  final List url = [
    "assets/workout.png",
    "assets/news.png",
    "assets/weather.png",
    "assets/wallpaper.jpg",
    "assets/game.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "App Project",
          style: GoogleFonts.audiowide(color: Colors.white, fontSize: 48),
        ),
        SizedBox(
          height: 50,
        ),
        CarouselSlider(
          items: url.map((i) {
            return Image.asset("$i");
          }).toList(),
          options: CarouselOptions(
              height: MediaQuery.of(context).size.width > 800 ? 500 : 300,
              autoPlay: true,
              enlargeCenterPage: true),
        )
      ],
    );
  }
}

class Contact extends StatelessWidget {
  final List url = [
    "assets/image1.png",
    "assets/image2.png",
    "assets/image3.png",
    "assets/image4.png",
    "assets/image5.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Contact",
          style: GoogleFonts.audiowide(color: Colors.white, fontSize: 35),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: MediaQuery.of(context).size.width < 800 ? 50 : 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  html.window.open("https://twitter.com/dhruv_nakum", '_blank');
                },
                child: Image.asset(url[1]),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  final snackBar =
                      SnackBar(content: Text('nakumdhruv123@gmail.com'));

                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Image.asset(url[2]),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  html.window.open(
                      "https://www.linkedin.com/in/dhruv-nakum-4b1054176/",
                      '_blank');
                },
                child: Image.asset(url[0]),
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  final snackBar =
                      SnackBar(content: Text('nakumdhruv@yahoo.com'));

                  Scaffold.of(context).showSnackBar(snackBar);
                },
                child: Image.asset(url[3]),
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  html.window.open("https://github.com/red-star25/", '_blank');
                },
                child: Image.asset(url[4]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
