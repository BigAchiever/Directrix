import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parth2/home.dart';
import 'package:parth2/profile_page.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Home1();
  }
}

class _Home1 extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff051b2f),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      // color: Colors.white
                      ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Thu , Feb 5 , 2020',
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                      color: Colors.white60, letterSpacing: .5),
                                ),
                              ),
                              Text(
                                'Daily Activity',
                                style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      letterSpacing: .5,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 30,
                        ),
                        SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(14),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 16,
                                  width: MediaQuery.of(context).size.width / 8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xff2c3432),
                                  ),
                                  child: IconButton(
                                    splashRadius: 30,
                                    icon: Ink.image(
                                      image: const NetworkImage(
                                          'https://www.kindacode.com/wp-content/uploads/2022/07/lemon.png'),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType
                                                  .topToBottom,
                                              child: const ProfilePage()));
                                      // do something when the button is pressed
                                      debugPrint('Hi there');
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 8,
                          width: MediaQuery.of(context).size.width / 4.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff212341)),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Mon',
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Colors.white60,
                                          letterSpacing: .5,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Text(
                                    '21',
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          // letterSpacing: .5,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 8,
                          width: MediaQuery.of(context).size.width / 4.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff212341)),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tue',
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Colors.white60,
                                          letterSpacing: .5,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Text(
                                    '22',
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          // letterSpacing: .5,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 40,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 8,
                          width: MediaQuery.of(context).size.width / 4.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff212341)),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Wed',
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Colors.white60,
                                          letterSpacing: .5,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Text(
                                    '23',
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          // letterSpacing: .5,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 8,
                          width: MediaQuery.of(context).size.width / 4.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff212341)),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Thu',
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Colors.white60,
                                          letterSpacing: .5,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Text(
                                    '24',
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          // letterSpacing: .5,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 8,
                          width: MediaQuery.of(context).size.width / 4.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff212341)),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Fri',
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Colors.white60,
                                          letterSpacing: .5,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Text(
                                    '25',
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          // letterSpacing: .5,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff212341)),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff212341),
                              ),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        labelText: 'Enter a Slang Word',
                                        hintText: 'i.e. Sala, yaar, etc'),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.bottomToTop,
                                          child: const HomePage()));
                                },
                                icon: const Icon(Icons.mic)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff212341)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 8.5,
                              width: MediaQuery.of(context).size.width / 2.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xff212341)),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 8.5,
                              width: MediaQuery.of(context).size.width / 2.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xff212341)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xff26c498)),
                          child: IconButton(
                              splashRadius: 50,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.bottomToTop,
                                        child: const HomePage()));
                              },
                              icon: const Icon(Icons.start)),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
