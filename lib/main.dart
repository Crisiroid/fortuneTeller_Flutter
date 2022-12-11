// ignore_for_file: prefer_const_constructors

import 'package:faller/screens/sources.dart';
import 'package:flutter/material.dart';
import 'package:faller/routes.dart';
import 'package:faller/screens/hafez_fall.dart';
import 'package:faller/screens/quran_fall.dart';
import 'package:faller/widgets/custom_button.dart';
import 'package:persian_fonts/persian_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'فال گیر حرفه ای',
      theme: ThemeData(
        textTheme: PersianFonts.vazirTextTheme,
        scaffoldBackgroundColor: const Color.fromARGB(235, 248, 163, 4),
      ),
      onGenerateRoute: ((settings) => generateRoute(settings)),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("Images/hafez.gif"),
              Builder(
                builder: (context) {
                  return esBtn(
                    inputText: "فال حافظ",
                    onTap: () {
                      Navigator.pushNamed(
                          context, hafezFalls.thisPageRouteName);
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
              Builder(builder: (context) {
                return esBtn(
                  inputText: "استخاره قرآن",
                  onTap: () {
                    Navigator.pushNamed(context, quranFalls.thisPageRouteName);
                  },
                );
              }),
              SizedBox(height: 30),
              Builder(builder: (context) {
                return CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: 30,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sourcesPage()));
                    },
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
