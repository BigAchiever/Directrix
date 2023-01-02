import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parth2/Drawer.dart';
import 'package:parth2/Eliminate.dart';
import 'package:parth2/splesh.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Stack(
          children:   [
            Drawer(),
            Home1(),
          ],
        )


    );
  }
}
