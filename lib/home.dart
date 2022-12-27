import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parth2/Eliminate.dart';
import 'package:parth2/speech.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String textSample = "";
  bool isListening = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff21212d),
        floatingActionButton: AvatarGlow(
          endRadius: 150,
          animate: isListening,
          glowColor: const Color(0xff15d2e0),
          child: FloatingActionButton(
            backgroundColor: const Color(0xff15d2e0),
            onPressed: toggleRecording,
            child: Icon(
              isListening ? Icons.circle : Icons.mic,
              size: 35,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width / 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff15d2e0)),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width / 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff15d2e0)),
                  child: IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              // <-- SEE HERE
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0),
                              ),
                            ),
                            builder: (context) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.height / 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                ),
                              );
                            });
                      },
                      icon: const Icon(Icons.done)),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
              reverse: true,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 100),
                child: Text(
                  textSample,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              )),
        ]));
  }

  Future toggleRecording() => Speech.toggleRecording(
      onResult: (String text) => setState(() {
            textSample = text;
          }),
      onListening: (bool isListening) {
        setState(() {
          this.isListening = isListening;
        });
        if (!isListening) {
          Future.delayed(const Duration(milliseconds: 1000), () {});
        }
      });
}
